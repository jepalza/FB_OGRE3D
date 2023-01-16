#Include "include\flow.bi"

#Include "fbgfx.bi"
Using FB


#Include "include\tools.bi"

	Open Cons For outPut As 1

	' --------------------------------------------------------------
	' loading elements into scene		

	' demo entity
   Dim As Zstring Ptr head
   Dim As Zstring ptr headnode
	head = SM_createEntity("Head", "ogrehead.mesh",_scene )
	headnode = SNODE_createChildSceneNode("Headnode", 0, 0, 0, _rootnode) 
	SNODE_attachObject(head,headnode)
	NODE_setScale(.2, .2, .2, headnode)
	
	' camera
	CAM_setPosition(0, 0, 20,_camera) 'z es la profundidad

	' light to scene
	_light = SM_CreateLight("MyLight",_scene)	
	LIGHT_setPosition(20, 80, 50,_light)
	
   SM_setAmbientLight(COLOURVALUE_create(0.2, 0.2, 0.2, 1.0),_scene)

	Print #1,"--------------- STARTING ENGINE -----------------"
	Print #1,"WINDOW RESOLUTION: ";OGRE_getWidth(_ogreroot);" x";OGRE_getHeight(_ogreroot)

While InKey=""
	' rotate it
	NODE_pitch(.2,0,headnode) ' 2 param=TS_LOCAL=0
	NODE_yaw  (.2,2,headnode)
	NODE_roll (.2,0,headnode)
		
	' update engine
	ROOT_renderOneFrame(_ogreroot)
Wend

OGRE_delete(_ogreroot)







