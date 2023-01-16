
 	
	
	' shared variables for OGRE
	Dim Shared _ogreroot As Zstring ptr ' main OGRE root
	Dim Shared _renderwindow As Zstring Ptr ' rendering window (windows handle)
	Dim Shared _scene as Zstring Ptr ' for scene creation
	Dim Shared _camera as Zstring Ptr ' generic camera
	Dim Shared _viewport as Zstring Ptr ' view port
	Dim Shared _rootnode as Zstring Ptr ' scene root
	Dim Shared _light as Zstring Ptr ' generic light
	Dim Shared _newton as Zstring Ptr ' newton physics


	' ---------------------------------------
	' OGRE environment
	Dim As String conf,plug,ogre,logt,resc
	conf="config\"
	plug=conf+"plugins.cfg"
	ogre=conf+"ogre.cfg"
	logt=conf+"log.txt"
	resc=conf+"Resources.cfg"
	'RESOURCE_load(0,"Quake3settings.cfg")
	'LM_createLog("",1,0,0)
   ' create new OGRE with pluginFileName , configFileName, logFileName
	_ogreroot= OGRE_create ( plug, ogre, logt )
	' load resources
	FLOW_loadResourceFile(resc)	
	' ----------------------------------------
	
	

	
	' ----------------------------------------
	' select graphics between GUI selection ....
	'OGRE_showConfigDialog(_ogreroot)
	' .... or automatic (reading "ogre.cfg")
	' opcional para forzar la carga --> ROOT_LoadPlugin(("RenderSystem_GL"),_ogre)
	Dim _getrendername As Zstring Ptr 'get render name window for manual render select
	_getrendername = OGRE_getRenderSystemByName("OpenGL Rendering Subsystem",_ogreroot)
	RS_SetConfigOption( "Video Mode", "800 x 600 @ 32-bit", _getrendername)
	OGRE_setRenderSystem(_getrendername,_ogreroot) ' _getrendername to _ogreroot
	' ----------------------------------------
	
	

	
	' =============================================================
	ScreenRes 800,600,32
	Dim As Integer _hWnd
	ScreenControl GET_WINDOW_HANDLE,_hWnd
	OGRE_initialise(FALSE, "Ogre Render Window", _ogreroot) ' 1er PARAMETRO: full screen TRUE
	Dim win_handle As String = Str(_hWnd) ' FLOW3D expect String for integers
	
	Dim _options As Zstring Ptr ' OGRE options
	_options=NVPL_create()
	NVPL_insert("vsync", "0",_options) ' try it with "1". It's how using "SLEEP 1"
	NVPL_insert("externalWindowHandle",win_handle,_options)
	NVPL_insert("depth", "32",_options)
	
	_renderwindow=ROOT_createRenderWindow("renderwindow", 800, 600, 0, _options , _ogreroot)
	
	' inicializa el grupo "resources" con todos los materiales y texturas
	RGM_initialiseAllResourceGroups()
	' =============================================================
	
	


	' --------------------------------------------------------------	
	' creacion de la escena (camaras y escenario)
	_scene = OGRE_createSceneManager(1,"The SceneManager", _ogreroot) 
	_camera = SM_createCamera("cameranode",_scene)

	' Init camera, generic, only for init purpouses
   CAM_SetPosition(0, 10, -10, _camera)
	'CAM_lookAt(0,0,0,_camera)
	'NODE_yaw(180,TS_WORLD,_camera)
	CAM_setNearClipDistance(.1,_camera)
	CAM_setFarClipDistance(5000,_camera)
	CAM_SetAspectRatio(800/600,_camera)
	
	' luz demostracion
	Dim As Integer light0
	light0 = SM_createLight("Light0", _scene)
	LIGHT_setType(LT_POINT,light0)
	LIGHT_setPosition(0.0, 10.0, 10.0,light0)
	'LIGHT_setDiffuseColour(1.0, 1.0, 0.0,light1)
	'LIGHT_setSpecularColour(1.0, 1.0, 0.0,light1)
	
	_viewport = RT_addViewport(_camera,0,0,0,1,1,_renderwindow)
	
	VP_setBackgroundColour(COLOURVALUE_create(0.266, 0.549, 0.79, 1.0),_viewport) ' cian
	'SM_setAmbientLight(COLOURVALUE_create(1.0, 1.0, 1.0, 1.0),_scene)
	' read global root node from scene, for add nodes
	_rootnode= SM_getRootSceneNode(_scene)
	' --------------------------------------------------------------	
