#Include "include\flow.bi"

#Include "fbgfx.bi"
Using FB


#Include "include\tools.bi"

Open Cons For outPut As 1

	SM_setAmbientLight( COLOURVALUE_create(0, 0, 0, 1), _scene)
	SM_setShadowTechnique( SHADOWTYPE_STENCIL_ADDITIVE, _scene )


	' demo entity
   Dim As Integer RobotWalker
   Dim As Integer RobotWalkernode
	RobotWalker = SM_createEntity("RobotWalker", "walkie.mesh",_scene )
	ENT_setMaterialName("ShadowRustedMetal",RobotWalker)
	RobotWalkernode = SNODE_createChildSceneNode("RobotNode", 0, 0, 0, _rootnode) 
	SNODE_attachObject(RobotWalker,RobotWalkernode)
	NODE_setScale(2, 2, 2, RobotWalkernode)
	
	MO_setCastShadows(TRUE, RobotWalker)

	' camera setting
	CAM_setPosition(0, 30, 30,_camera)
	CAM_lookAt(0,10,0,_camera)


	' create floor plane
   Dim As Byte Ptr plane
   Dim As Byte Ptr planeNode
	MM_createPlane("plane_Mesh", "General", 40.0, 40.0, 10, 10) ' width, height, xSegments, ySegments
	plane = SM_createEntity("plane", "plane_Mesh", _scene)		
	planeNode  = SNODE_createChildSceneNode("planenode", 0, 0, 0, _rootnode)			
	SNODE_attachObject(plane,planenode)	
	'	
	ENT_setMaterialName("ShadowTile1",plane)	
	NODE_pitch(-90,0,planeNode)
	NODE_yaw(0,0,planeNode)
	NODE_roll(0,0,planeNode)
	
	Dim As Integer light1
	light1 = SM_createLight("Light1", _scene)
	LIGHT_setType(LT_POINT,light1)
	LIGHT_setPosition(0.0, 15.0, 25.0,light1)
	LIGHT_setDiffuseColour(1.0, 1.0, 0.0,light1)
	LIGHT_setSpecularColour(1.0, 1.0, 0.0,light1)
	'
	Dim As Integer light2
	light2 = SM_createLight("Light3",_scene)
	LIGHT_setType(LT_DIRECTIONAL,light2)
	LIGHT_setDiffuseColour(0.5, 0.5, 0.0,light2)
	LIGHT_setSpecularColour(0.5, 0.5, 0.0,light2)
	LIGHT_setDirection( 0.0, -1.0, 1.0 ,light2)
	'
	Dim As Integer light3
	light3 = SM_createLight("Light2",_scene)
	LIGHT_setType(LT_SPOTLIGHT,light3)
	LIGHT_setDiffuseColour(0.0, 1.0, 1.0,light3)
	LIGHT_setSpecularColour(0.0, 1.0, 1.0,light3)
	LIGHT_setDirection(-1.0, -1.0, 0.0,light3)
	LIGHT_setPosition(30, 30, 0,light3)
	
	'LIGHT_setSpotlightRange(DEGREE_create(0), DEGREE_create(3),1, light3)


	Print #1,"--------------- STARTING ENGINE -----------------"
	Print #1,"WINDOW RESOLUTION: ";OGRE_getWidth(_ogreroot);" x";OGRE_getHeight(_ogreroot)
Dim As Byte ptr a,b,d
Dim As Integer c
a=0:b=0

a=RAD_create(.5)
b=DEGREE_create(89.5)

Print a,*a,b,*b
For c=0 To 20:Print Chr(a[c]);:next
For c=0 To 20:Print Chr(b[c]);:next
'Sleep:GoTo fin
While InKey=""
	' rotate robot
	NODE_yaw  (.2,2,RobotWalkernode)
		
		'Sleep 1
		d+=1:If d=100 Then 
			b+=1:d=0
			If b=90 Then b=0
			a-=1
			If a=-90 Then a=0
		End If
		'Print #1,a,*RAD_create(a),*DEGREE_create(a)
	'LIGHT_setSpotlightRange("5","89",1, light3)

	
	' update engine
	ROOT_renderOneFrame(_ogreroot)
Wend

fin:
OGRE_delete(_ogreroot)

