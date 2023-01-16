

'----------------------------------------------------
'DEMO_JengaTower.bmx
'Author: Lina Adkins
'
'This demo was written to test the physics system. You may find some things of interest in her
'but in general it's just test code. :-) 
'
'(c)2009 BoxSnap Studios
' 2022 FreeBasic version Joseba Epalza (jepalza)
'----------------------------------------------------



#Include "include\flow.bi"
#Include "include\flow_constants.bi"
#Include "include\OgreNewt.bi"

#Include "fbgfx.bi"
Using FB


#Include "include\tools.bi"

' for debug only
Open Cons For outPut As 1





'Summary: Create a Jenga block of average size and mass that is relative to 1 unit = 1 meter.
Dim Shared As Integer BlockCount = 0
Sub createBlock(orient As Integer, x As Single, y As Single, z As Single)
	'Add to the block count
	BlockCount = BlockCount + 1

	'Create the cube and scale it to the right size.
   Dim As Integer blockENT '= New Integer 
   Dim As integer blockNOD '= New Integer
	blockENT = SM_createEntityWithPrefab("block" + Trim(Str(BlockCount)),1,_scene ) '1=cube
	blockNOD = SNODE_createChildSceneNode("blocknode"+ Trim(Str(BlockCount)), 0, 0, 0, _rootnode) 
	ENT_setMaterialName("ground",blockENT)
	SNODE_attachObject(blockENT,blockNOD)
	NODE_setScale(.81*0.01, .182*0.01, .26*0.01, blockNOD)
	'Print #1,cvs (*NODE_getScale(blocknode)),cvs (*(NODE_getScale(blocknode)+4)),cvs (*(NODE_getScale(blocknode)+8))
	NODE_setPosition(x, y, z, blockNOD)
	If orient = 1 Then
		'fG.getNode(block).rotate(Vector3(0, 1, 0) , 90)
		NODE_Rotate( VECTOR3_create(0, 1, 0) , 90 ,TS_LOCAL, blockNOD )
		'Print #1,SNODE_getParentSceneNode(blocknode),block,blocknode
	End If
	
	'Create physics entity
	'fP.addPhysics(block, FALSE, .2).setAutoSleep(TRUE)
	
	
		Dim As integer parentNode = blockNOD'SNODE_getParentSceneNode(blocknode)':Beep
		Dim As Integer collision  = OGRENEWTCOL_createConvexHull(_newton, parentNode, 0, 0, 0)
		'Beep
		
			'Get MOI and Center of Mass -  inertia * mass
			Dim As Single mass = .1
			Dim As Integer moi = VECTOR3_createEmpty() 'Callocate(SizeOf(Single)*3)
			Dim As Integer com = VECTOR3_createEmpty()' Callocate(SizeOf(Single)*3)
			OGRENEWTCOL_calculateInertialMatrix(moi, com, collision )
			VECTOR3_mulEqWithScalar(mass,moi)
		
		'Setup and attach the body
		Dim As Integer body = BODY_create(_newton, collision, BlockCount)' bodytype=0
		BODY_setPositionOrientation( NODE_getDerivedPosition(parentNode) , NODE_getDerivedOrientation(parentNode) ,body)
		BODY_setCenterOfMass(com ,body)
		BODY_setMassMatrix(mass, moi ,body)
		BODY_setAutoSleep(FALSE ,body)
		BODY_attachNode(parentNode ,body)
	   BODY_setStandardForceCallback( body )
	
End Sub



	' Activa Fisicas NEWTON
	_newton=OGRENEWTWORLD_create()
	OGRENEWTWORLD_setWorldSize( VECTOR3_create(- 10000.0, - 10000.0, - 10000.0) , VECTOR3_create(10000.0, 10000.0, 10000.0) , _newton )
	OGRENEWTWORLD_setSolverModel( 1 , _newton )
	OGRENEWTWORLD_setFrictionModel( 1 , _newton )	
	
	
	' shadows
	SM_setAmbientLight(COLOURVALUE_create(1.0,1.0,1.0,1.0), _scene)
	SM_setShadowTechnique( SHADOWTYPE_STENCIL_MODULATIVE, _scene )
	' SHADOWTYPE_NONE
	' SHADOWTYPE_STENCIL_ADDITIVE 
	' SHADOWTYPE_STENCIL_MODULATIVE
	' SHADOWTYPE_TEXTURE_MODULATIVE
	' SHADOWTYPE_TEXTURE_ADDITIVE
	' SHADOWTYPE_TEXTURE_ADDITIVE_INTEGRATED
	' SHADOWTYPE_TEXTURE_MODULATIVE_INTEGRATED


	' camera setting
	CAM_setPosition(5, 5, 5,_camera)
	CAM_lookAt(0,0,0,_camera)


	' create floor plane
   Dim As Integer planeENT
   Dim As Integer planeNOD
	MM_createPlane("groundPlane_Mesh", "General", 10.0, 10.0, 3, 3) ' width, height, xSegments, ySegments
	planeENT = SM_createEntity("groundPlane", "groundPlane_Mesh", _scene)	
	planeNOD = SNODE_createChildSceneNode("groundPlane_planenode", 0, -.2, 0, _rootnode)	
	ENT_setMaterialName("tile1",planeENT)			
	SNODE_attachObject(planeENT,planeNOD)
	NODE_Pitch(-90,0,planeNOD)	

 
		Dim As Integer collision = OGRENEWTTC_createWithSceneNode(_newton, planeNOD, TRUE, 0) ' last param. 0=FW_DEFAULT
		Dim As Integer body = BODY_create(_newton, collision,1) ' error 'bodytype=0
		BODY_setPositionOrientation( NODE_getDerivedPosition(planeNOD) , NODE_getDerivedOrientation(planeNOD) ,body)
		BODY_attachNode(planeNOD ,body)

	
'create jenga tower
Dim As integer i = 3 
While i <> 54 + 3
	
	'Get currently level by dividing by 3 and rounding off.
	Dim As Integer currentLevel = i \ 3
	
	'Get whether this stack is oriented normally or 90 degrees to the right.
	Dim As Integer orientRight = currentLevel Mod 2
	
	'Current horiz block
	Dim As Integer currentHorizontalBlock = i Mod 3
	
	
	If orientRight = 1 Then
		createBlock(orientRight, currentHorizontalBlock *.3, (currentLevel *.25) -.24, .35)
	Else
		createBlock(orientRight, .35, (currentLevel *.25) -.24, currentHorizontalBlock *.3)
	End If
	
	i = i + 1

Wend


	Print #1,"--------------- STARTING ENGINE -----------------"
	Print #1,"WINDOW RESOLUTION: ";OGRE_getWidth(_ogreroot);" x";OGRE_getHeight(_ogreroot)
	
	Dim As Integer mx,my,mb
	Dim As Single camx=5, camy=5, camz=5
	
While Not MultiKey(SC_ESCAPE)
	
	If MultiKey(SC_A) Then camx+=.01:If camx>6 Then camx=6
	If MultiKey(SC_Q) Then camx-=.01:If camx<1 Then camx=1
	If MultiKey(SC_S) Then camy+=.01:If camy>6 Then camy=6
	If MultiKey(SC_W) Then camy-=.01:If camy<1 Then camy=1
	If MultiKey(SC_D) Then camz+=.01:If camz>6 Then camz=6
	If MultiKey(SC_E) Then camz-=.01:If camz<1 Then camz=1
	CAM_setPosition(camx, camy, camz,_camera)

	GetMouse mx,my,,mb
	If mb=1 Then
	
		'Get cam to viewport ray
		Dim As single relativeX = mx / OGRE_getWidth(_ogreroot)
		Dim As Single relativeY = my / OGRE_getHeight(_ogreroot)
		Dim As integer ray = OGRERAY_createEmpty()
		CAM_getCameraToViewportRay(relativex, relativey, ray, _camera)
		'Do a newton raycast with the ray
		Dim As Integer raycast = OGRENEWTBR_create(_newton , OGRERAY_getOrigin(ray) , OGRERAY_getPoint(500,ray) )
		Dim As Integer bodycontact=OGRENEWTBRINFO_getBody( OGRENEWTBR_getFirstHit(raycast) )
		If bodycontact <> 0 Then
			BODY_addImpulse(VECTOR3_create(0, .5, 0) , VECTOR3_create(0, 10, 0), bodycontact)
		End If
	
	End If
	
	' update Newton
	OGRENEWTWORLD_update(.005, _newton)
	
	' update engine
	ROOT_renderOneFrame(_ogreroot)
Wend

fin:
OGRE_delete(_ogreroot)

