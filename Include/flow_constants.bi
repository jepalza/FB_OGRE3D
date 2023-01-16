'Endian Settings
Const OGRE_ENDIAN_LITTLE As Integer = 1
Const OGRE_ENDIAN_BIG As Integer = 2
Const OGRE_ENDIAN As Integer = OGRE_ENDIAN_LITTLE

' Lights
Const LT_POINT As Integer = 0
Const LT_DIRECTIONAL As Integer = 1
Const LT_SPOTLIGHT As Integer = 2

'Shadow Technique constants'
Const SHADOWTYPE_NONE As Integer	 = 0
Const SHADOWTYPE_STENCIL_ADDITIVE As Integer = 17
Const SHADOWTYPE_STENCIL_MODULATIVE As Integer = 18
Const SHADOWTYPE_TEXTURE_MODULATIVE As Integer = 34
Const SHADOWTYPE_TEXTURE_ADDITIVE As Integer = 33
Const SHADOWTYPE_TEXTURE_ADDITIVE_INTEGRATED As Integer = 37
Const SHADOWTYPE_TEXTURE_MODULATIVE_INTEGRATED As Integer = 38

'Transform Space Constants'
Const TS_LOCAL As Integer = 0
Const TS_PARENT As Integer= 1
Const TS_WORLD As Integer = 2

'SceneType Constants'
Const ST_GENERIC As Integer = 1
Const ST_EXTERIOR_CLOSE As Integer = 2					 
Const ST_EXTERIOR_FAR As Integer = 4
Const ST_EXTERIOR_REAL_FAR As Integer = 8
Const ST_INTERIOR As Integer = 16

'Logging Level Constants'
Const LL_LOW As Integer = 1
Const LL_NORMAL As Integer = 2
Const LL_BOREME As Integer = 3

'Logging Message Level Constants'
Const LML_TRIVIAL As Integer = 1
Const LML_NORMAL As Integer = 2
Const LML_CRITICAL As Integer = 3

'Resource Group Manager Constants'
Const DEFAULT_RESOURCE_GROUP_NAME As String = "General"

'Camera Polygon Mode Constants'
Const PM_POINTS As Integer = 1
Const PM_WIREFRAME As Integer = 2
Const PM_SOLID As Integer = 3

'Render Queue Constants'
Const RENDER_QUEUE_BACKGROUND As Integer = 0 
Const RENDER_QUEUE_SKIES_EARLY As Integer = 5
Const RENDER_QUEUE_1 As Integer = 10
Const RENDER_QUEUE_2 As Integer = 20
Const RENDER_QUEUE_WORLD_GEOMETRY_1 As Integer = 25
Const RENDER_QUEUE_3 As Integer = 30
Const RENDER_QUEUE_4 As Integer = 40
Const RENDER_QUEUE_MAIN As Integer = 50
Const RENDER_QUEUE_6 As Integer = 60
Const RENDER_QUEUE_7 As Integer = 70
Const RENDER_QUEUE_WORLD_GEOMETRY_2 As Integer = 75
Const RENDER_QUEUE_8 As Integer = 80
Const RENDER_QUEUE_9 As Integer = 90
Const RENDER_QUEUE_SKIES_LATE As Integer = 95
Const RENDER_QUEUE_OVERLAY As Integer = 100

'Ogre As  As FrameBufferType
Const FBT_COLOUR As Integer = 1
Const FBT_DEPTH As Integer = 2 	
Const FBT_STENCIL As Integer = 4 

'Texture Type
Const TEX_TYPE_1D As Integer = 1		
Const TEX_TYPE_2D As Integer = 2			
Const TEX_TYPE_3D As Integer = 3		 
Const TEX_TYPE_CUBE_MAP As Integer = 4  	

'PixelFormat
Const PF_UNKNOWN As Integer = 0
Const PF_L8 As Integer = 1
Const PF_BYTE_L As Integer = PF_L8
Const PF_L16 As Integer = 2
Const PF_SHORT_L As Integer = PF_L16
Const PF_A8 As Integer = 3 
Const PF_BYTE_A As Integer = PF_A8 
Const PF_A4L4 As Integer = 4 
Const PF_BYTE_LA As Integer = 5 
Const PF_R5G6B5 As Integer = 6 
Const PF_B5G6R5 As Integer = 7 
Const PF_R3G3B2 As Integer = 31 
Const PF_A4R4G4B4 As Integer = 8 
Const PF_A1R5G5B5 As Integer = 9 
Const PF_R8G8B8 As Integer = 10 
Const PF_B8G8R8 As Integer = 11 
Const PF_A8R8G8B8 As Integer = 12 
Const PF_A8B8G8R8 As Integer = 13 
Const PF_B8G8R8A8 As Integer = 14 
Const PF_R8G8B8A8 As Integer = 28 
Const PF_X8R8G8B8 As Integer = 26 
Const PF_X8B8G8R8 As Integer = 27 

If OGRE_ENDIAN = OGRE_ENDIAN_BIG Then
	Const PF_BYTE_RGB As Integer = PF_R8G8B8 
	Const PF_BYTE_BGR As Integer = PF_B8G8R8 
	Const PF_BYTE_BGRA As Integer = PF_B8G8R8A8 
	Const PF_BYTE_RGBA As Integer = PF_R8G8B8A8 
Else
	Const PF_BYTE_RGB As Integer = PF_B8G8R8 
	Const PF_BYTE_BGR As Integer = PF_R8G8B8 
	Const PF_BYTE_BGRA As Integer = PF_A8R8G8B8 
	Const PF_BYTE_RGBA As Integer = PF_A8B8G8R8 
EndIf

Const PF_A2R10G10B10 As Integer = 15 
Const PF_A2B10G10R10 As Integer = 16 
Const PF_DXT1 As Integer = 17 
Const PF_DXT2 As Integer = 18 
Const PF_DXT3 As Integer = 19 
Const PF_DXT4 As Integer = 20 
Const PF_DXT5 As Integer= 21 
Const PF_FLOAT16_R As Integer = 32 
Const PF_FLOAT16_RGB As Integer = 22 
Const PF_FLOAT16_RGBA As Integer = 23 
Const PF_FLOAT32_R As Integer = 33 
Const PF_FLOAT32_RGB As Integer = 24 
Const PF_FLOAT32_RGBA As Integer = 25 
Const PF_DEPTH As Integer = 29 
Const PF_SHORT_RGBA As Integer = 30 
Const PF_COUNT As Integer = 34

'MipMap Limits
Const MIP_DEFAULT As Integer = -1
Const MIP_UNLIMITED As Integer = 2147483647

'Comparison functions for buffers and blending
Const CMPF_ALWAYS_FAIL As Integer = 0
Const CMPF_ALWAYS_PASS As Integer = 1
Const CMPF_LESS As Integer = 2
Const CMPF_LESS_EQUAL As Integer = 3
Const CMPF_EQUAL As Integer = 4
Const CMPF_NOT_EQUAL As Integer = 5
Const CMPF_GREATER_EQUAL As Integer = 6
Const CMPF_GREATER As Integer = 7

'Culling modes for triangle queries
Const CULL_NONE As Integer = 1
Const CULL_CLOCKWISE As Integer = 2
Const CULL_ANTICLOCKWISE As Integer = 3
Const CULL_BACKFACES As Integer = 4
Const CULL_FRONTFACES As Integer = 5

'Manual culling modes for culling with CPU
Const MANUAL_CULL_NONE As Integer = 1
Const MANUAL_CULL_BACK As Integer = 2
Const MANUAL_CULL_FRONT As Integer = 3

'Render Queue IDs

'FogMode
Const FOG_NONE As Integer = 0
Const FOG_EXP As Integer = 1
Const FOG_EXP2 As Integer = 2
Const FOG_LINEAR As Integer = 3

'------------------------------------------------------------'
'------------------------------------------------------------'


