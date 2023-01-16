#Include "include\flow.bi"

#Include "fbgfx.bi"
Using FB


#Include "include\tools.bi"

	Open Cons For outPut As 1

	' --------------------------------------------------------------
	' loading elements into scene		

	' demo entity
   Dim As Byte Ptr RobotWalker
   Dim As Byte Ptr RobotWalkernode
	RobotWalker = SM_createEntity("RobotWalker", "walkie.mesh",_scene )
	ENT_setMaterialName("ShadowRustedMetal",RobotWalker)
	RobotWalkernode = SNODE_createChildSceneNode("Headnode", 0, 0, 0, _rootnode) 
	SNODE_attachObject(RobotWalker,RobotWalkernode)
	NODE_setScale(2, 2, 2, RobotWalkernode)
	

	' camera setting
	CAM_setPosition(0, 30, 30,_camera)
	CAM_lookAt(0,10,0,_camera)
	
	SM_setAmbientLight(COLOURVALUE_create(0.5, 0.5, 0.5, 1.0),_scene) ' semi-dark ambient

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

'---------------------- Set Shadows ---------------------------
	'Change main fG light to a spot light.	
	Dim As Byte Ptr light = SM_CreateLight("MyLight",_scene)
	LIGHT_setType(2,light) 'LT_SPOTLIGHT=2
	LIGHT_setPosition(0, 25, -32.5, light) ' luz desde atras (y-)
	LIGHT_setDirection(0, -1, 1, light) ' hacia delante (hacia y+)

	'Set up soft size by setting shadow texture count, size, the caster material used, etc.
	SM_setShadowTextureSelfShadow(TRUE,_scene)
	SM_setShadowTextureCasterMaterial("shadow_caster",_scene) 'material=shadow_caster
	SM_setShadowTextureCount(4,_scene) '4=shadowTextureCount
	SM_setShadowTextureSize(1024,_scene) ' 1024=shadowTextureSize
	SM_setShadowTexturePixelFormat(22,_scene) 'pixelFormat=PF_FLOAT16_RGB=22
	SM_setShadowCasterRenderBackFaces(FALSE,_scene) 
	
	'Set the background colour and clear every frame attributes for the shadow textures.
	Dim As Integer numShadowRTTs = SM_getShadowTextureCount(_scene)
	For i As integer = 0 To numShadowRTTs - 1
		Dim As Byte ptr tex= SM_getShadowTexture(i,_scene) 
		'Dim As colour col1=Type(1, 1, 1, 1)
		'VP_setBackgroundColour(@col1,_viewport) 
		VP_setClearEveryFrame(TRUE, 1 or 2,_viewport) ' 1 or 2= FBT_COLOUR or FBT_DEPTH
	Next

	'Enable the shadow texture technique	
	SM_setShadowTechnique(38,_scene) 'SHADOWTYPE_TEXTURE_MODULATIVE_INTEGRATED=38
'--------------------------------------------------------------


	Print #1,"--------------- STARTING ENGINE -----------------"
	Print #1,"WINDOW RESOLUTION: ";OGRE_getWidth(_ogreroot);" x";OGRE_getHeight(_ogreroot)

While InKey=""
	' rotate it
	NODE_yaw  (.2,2,RobotWalkernode)

	' update engine
	ROOT_renderOneFrame(_ogreroot)
Wend

OGRE_delete(_ogreroot)



