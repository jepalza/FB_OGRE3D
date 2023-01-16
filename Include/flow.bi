
#Include "flow_constants.bi"



'Load the DLL-----------------------------------------------'
'-----------------------------------------------------------'
#inclib "Flow"

'
' MAIN OGRE
Declare Function OGRE_create Cdecl Alias "OGRE_create" (pluginFilename_ As Zstring Ptr, configFilename_ As Zstring Ptr, logFilename_ As Zstring Ptr) As Zstring Ptr
Declare Sub      OGRE_delete Cdecl Alias "OGRE_delete" (r As Zstring Ptr)
Declare Function OGRE_initialise Cdecl Alias "OGRE_initialise" (autoCreateWindow_ As Byte, windowTitle_ As Zstring Ptr, r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_isInitialised Cdecl Alias "OGRE_isInitialised" (r As Zstring Ptr) As Byte
Declare Sub      OGRE_saveConfig Cdecl Alias "OGRE_saveConfig" (r As Zstring Ptr)
Declare Sub      OGRE_restoreConfig Cdecl Alias "OGRE_restoreConfig" (r As Zstring Ptr)
Declare Function OGRE_showConfigDialog Cdecl Alias "OGRE_showConfigDialog" (r As Zstring Ptr) As Byte
Declare Sub      OGRE_addRenderSystem Cdecl Alias "OGRE_addRenderSystem" (newRend As Zstring Ptr, r As Zstring Ptr)
Declare Function OGRE_getAvailableRenderers Cdecl Alias "OGRE_getAvailableRenderers" (r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_getRenderSystemByName Cdecl Alias "OGRE_getRenderSystemByName" (name_ As Zstring Ptr, r As Zstring Ptr) As Zstring Ptr
Declare Sub      OGRE_setRenderSystem Cdecl Alias "OGRE_setRenderSystem" (system_ As Zstring Ptr, r As Zstring Ptr)
Declare Function OGRE_getRenderSystem Cdecl Alias "OGRE_getRenderSystem" (r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_getSceneManagerMetaData Cdecl Alias "OGRE_getSceneManagerMetaData" (typename_ As Zstring Ptr, r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_getSceneManagerMetaDataIterator Cdecl Alias "OGRE_getSceneManagerMetaDataIterator" (r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_createSceneManagerWithTypeName Cdecl Alias "OGRE_createSceneManagerWithTypeName" (typename_ As Zstring Ptr, instancename_ As Zstring Ptr, r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_createSceneManager Cdecl Alias "OGRE_createSceneManager" (typeMask As Integer, instancename_ As Zstring Ptr, r As Zstring Ptr) As Zstring Ptr
Declare Sub      OGRE_destroySceneManager Cdecl Alias "OGRE_destroySceneManager" (sm As Zstring Ptr, r As Zstring Ptr)
Declare Function OGRE_getSceneManager Cdecl Alias "OGRE_getSceneManager" ( name_ As Zstring Ptr , r As Zstring Ptr ) As Zstring Ptr
Declare Function OGRE_getFullScreen Cdecl Alias "OGRE_getFullScreen" (r As Zstring Ptr) As Byte
Declare Function OGRE_getBitDepth Cdecl Alias "OGRE_getBitDepth" (r As Zstring Ptr ) As Integer
Declare Function OGRE_getWidth Cdecl Alias "OGRE_getWidth" (r As Zstring Ptr) As Integer
Declare Function OGRE_getHeight Cdecl Alias "OGRE_getHeight" (r As Zstring Ptr) As Integer
Declare Function OGRE_getAntiAliasingSettings Cdecl Alias "OGRE_getAntiAliasingSettings" (r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_getNVPerfHudSetting Cdecl Alias "OGRE_getNVPerfHudSetting" (r As Zstring Ptr) As Zstring Ptr
Declare Function OGRE_getVsyncEnabled Cdecl Alias "OGRE_getVsyncEnabled" (r As Zstring Ptr) As Zstring Ptr

' OGRE ROOT
Declare Function ROOT_getTextureManager Cdecl Alias "ROOT_getTextureManager" (  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Function ROOT_getMeshManager Cdecl Alias "ROOT_getMeshManager" (  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Function ROOT_getErrorDescription Cdecl Alias "ROOT_getErrorDescription" ( errorNumber As Long ,  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Sub      ROOT_addFrameListener Cdecl Alias "ROOT_addFrameListener" ( ogreFrameListener As Zstring Ptr , ogreRoot As Zstring Ptr )
Declare Sub      ROOT_removeFrameListener Cdecl Alias "ROOT_removeFrameListener" ( ogreFrameListener As Zstring Ptr , ogreRoot As Zstring Ptr )
Declare Sub      ROOT_queueEndRendering Cdecl Alias "ROOT_queueEndRendering" ( ogreRoot As Zstring Ptr )
Declare Sub      ROOT_startRendering Cdecl Alias "ROOT_startRendering" ( ogreRoot As Zstring Ptr )
Declare Sub      ROOT_renderOneFrame Cdecl Alias "ROOT_renderOneFrame" ( ogreRoot As Zstring Ptr )
Declare Sub      ROOT_shutdown Cdecl Alias "ROOT_shutdown" ( ogreRoot As Zstring Ptr )
Declare Sub      ROOT_addResourceLocation Cdecl Alias "ROOT_addResourceLocation" ( name_ As Zstring Ptr , locType As Zstring Ptr , groupname_ As Zstring Ptr , recursive As Integer , ogreRoot As Zstring Ptr )
Declare Sub      ROOT_removeResourceLocation Cdecl Alias "ROOT_removeResourceLocation" ( name_ As Zstring Ptr , groupname_ As Zstring Ptr , ogreRoot As Zstring Ptr )
Declare Sub      ROOT_convertColourValue Cdecl Alias "ROOT_convertColourValue" ( colour As Zstring Ptr , pDest As Zstring Ptr , ogreRoot As Zstring Ptr )
Declare Function ROOT_getAutoCreatedWindow Cdecl Alias "ROOT_getAutoCreatedWindow" ( ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Function ROOT_createRenderWindow Cdecl Alias "ROOT_createRenderWindow" ( windowname_ As Zstring Ptr , width_ As Integer , Height As Integer , FullScreen As Integer , opts As Zstring Ptr , ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Sub      ROOT_detachRenderTarget Cdecl Alias "ROOT_detachRenderTarget" ( ogreRenderTarget As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_detachRenderTargetWithName Cdecl Alias "ROOT_detachRenderTargetWithName" ( name_ As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Function ROOT_getRenderTarget Cdecl Alias "ROOT_getRenderTarget" ( name_ As Zstring Ptr ,  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Sub      ROOT_loadPlugin Cdecl Alias "ROOT_loadPlugin" ( name_ As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_unloadPlugin Cdecl Alias "ROOT_unloadPlugin" ( name_ As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_installPlugin Cdecl Alias "ROOT_installPlugin" ( ogrePlugin As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_uninstallPlugin Cdecl Alias "ROOT_uninstallPlugin" ( ogrePlugin As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Function ROOT_getTimer Cdecl Alias "ROOT_getTimer" ( ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Function ROOT_getNextFrameNumber Cdecl Alias "ROOT_getNextFrameNumber" (ogreRoot As Zstring Ptr) As Long
Declare Function ROOT_createRenderQueueInvocationSequence Cdecl Alias "ROOT_createRenderQueueInvocationSequence" ( name_ As Zstring Ptr ,  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Function ROOT_getRenderQueueInvocationSequence Cdecl Alias "ROOT_getRenderQueueInvocationSequence" ( name_ As Zstring Ptr ,  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Sub      ROOT_destroyRenderQueueInvocationSequence Cdecl Alias "ROOT_destroyRenderQueueInvocationSequence" ( name_ As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_destroyAllRenderQueueInvocationSequences Cdecl Alias "ROOT_destroyAllRenderQueueInvocationSequences" (  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_clearEventTimes Cdecl Alias "ROOT_clearEventTimes" (  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_setFrameSmoothingPeriod Cdecl Alias "ROOT_setFrameSmoothingPeriod" ( period As Single ,  ogreRoot As Zstring Ptr )
Declare Function ROOT_getFrameSmoothingPeriod Cdecl Alias "ROOT_getFrameSmoothingPeriod" (  ogreRoot As Zstring Ptr ) As Single
Declare Sub      ROOT_addMovableObjectFactory Cdecl Alias "ROOT_addMovableObjectFactory" ( factory As Zstring Ptr , overrideExisting As Integer ,  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_removeMovableObjectFactory Cdecl Alias "ROOT_removeMovableObjectFactory" ( factory As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Function ROOT_hasMovableObjectFactory Cdecl Alias "ROOT_hasMovableObjectFactory" ( typename_ As Zstring Ptr ,  ogreRoot As Zstring Ptr ) As Integer
Declare Function ROOT_getMovableObjectFactory Cdecl Alias "ROOT_getMovableObjectFactory" ( typename_ As Zstring Ptr ,  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Function ROOT_fireFrameStartedWithEvent Cdecl Alias "ROOT_fireFrameStartedWithEvent" ( evt As Zstring Ptr , ogreRoot As Zstring Ptr ) As Integer
Declare Function ROOT_fireFrameEndedWithEvent Cdecl Alias "ROOT_fireFrameEndedWithEvent" ( evt As Zstring Ptr , ogreRoot As Zstring Ptr ) As Integer
Declare Function ROOT_fireFrameStarted Cdecl Alias "ROOT_fireFrameStarted" ( ogreRoot As Zstring Ptr ) As Integer
Declare Function ROOT_fireFrameEnded Cdecl Alias "ROOT_fireFrameEnded" ( ogreRoot As Zstring Ptr ) As Integer
Declare Function ROOT_getCurrentSceneManager Cdecl Alias "ROOT_getCurrentSceneManager" (  ogreRoot As Zstring Ptr ) As Zstring Ptr
Declare Sub      ROOT_setCurrentSceneManager Cdecl Alias "ROOT_setCurrentSceneManager" ( sm As Zstring Ptr ,  ogreRoot As Zstring Ptr )
Declare Sub      ROOT_updateAllRenderTargets Cdecl Alias "ROOT_updateAllRenderTargets" ( ogreRoot As Zstring Ptr )
Declare Function ROOT_allocateNextMovableObjectTypeFlag Cdecl Alias "ROOT_allocateNextMovableObjectTypeFlag" (  ogreRoot As Zstring Ptr ) As Integer


' Render System
Declare Function RS_getName Cdecl Alias "RS_getName" ( ogreRenderSystem_ As Zstring Ptr ) As Zstring Ptr
Declare Sub      RS_setConfigOption Cdecl Alias "RS_setConfigOption" ( name_ As Zstring Ptr , value As Zstring Ptr , ogreRenderSystem_ As Zstring Ptr )
Declare Function RS_createHardwareOcclusionQuery Cdecl Alias "RS_createHardwareOcclusionQuery" ( ogreRenderSystem_ As Zstring Ptr ) As Zstring Ptr
Declare Sub      RS_destroyHardwareOcclusionQuery Cdecl Alias "RS_destroyHardwareOcclusionQuery" ( ogreHOQ As Zstring Ptr , ogreRenderSystem_ As Zstring Ptr )
Declare Function RS_validateConfigOptions Cdecl Alias "RS_validateConfigOptions" ( ogreRenderSystem_ As Zstring Ptr ) As Zstring Ptr
Declare Function RS_initialise Cdecl Alias "RS_initialise" (autoCreateWindow_ As Integer, windowTitle_ As Zstring Ptr, ogreRenderSystem_ As Zstring Ptr) As Zstring Ptr
Declare Sub      RS_setCullingMode Cdecl Alias "RS_setCullingMode" ( mode As Integer , ogreRenderSystem_ As Zstring Ptr )
Declare Sub      RS_setViewport Cdecl Alias "RS_setViewport" (vp As Zstring Ptr, s As Zstring Ptr)
Declare Sub      RS_clearFrameBuffer Cdecl Alias "RS_clearFrameBuffer" (buffers As Integer, colour As Zstring Ptr, depth As single, stencil As Integer, s As Zstring Ptr)

' Hardware Occlusion Query
Declare Sub      HOQ_delete Cdecl Alias "HOQ_delete" ( ogreHOQ As Zstring Ptr )
Declare Sub      HOQ_beginOcclusionQuery Cdecl Alias "HOQ_beginOcclusionQuery" ( ogreHOQ As Zstring Ptr )
Declare Sub      HOQ_endOcclusionQuery Cdecl Alias "HOQ_endOcclusionQuery" ( ogreHOQ As Zstring Ptr )
Declare Function HOQ_pullOcclusionQuery Cdecl Alias "HOQ_pullOcclusionQuery" ( NumOfFragments As Zstring Ptr ,  ogreHOQ As Zstring Ptr ) As Integer
Declare Function HOQ_getLastQuerysPixelcount Cdecl Alias "HOQ_getLastQuerysPixelcount" (  ogreHOQ As Zstring Ptr ) As Integer
Declare Function HOQ_isStillOutstanding Cdecl Alias "HOQ_isStillOutstanding" ( ogreHOQ As Zstring Ptr ) As Integer

' Renderable
Declare Function RENDERABLE_getMaterial Cdecl Alias "RENDERABLE_getMaterial" ( ogreRenderable As Zstring Ptr ) As Zstring Ptr
Declare Function RENDERABLE_getTechnique Cdecl Alias "RENDERABLE_getTechnique" ( ogreRenderable As Zstring Ptr ) As Zstring Ptr
Declare Sub      RENDERABLE_getRenderOperation Cdecl Alias "RENDERABLE_getRenderOperation" ( op As Zstring Ptr , ogreRenderable As Zstring Ptr )
Declare Sub      RENDERABLE_getWorldTransforms  Cdecl Alias "RENDERABLE_getWorldTransforms" ( xform As Zstring Ptr , ogreRenderable As Zstring Ptr )
Declare Function RENDERABLE_getNumWorldTransforms Cdecl Alias "RENDERABLE_getNumWorldTransforms" (ogreRenderable As Zstring Ptr) As Integer
Declare Sub      RENDERABLE_setUseIdentityProjection Cdecl Alias "RENDERABLE_setUseIdentityProjection" ( useIdentityProjection As Integer , ogreRenderable As Zstring Ptr )
Declare Function RENDERABLE_getUseIdentityProjection Cdecl Alias "RENDERABLE_getUseIdentityProjection" ( ogreRenderable As Zstring Ptr ) As Integer
Declare Sub      RENDERABLE_setUseIdentityView Cdecl Alias "RENDERABLE_setUseIdentityView" ( useIdentityView As Integer , ogreRenderable As Zstring Ptr )
Declare Function RENDERABLE_getUseIdentityView Cdecl Alias "RENDERABLE_getUseIdentityView" ( ogreRenderable As Zstring Ptr ) As Integer
Declare Function RENDERABLE_getSquaredViewDepth Cdecl Alias "RENDERABLE_getSquaredViewDepth" ( ogreCamera As Zstring Ptr , ogreRenderable As Zstring Ptr ) As Single
Declare Function RENDERABLE_getLights Cdecl Alias "RENDERABLE_getLights" (ogreRenderable As Zstring Ptr) As Zstring Ptr
Declare Function RENDERABLE_getCastsShadows Cdecl Alias "RENDERABLE_getCastsShadows" (ogreRenderable As Zstring Ptr) As Integer 
Declare Sub      RENDERABLE_setCustomParameter Cdecl Alias "RENDERABLE_setCustomParameter" (index As Integer, value As Zstring Ptr, ogreRenderable As Zstring Ptr)
Declare Function RENDERABLE_getCustomParameter Cdecl Alias "RENDERABLE_getCustomParameter" (index As Integer, ogreRenderable As Zstring Ptr) As Integer Ptr
Declare Sub      RENDERABLE_updateCustomGpuParameter Cdecl Alias "RENDERABLE_updateCustomGpuParameter" ( constantEntry As Zstring Ptr , params As Zstring Ptr , ogreRenderable As Zstring Ptr )
Declare Sub      RENDERABLE_setPolygonModeOverrideable Cdecl Alias "RENDERABLE_setPolygonModeOverrideable" ( overrideable As Integer , ogreRenderable As Zstring Ptr )
Declare Function RENDERABLE_getPolygonModeOverrideable Cdecl Alias "RENDERABLE_getPolygonModeOverrideable" ( ogreRenderable As Zstring Ptr ) As Integer

' Scene Manager
Declare Function SM_getName Cdecl Alias "SM_getName" ( ogreSceneManager As Zstring Ptr ) As Zstring Ptr
Declare Function SM_getTypeName Cdecl Alias "SM_getTypeName" ( ogreSceneManager As Zstring Ptr ) As Zstring Ptr
Declare Function SM_createCamera Cdecl Alias "SM_createCamera" ( cameraname_ As Zstring Ptr , ogreSceneManager As Zstring Ptr ) As Zstring Ptr
Declare Function SM_getCamera Cdecl Alias "SM_getCamera" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasCamera Cdecl Alias "SM_hasCamera" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyCamera Cdecl Alias "SM_destroyCamera" (cam As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyCameraWithName Cdecl Alias "SM_destroyCameraWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllCameras Cdecl Alias "SM_destroyAllCameras" (ogreSceneManager As Zstring Ptr)
Declare Function SM_createLight Cdecl Alias "SM_createLight" (Lightname_ As Zstring Ptr, ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_getLight Cdecl Alias "SM_getLight" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasLight Cdecl Alias "SM_hasLight" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyLight Cdecl Alias "SM_destroyLight" (light As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyLightWithName Cdecl Alias "SM_destroyLightWithName" ( name_ As Zstring Ptr , sm As Zstring Ptr )
Declare Sub      SM_destroyAllLights Cdecl Alias "SM_destroyAllLights" (sm As Zstring Ptr)
Declare Sub      SM_notifyLightsDirty Cdecl Alias "SM_notifyLightsDirty" (sm As Zstring Ptr)
Declare Function SM_getLightsDirtyCounter Cdecl Alias "SM_getLightsDirtyCounter" (sm As Zstring Ptr) As Integer
Declare Function SM_getLightsAffectingFrustum Cdecl Alias "SM_getLightsAffectingFrustum" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_populateLightList Cdecl Alias "SM_populateLightList" (position As Zstring Ptr, radius As Single, destList As Zstring Ptr)
Declare Function SM_createSceneNode Cdecl Alias "SM_createSceneNode" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_createSceneNodeWithName Cdecl Alias "SM_createSceneNodeWithName" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_destroySceneNode Cdecl Alias "SM_destroySceneNode" (name_ As Zstring Ptr, ogreSceneManager As Zstring Ptr)
Declare Function SM_getRootSceneNode Cdecl Alias "SM_getRootSceneNode" (ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_getSceneNode Cdecl Alias "SM_getSceneNode" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasSceneNode Cdecl Alias "SM_hasSceneNode" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_createEntity Cdecl Alias "SM_createEntity" (entityname_ As Zstring Ptr, entityMesh As Zstring Ptr, ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_createEntityWithPrefab Cdecl Alias "SM_createEntityWithPrefab" ( entityname_ As Zstring Ptr , ptype As Integer , sm As Zstring Ptr ) As Zstring Ptr
Declare Function SM_getEntity Cdecl Alias "SM_getEntity" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasEntity Cdecl Alias "SM_hasEntity" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyEntity Cdecl Alias "SM_destroyEntity" (entity As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyEntityWithName Cdecl Alias "SM_destroyEntityWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllEntities Cdecl Alias "SM_destroyAllEntities" (sm As Zstring Ptr)
Declare Function SM_createManualObject Cdecl Alias "SM_createManualObject" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getManualObject Cdecl Alias "SM_getManualObject" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasManualObject Cdecl Alias "SM_hasManualObject" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyManualObject Cdecl Alias "SM_destroyManualObject" (obj As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyManualObjectWithName Cdecl Alias "SM_destroyManualObjectWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllManualObjects Cdecl Alias "SM_destroyAllManualObjects" (sm As Zstring Ptr)
Declare Function SM_createBillboardChain Cdecl Alias "SM_createBillboardChain" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getBillboardChain Cdecl Alias "SM_getBillboardChain" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasBillboardChain Cdecl Alias "SM_hasBillboardChain" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyBillboardChain Cdecl Alias "SM_destroyBillboardChain" (obj As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyBillboardChainWithName Cdecl Alias "SM_destroyBillboardChainWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllBillboardChains Cdecl Alias "SM_destroyAllBillboardChains" (sm As Zstring Ptr)
Declare Function SM_createRibbonTrail Cdecl Alias "SM_createRibbonTrail" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getRibbonTrail Cdecl Alias "SM_getRibbonTrail" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasRibbonTrail Cdecl Alias "SM_hasRibbonTrail" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyRibbonTrail Cdecl Alias "SM_destroyRibbonTrail" (obj As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyRibbonTrailWithName Cdecl Alias "SM_destroyRibbonTrailWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllRibbonTrails Cdecl Alias "SM_destroyAllRibbonTrails" (sm As Zstring Ptr)
Declare Function SM_createParticleSystem Cdecl Alias "SM_createParticleSystem" (name_ As Zstring Ptr, quota As Integer, resourceGroup As Zstring Ptr, ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_createParticleSystemWithTemplate Cdecl Alias "SM_createParticleSystemWithTemplate" (name_ As Zstring Ptr, templatename_ As Zstring Ptr, ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_getParticleSystem Cdecl Alias "SM_getParticleSystem" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasParticleSystem Cdecl Alias "SM_hasParticleSystem" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyParticleSystem Cdecl Alias "SM_destroyParticleSystem" (obj As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyParticleSystemWithName Cdecl Alias "SM_destroyParticleSystemWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllParticleSystems Cdecl Alias "SM_destroyAllParticleSystems" (sm As Zstring Ptr)
Declare Sub      SM_clearScene Cdecl Alias "SM_clearScene" (sm As Zstring Ptr)
Declare Sub      SM_setAmbientLight Cdecl Alias "SM_setAmbientLight" (colour As Zstring Ptr, OgreSceneManager As Zstring Ptr)
Declare Function SM_getAmbientLight Cdecl Alias "SM_getAmbientLight" (sm As Zstring Ptr) As Integer Ptr
Declare Sub      SM_setWorldGeometry Cdecl Alias "SM_setWorldGeometry" (filename_ As Zstring Ptr, ogreSceneManager As Zstring Ptr)
Declare Sub      SM_setWorldGeometryWithDataStream Cdecl Alias "SM_setWorldGeometryWithDataStream" (stream As Zstring Ptr, typename_ As Zstring Ptr, sm As Zstring Ptr)
Declare Function SM_estimateWorldGeometry Cdecl Alias "SM_estimateWorldGeometry" (filename_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_estimateWorldGeometryWithDataStream Cdecl Alias "SM_estimateWorldGeometryWithDataStream" (stream As Zstring Ptr, typename_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_getSuggestedViewpoint Cdecl Alias "SM_getSuggestedViewpoint" (random As Byte, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_setOption Cdecl Alias "SM_setOption" (strKey As Zstring Ptr, pValue As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_getOption Cdecl Alias "SM_getOption" (strKey As Zstring Ptr, pDestValue As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_hasOption Cdecl Alias "SM_hasOption" (strKey As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_getOptionValues Cdecl Alias "SM_getOptionValues" (strKey As Zstring Ptr, refValueList As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_getOptionKeys Cdecl Alias "SM_getOptionKeys" (refKeys As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_updateSceneGraph Cdecl Alias "SM_updateSceneGraph" (cam As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_findVisibleObjects Cdecl Alias "SM_findVisibleObjects" (cam As Zstring Ptr, visibleBounds As Zstring Ptr, onlyShadowCasters As Byte, sm As Zstring Ptr)
Declare Sub      SM_applySceneAnimations Cdecl Alias "SM_applySceneAnimations" (sm As Zstring Ptr)
Declare Sub      SM_renderVisibleObjects Cdecl Alias "SM_renderVisibleObjects" (sm As Zstring Ptr)
Declare Sub      SM_renderScene Cdecl Alias "SM_renderScene" (camera As Zstring Ptr, vp As Zstring Ptr, includeOverlays As Byte, sm As Zstring Ptr)
Declare Sub      SM_queueSkiesForRendering Cdecl Alias "SM_queueSkiesForRendering" (cam As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_setDestinationRenderSystem Cdecl Alias "SM_setDestinationRenderSystem" (sys As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_setSkyPlane Cdecl Alias "SM_setSkyPlane" (enable As Integer, plane As Zstring Ptr, materialname_ As Zstring Ptr, ogreSceneManager As Zstring Ptr, scale As Single, tiling As Single, drawFirst As Integer, bow As Single, xsegments As Integer, ysegments As Integer, groupname_ As Zstring Ptr)
Declare Function SM_isSkyPlaneEnabled Cdecl Alias "SM_isSkyPlaneEnabled" (sm As Zstring Ptr) As Integer
Declare Function SM_getSkyPlaneNode Cdecl Alias "SM_getSkyPlaneNode" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getSkyPlaneGenParameters Cdecl Alias "SM_getSkyPlaneGenParameters" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_setSkyBox Cdecl Alias "SM_setSkyBox" (enable As Integer, materialname_ As Zstring Ptr, ogreSceneManager As Zstring Ptr, distance As Single, drawFirst As Integer, orientation As Zstring Ptr, groupname_ As Zstring Ptr)
Declare Function SM_isSkyBoxEnabled Cdecl Alias "SM_isSkyBoxEnabled" (sm As Zstring Ptr) As Integer
Declare Function SM_getSkyBoxNode Cdecl Alias "SM_getSkyBoxNode" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getSkyBoxGenParameters Cdecl Alias "SM_getSkyBoxGenParameters" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_setSkyDome Cdecl Alias "SM_setSkyDome" (enable As Integer, materialname_ As Zstring Ptr, ogreSceneManager As Zstring Ptr, curvature As Single, tiling As Single, distance As Single, drawfirst As Integer, orientation As Zstring Ptr, xsegments As Integer, ysegments As Integer, ysegments_keep As Integer, groupname_ As Zstring Ptr)
Declare Function SM_isSkyDomeEnabled Cdecl Alias "SM_isSkyDomeEnabled" (sm As Zstring Ptr) As Integer
Declare Function SM_getSkyDomeNode Cdecl Alias "SM_getSkyDomeNode" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getSkyDomeGenParameters Cdecl Alias "SM_getSkyDomeGenParameters" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_setFog Cdecl Alias "SM_setFog" (mode As Integer, colour As Zstring Ptr, expDensity As Single, linearStart As Single, linearEnd As Single, sm As Zstring Ptr)
Declare Function SM_getFogMode Cdecl Alias "SM_getFogMode" (sm As Zstring Ptr) As Integer
Declare Function SM_getFogColour Cdecl Alias "SM_getFogColour" (sm As Zstring Ptr) As Integer Ptr
Declare Function SM_getFogStart Cdecl Alias "SM_getFogStart" (sm As Zstring Ptr) As Single
Declare Function SM_getFogEnd Cdecl Alias "SM_getFogEnd" (sm As Zstring Ptr) As Single
Declare Function SM_getFogDensity Cdecl Alias "SM_getFogDensity" (sm As Zstring Ptr) As Single
Declare Function SM_createBillboardSet Cdecl Alias "SM_createBillboardSet" (name_ As Zstring Ptr, poolSize As Integer, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getBillboardSet Cdecl Alias "SM_getBillboardSet" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasBillboardSet Cdecl Alias "SM_hasBillboardSet" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyBillboardSet Cdecl Alias "SM_destroyBillboardSet" (set As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyBillboardSetWithName Cdecl Alias "SM_destroyBillboardSetWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllBillboardSets Cdecl Alias "SM_destroyAllBillboardSets" (sm As Zstring Ptr)
Declare Sub      SM_setDisplaySceneNodes Cdecl Alias "SM_setDisplaySceneNodes" (display As Byte, sm As Zstring Ptr)
Declare Function SM_getDisplaySceneNodes Cdecl Alias "SM_getDisplaySceneNodes" (sm As Zstring Ptr) As Integer
Declare Function SM_createAnimation Cdecl Alias "SM_createAnimation" (name_ As Zstring Ptr, length As Single, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getAnimation Cdecl Alias "SM_getAnimation" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasAnimation Cdecl Alias "SM_hasAnimation" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyAnimation Cdecl Alias "SM_destroyAnimation" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllAnimations Cdecl Alias "SM_destroyAllAnimations" (sm As Zstring Ptr)
Declare Function SM_createAnimationState Cdecl Alias "SM_createAnimationState" (animname_ As Zstring Ptr, ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_getAnimationState Cdecl Alias "SM_getAnimationState" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasAnimationState Cdecl Alias "SM_hasAnimationState" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyAnimationState Cdecl Alias "SM_destroyAnimationState" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllAnimationStates Cdecl Alias "SM_destroyAllAnimationStates" (sm As Zstring Ptr)
Declare Sub      SM_manualRender Cdecl Alias "SM_manualRender" (rend As Zstring Ptr, pass As Zstring Ptr, vp As Zstring Ptr, worldMatrix As Zstring Ptr, viewMatrix As Zstring Ptr, projMatrix As Zstring Ptr, doBeginEndFrame As Byte, sm As Zstring Ptr)
Declare Function SM_getRenderQueue Cdecl Alias "SM_getRenderQueue" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_addRenderQueueListener Cdecl Alias "SM_addRenderQueueListener" (newListener As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_removeRenderQueueListener Cdecl Alias "SM_removeRenderQueueListener" (delListener As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_addSpecialCaseRenderQueue Cdecl Alias "SM_addSpecialCaseRenderQueue" (qid As Integer, sm As Zstring Ptr)
Declare Sub      SM_removeSpecialCaseRenderQueue Cdecl Alias "SM_removeSpecialCaseRenderQueue" (qid As Integer, sm As Zstring Ptr)
Declare Sub      SM_clearSpecialCaseRenderQueues Cdecl Alias "SM_clearSpecialCaseRenderQueues" (sm As Zstring Ptr)
Declare Sub      SM_setSpecialCaseRenderQueueMode Cdecl Alias "SM_setSpecialCaseRenderQueueMode" (mode As Integer, sm As Zstring Ptr)
Declare Function SM_getSpecialCaseRenderQueueMode Cdecl Alias "SM_getSpecialCaseRenderQueueMode" (sm As Zstring Ptr) As Integer
Declare Function SM_isRenderQueueToBeProcessed Cdecl Alias "SM_isRenderQueueToBeProcessed" (qid As Integer, sm As Zstring Ptr) As Integer
Declare Sub      SM_setWorldGeometryRenderQueue Cdecl Alias "SM_setWorldGeometryRenderQueue" (qid As Integer, sm As Zstring Ptr)
Declare Function SM_getWorldGeometryRenderQueue Cdecl Alias "SM_getWorldGeometryRenderQueue" (sm As Zstring Ptr) As Integer
Declare Sub      SM_showBoundingBoxes Cdecl Alias "SM_showBoundingBoxes" (bShow As Byte, sm As Zstring Ptr)
Declare Function SM_getShowBoundingBoxes Cdecl Alias "SM_getShowBoundingBoxes" (sm As Zstring Ptr) As Integer
Declare Sub      SM_notifyAutotrackingSceneNode Cdecl Alias "SM_notifyAutotrackingSceneNode" (NODE As Zstring Ptr, autoTrack As Byte, sm As Zstring Ptr)
Declare Function SM_createAABBQuery Cdecl Alias "SM_createAABBQuery" (box As Zstring Ptr, mask As Integer, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_createSphereQuery Cdecl Alias "SM_createSphereQuery" ( sphere As Zstring Ptr , mask As Integer , sm As Zstring Ptr ) As Zstring Ptr
Declare Function SM_createPlaneBoundedVolumeQuery Cdecl Alias "SM_createPlaneBoundedVolumeQuery" (volumes As Zstring Ptr, mask As Integer, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_createRayQuery Cdecl Alias "SM_createRayQuery" (ogreRay As Zstring Ptr, mask As Integer, ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_createIntersectionQuery Cdecl Alias "SM_createIntersectionQuery" (mask As Integer, sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_destroyQuery Cdecl Alias "SM_destroyQuery" (query As Zstring Ptr, sm As Zstring Ptr)
Declare Function SM_getCameraIterator Cdecl Alias "SM_getCameraIterator" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getAnimationIterator Cdecl Alias "SM_getAnimationIterator" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getAnimationStateIterator Cdecl Alias "SM_getAnimationStateIterator" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_setShadowTechnique Cdecl Alias "SM_setShadowTechnique" (ShadowTechnique As Integer, ogreSceneManager As Zstring Ptr)
Declare Function SM_getShadowTechnique Cdecl Alias "SM_getShadowTechnique" (sm As Zstring Ptr) As Integer
Declare Sub      SM_setShowDebugShadows Cdecl Alias "SM_setShowDebugShadows" (debug As Integer, sm As Zstring Ptr)
Declare Function SM_getShowDebugShadows Cdecl Alias "SM_getShowDebugShadows" (sm As Zstring Ptr) As Integer
Declare Sub      SM_setShadowColour Cdecl Alias "SM_setShadowColour" (colour As Zstring Ptr, sm As Zstring Ptr)
Declare Function SM_getShadowColour Cdecl Alias "SM_getShadowColour" (sm As Zstring Ptr) As Integer Ptr
Declare Sub      SM_setShadowDirectionalLightExtrusionDistance Cdecl Alias "SM_setShadowDirectionalLightExtrusionDistance" (dist As Single, sm As Zstring Ptr)
Declare Function SM_getShadowDirectionalLightExtrusionDistance Cdecl Alias "SM_getShadowDirectionalLightExtrusionDistance" (sm As Zstring Ptr) As Single
Declare Sub      SM_setShadowFarDistance Cdecl Alias "SM_setShadowFarDistance" (distance As Single, sm As Zstring Ptr)
Declare Function SM_getShadowFarDistance Cdecl Alias "SM_getShadowFarDistance" (sm As Zstring Ptr) As Single
Declare Sub      SM_setShadowIndexBufferSize Cdecl Alias "SM_setShadowIndexBufferSize" (size As Integer, sm As Zstring Ptr)
Declare Function SM_getShadowIndexBufferSize Cdecl Alias "SM_getShadowIndexBufferSize" (sm As Zstring Ptr) As Integer
Declare Sub      SM_setShadowTextureSize Cdecl Alias "SM_setShadowTextureSize" (size As Integer, sm As Zstring Ptr)
Declare Sub      SM_setShadowTextureConfig Cdecl Alias "SM_setShadowTextureConfig" (shadowIndex As Integer, width_ As Integer, height As Integer, format As Integer, sm As Zstring Ptr)
Declare Sub      SM_setShadowTextureConfigWithConfig Cdecl Alias "SM_setShadowTextureConfig" (shadowIndex As Integer, config As Zstring Ptr, sm As Zstring Ptr)
Declare Function SM_getShadowTextureConfigIterator Cdecl Alias "SM_getShadowTextureConfigIterator" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_setShadowTexturePixelFormat Cdecl Alias "SM_setShadowTexturePixelFormat" (fmt As Integer, sm As Zstring Ptr)
Declare Sub      SM_setShadowTextureCount Cdecl Alias "SM_setShadowTextureCount" (count As Integer, sm As Zstring Ptr)
Declare Function SM_getShadowTextureCount Cdecl Alias "SM_getShadowTextureCount" (sm As Zstring Ptr) As Integer
Declare Sub      SM_setShadowTextureSettings Cdecl Alias "SM_setShadowTextureSettings" (size As Integer, count As Integer, fmt As Integer, sm As Zstring Ptr)
Declare Function SM_getShadowTexture Cdecl Alias "SM_getShadowTexture" (shadowIndex As Integer, sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_setShadowDirLightTextureOffset Cdecl Alias "SM_setShadowDirLightTextureOffset" (offset As Single, sm As Zstring Ptr)
Declare Function SM_getShadowDirLightTextureOffset Cdecl Alias "SM_getShadowDirLightTextureOffset" (sm As Zstring Ptr) As Single
Declare Sub      SM_setShadowTextureFadeStart Cdecl Alias "SM_setShadowTextureFadeStart" (fadeStart As Single, sm As Zstring Ptr)
Declare Sub      SM_setShadowTextureFadeEnd Cdecl Alias "SM_setShadowTextureFadeEnd" (fadeEnt As Single, sm As Zstring Ptr)
Declare Sub      SM_setShadowTextureSelfShadow Cdecl Alias "SM_setShadowTextureSelfShadow" (selfShadow As Byte, sm As Zstring Ptr)
Declare Function SM_getShadowTextureSelfShadow Cdecl Alias "SM_getShadowTextureSelfShadow" (sm As Zstring Ptr) As Integer
Declare Sub      SM_setShadowTextureCasterMaterial Cdecl Alias "SM_setShadowTextureCasterMaterial" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_setShadowTextureReceiverMaterial Cdecl Alias "SM_setShadowTextureReceiverMaterial" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_setShadowCasterRenderBackFaces Cdecl Alias "SM_setShadowCasterRenderBackFaces" (bf As Byte, sm As Zstring Ptr)
Declare Function SM_getShadowCasterRenderBackFaces Cdecl Alias "SM_getShadowCasterRenderBackFaces" (sm As Zstring Ptr) As Integer
Declare Sub      SM_setShadowCameraSetup Cdecl Alias "SM_setShadowCameraSetup" (shadowSetup As Zstring Ptr, sm As Zstring Ptr)
Declare Function SM_getShadowCameraSetup Cdecl Alias "SM_getShadowCameraSetup" (sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_setShadowUseInfiniteFarPlane Cdecl Alias "SM_setShadowUseInfiniteFarPlane" (enable As Byte, sm As Zstring Ptr)
Declare Function SM_isShadowTechniqueStencilBased Cdecl Alias "SM_isShadowTechniqueStencilBased" (sm As Zstring Ptr) As Integer
Declare Function SM_isShadowTechniqueTextureBased Cdecl Alias "SM_isShadowTechniqueTextureBased" (sm As Zstring Ptr) As Integer
Declare Function SM_isShadowTechniqueModulative Cdecl Alias "SM_isShadowTechniqueModulative" (sm As Zstring Ptr) As Integer
Declare Function SM_isShadowTechniqueAdditive Cdecl Alias "SM_isShadowTechniqueAdditive" (sm As Zstring Ptr) As Integer
Declare Function SM_isShadowTechniqueIntegrated Cdecl Alias "SM_isShadowTechniqueIntegrated" (sm As Zstring Ptr) As Integer
Declare Function SM_isShadowTechniqueInUse Cdecl Alias "SM_isShadowTechniqueInUse" (sm As Zstring Ptr) As Integer
Declare Sub      SM_addListener Cdecl Alias "SM_addListener" (s As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_removeListener Cdecl Alias "SM_removeListener" (s As Zstring Ptr, sm As Zstring Ptr)
Declare Function SM_createStaticGeometry Cdecl Alias "SM_createStaticGeometry" (name_ As Zstring Ptr, ogreSceneManager As Zstring Ptr) As Zstring Ptr
Declare Function SM_getStaticGeometry Cdecl Alias "SM_getStaticGeometry" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasStaticGeometry Cdecl Alias "SM_hasStaticGeometry" (name_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Sub      SM_destroyStaticGeometry Cdecl Alias "SM_destroyStaticGeometry" (geom As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyStaticGeometryWithName Cdecl Alias "SM_destroyStaticGeometryWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllStaticGeometry Cdecl Alias "SM_destroyAllStaticGeometry" (sm As Zstring Ptr)
Declare Function SM_createInstancedGeometry Cdecl Alias "SM_createInstancedGeometry" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getInstancedGeometry Cdecl Alias "SM_getInstancedGeometry" (name_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_destroyInstancedGeometry Cdecl Alias "SM_destroyInstancedGeometry" (geom As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyInstancedGeometryWithName Cdecl Alias "SM_destroyInstancedGeometryWithName" (name_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllInstancedGeometry Cdecl Alias "SM_destroyAllInstancedGeometry" (sm As Zstring Ptr)
Declare Function SM_createMovableObject Cdecl Alias "SM_createMovableObject" (name_ As Zstring Ptr, typename_ As Zstring Ptr, params As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_destroyMovableObject Cdecl Alias "SM_destroyMovableObject" (m As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyMovableObjectWithName Cdecl Alias "SM_destroyMovableObjectWithName" (name_ As Zstring Ptr, typename_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllMovableObjectsByType Cdecl Alias "SM_destroyAllMovableObjectsByType" (typename_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_destroyAllMovableObjects Cdecl Alias "SM_destroyAllMovableObjects" (sm As Zstring Ptr)
Declare Function SM_getMovableObject Cdecl Alias "SM_getMovableObject" (name_ As Zstring Ptr, typename_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_hasMovableObject Cdecl Alias "SM_hasMovableObject" (name_ As Zstring Ptr, typename_ As Zstring Ptr, sm As Zstring Ptr) As Integer
Declare Function SM_getMovableObjectIterator Cdecl Alias "SM_getMovableObjectIterator" (typename_ As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_injectMovableObject Cdecl Alias "SM_injectMovableObject" (m As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_extractMovableObjectWithName Cdecl Alias "SM_extractMovableObjectWithName" (name_ As Zstring Ptr, typename_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_extractMovableObject Cdecl Alias "SM_extractMovableObject" (m As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_extractAllMovableObjectsByType Cdecl Alias "SM_extractAllMovableObjectsByTypeName" (typename_ As Zstring Ptr, sm As Zstring Ptr)
Declare Sub      SM_setVisibilityMask Cdecl Alias "SM_setVisibilityMask" (vmask As Integer, sm As Zstring Ptr)
Declare Function SM_getVisibilityMask Cdecl Alias "SM_getVisibilityMask" (sm As Zstring Ptr) As Integer
Declare Function SM_getCombinedVisibilityMask Cdecl Alias "SM_getCombinedVisibilityMask" (sm As Zstring Ptr) As Integer
Declare Sub      SM_setFindVisibleObjects Cdecl Alias "SM_setFindVisibleObjects" (find As Byte, sm As Zstring Ptr)
Declare Function SM_getFindVisibleObjects Cdecl Alias "SM_getFindVisibleObjects" (sm As Zstring Ptr) As Integer
Declare Sub      SM_injectRenderWithPass Cdecl Alias "SM_injectRenderWithPass" (pass As Zstring Ptr, rend As Zstring Ptr, shadowDerivation As Byte, sm As Zstring Ptr)
Declare Sub      SM_suppressRenderStateChanges Cdecl Alias "SM_suppressRenderStateChanges" (suppress As Byte, sm As Zstring Ptr)
Declare Function SM_areRenderStateChangesSuppressed Cdecl Alias "SM_areRenderStateChangesSuppressed" (sm As Zstring Ptr) As Integer
Declare Function SM_setPass Cdecl Alias "SM_setPass" (pass As Zstring Ptr, evenIfSuppressed As Byte, shadowDerivation As Byte, sm As Zstring Ptr) As Zstring Ptr
Declare Sub      SM_suppressShadows Cdecl Alias "SM_suppressShadows" (suppress As Byte, sm As Zstring Ptr)
Declare Function SM_areShadowsSuppressed Cdecl Alias "SM_areShadowsSuppressed" (sm As Zstring Ptr) As Integer
Declare Sub      SM_renderQueueGroupObjects Cdecl Alias "SM_renderQueueGroupObjects" (group As Zstring Ptr, om As Integer, sm As Zstring Ptr)
Declare Function SM_getDestinationRenderSystem Cdecl Alias "SM_getDestinationRenderSystem" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getCurrentViewport Cdecl Alias "SM_getCurrentViewport" (sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getVisibleObjectsBoundsInfo Cdecl Alias "SM_getVisibleObjectsBoundsInfo" (cam As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_getShadowCasterBoundsInfo Cdecl Alias "SM_getShadowCasterBoundsInfo" (light As Zstring Ptr, sm As Zstring Ptr) As Zstring Ptr
Declare Function SM_WORLD_GEOMETRY_TYPE_MASK Cdecl Alias "SM_WORLD_GEOMETRY_TYPE_MASK" () As Integer
Declare Function SM_ENTITY_TYPE_MASK Cdecl Alias "SM_ENTITY_TYPE_MASK" () As Integer
Declare Function SM_FX_TYPE_MASK Cdecl Alias "SM_FX_TYPE_MASK" () As Integer
Declare Function SM_STATICGEOMETRY_TYPE_MASK Cdecl Alias "SM_STATICGEOMETRY_TYPE_MASK" () As Integer
Declare Function SM_LIGHT_TYPE_MASK Cdecl Alias "SM_LIGHT_TYPE_MASK" () As Integer
Declare Function SM_USER_TYPE_MASK_LIMIT Cdecl Alias "SM_USER_TYPE_MASK_LIMIT" () As Integer

' Scene Manager Meta Data
Declare Function SMMD_getTypeName Cdecl Alias "SMMD_getTypeName" (d As Zstring Ptr) As Zstring Ptr
Declare Function SMMD_getDescription Cdecl Alias "SMMD_getDescription" (d As Zstring Ptr) As Zstring Ptr
Declare Function SMMD_getSceneTypeMask Cdecl Alias "SMMD_getSceneTypeMask" (d As Zstring Ptr) As Integer
Declare Function SMMD_isWorldGeometrySupported Cdecl Alias "SMMD_isWorldGeometrySupported" (d As Zstring Ptr) As Byte

' Animable Object
Declare Function AO_create Cdecl Alias "AO_create" () As Zstring Ptr
Declare Sub      AO_delete Cdecl Alias "AO_delete" ( ao As Zstring Ptr )
Declare Function AO_getAnimableValueNames Cdecl Alias "AO_getAnimableValueNames" (ao As Zstring Ptr) As Zstring Ptr
Declare Function AO_createAnimableValue Cdecl Alias "AO_createAnimableValue" ( valuename_ As Zstring Ptr , ao As Zstring Ptr ) As Zstring Ptr

' Timer
Declare Function OGRETIMER_create Cdecl Alias "OGRETIMER_create" () As Zstring Ptr
Declare Sub      OGRETIMER_delete Cdecl Alias "OGRETIMER_delete" (t As Zstring Ptr)
Declare Sub      OGRETIMER_reset Cdecl Alias "OGRETIMER_reset" (t As Zstring Ptr)
Declare Function OGRETIMER_getTime Cdecl Alias "OGRETIMER_getTime" (t As Zstring Ptr) As Single

' Movable Object
Declare Sub      MO_notifyCreator Cdecl Alias "MO_notifyCreator" ( fact As Zstring Ptr , ogreMovableObject As Zstring Ptr )
Declare Function MO_getCreator Cdecl Alias "MO_getCreator" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Sub      MO_notifyManager Cdecl Alias "MO_notifyManager" ( man As Zstring Ptr , ogreMovableObject As Zstring Ptr )
Declare Function MO_getManager Cdecl Alias "MO_getManager" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Function MO_getName Cdecl Alias "MO_getName" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Function MO_getMovableType Cdecl Alias "MO_getMovableType" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Function MO_getParentNode Cdecl Alias "MO_getParentNode" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Function MO_getParentSceneNode Cdecl Alias "MO_getParentSceneNode" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Sub      MO_notifyAttached Cdecl Alias "MO_notifyAttached" ( parent As Zstring Ptr , isTagPoint As Integer , ogreMovableObject As Zstring Ptr )
Declare Function MO_isAttached Cdecl Alias "MO_isAttached" (ogreMovableObject As Zstring Ptr) As Byte
Declare Sub      MO_detatchFromParent Cdecl Alias "MO_detatchFromParent" (o As Zstring Ptr)
Declare Function MO_isInScene Cdecl Alias "MO_isInScene" (ogreMovableObject As Zstring Ptr) As Byte
Declare Sub      MO_notifyMoved Cdecl Alias "MO_notifyMoved" ( ogreMovableObject As Zstring Ptr )
Declare Sub      MO_notifyCurrentCamera Cdecl Alias "MO_notifyCurrentCamera" ( cam As Zstring Ptr , ogreMovableObject As Zstring Ptr )
Declare Function MO_getBoundingBox Cdecl Alias "MO_getBoundingBox" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Function MO_getBoundingRadius Cdecl Alias "MO_getBoundingRadius" ( ogreMovableObject As Zstring Ptr ) As Single
Declare Function MO_getWorldBoundingSphere Cdecl Alias "MO_getWorldBoundingSphere" ( derive As Integer , ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Sub      MO_updateRenderQueue Cdecl Alias "MO_updateRenderQueue" ( queue As Zstring Ptr , ogreMovableObject As Zstring Ptr )
Declare Sub      MO_setVisible Cdecl Alias "MO_setVisible" (visible As Byte, ogreMovableObject As Zstring Ptr)
Declare Function MO_getVisible Cdecl Alias "MO_getVisible" (ogreMovableObject As Zstring Ptr) As Byte
Declare Function MO_isVisible Cdecl Alias "MO_isVisible" (ogreMovableObject As Zstring Ptr) As Byte
Declare Sub      MO_setRenderingDistance Cdecl Alias "MO_setRenderingDistance" ( dist As Single , ogreMovableObject As Zstring Ptr )
Declare Function MO_getRenderingDistance Cdecl Alias "MO_getRenderingDistance" ( ogreMovableObject As Zstring Ptr ) As Single
Declare Sub      MO_setUserObject Cdecl Alias "MO_setUserObject" ( obj As Zstring Ptr , ogreMovableObject As Zstring Ptr )
Declare Function MO_getUserObject Cdecl Alias "MO_getUserObject" (ogreMovableObject As Zstring Ptr) As Zstring Ptr
Declare Sub      MO_setUserAny Cdecl Alias "MO_setUserAny" ( anything As Zstring Ptr , ogreMovableObject As Zstring Ptr )
Declare Function MO_getUserAny Cdecl Alias "MO_getUserAny" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Sub      MO_setRenderQueueGroup Cdecl Alias "MO_setRenderQueueGroup" ( queueID As Integer , ogreMovableObject As Zstring Ptr )
Declare Function MO_getRenderQueueGroup Cdecl Alias "MO_getRenderQueueGroup" ( ogreMovableObject As Zstring Ptr ) As Integer
Declare Function MO_getParentNodeFullTransform Cdecl Alias "MO_getParentNodeFullTransform" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Sub      MO_setQueryFlags Cdecl Alias "MO_setQueryFlags" ( flags As Integer , ogreMovableObject As Zstring Ptr )
Declare Sub      MO_addQueryFlags Cdecl Alias "MO_addQueryFlags" ( flags As Integer , ogreMovableObject As Zstring Ptr )
Declare Sub      MO_removeQueryFlags Cdecl Alias "MO_removeQueryFlags" ( flags As Integer , ogreMovableObject As Zstring Ptr )
Declare Function MO_getQueryFlags Cdecl Alias "MO_getQueryFlags" (  ogreMovableObject As Zstring Ptr ) As Integer
Declare Sub      MO_setVisibilityFlags Cdecl Alias "MO_setVisibilityFlags" ( flags As Integer , ogreMovableObject As Zstring Ptr )
Declare Sub      MO_addVisibilityFlags Cdecl Alias "MO_addVisibilityFlags" ( flags As Integer ,  ogreMovableObject As Zstring Ptr )
Declare Sub      MO_removeVisibilityFlags Cdecl Alias "MO_removeVisibilityFlags" ( flags As Integer , ogreMovableObject As Zstring Ptr )
Declare Function MO_getVisibilityFlags Cdecl Alias "MO_getVisibilityFlags" (  ogreMovableObject As Zstring Ptr ) As Integer
Declare Sub      MO_setListener Cdecl Alias "MO_setListener" ( listener As Zstring Ptr , ogreMovableObject As Zstring Ptr )
Declare Function MO_getListener Cdecl Alias "MO_getListener" ( ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Function MO_queryLights Cdecl Alias "MO_queryLights" (  ogreMovableObject As Zstring Ptr ) As Zstring Ptr
Declare Sub      MO_setCastShadows Cdecl Alias "MO_setCastShadows" ( enabled As Integer , ogreMovableObject As Zstring Ptr )
Declare Function MO_getCastShadows Cdecl Alias "MO_getCastShadows" (  ogreMovableObject As Zstring Ptr ) As Integer
Declare Function MO_getTypeFlags Cdecl Alias "MO_getTypeFlags" (ogreMovableObject As Zstring Ptr) As Integer
Declare Sub      MO_visitRenderables Cdecl Alias "MO_visitRenderables" (visitor As Zstring Ptr, debugRenderables As Byte, o As Zstring Ptr)
Declare Sub      MO_setDebugDisplayEnabled Cdecl Alias "MO_setDebugDisplayEnabled" (enabled As Byte, o As Zstring Ptr)
Declare Function MO_isDebugDisplayEnabled Cdecl Alias "MO_isDebugDisplayEnabled" (o As Zstring Ptr) As Byte
Declare Sub      MO_setDefaultQueryFlags Cdecl Alias "MO_setDefaultQueryFlags" (flags As Integer)
Declare Function MO_getDefaultQueryFlags Cdecl Alias "MO_getDefaultQueryFlags" () As Integer
Declare Sub      MO_setDefaultVisibilityFlags Cdecl Alias "MO_setDefaultVisibilityFlags" (flags As Integer)
Declare Sub      MO_getDefaultVisibilityFlags Cdecl Alias "MO_getDefaultVisibilityFlags" ()

' Light
Declare Sub      LIGHT_setType Cdecl Alias "LIGHT_setType" ( lightType As Integer , ogreLight As Zstring Ptr )
Declare Function LIGHT_getType Cdecl Alias "LIGHT_getType" ( ogreLight As Zstring Ptr ) As Integer
Declare Sub      LIGHT_setDiffuseColour Cdecl Alias "LIGHT_setDiffuseColour" ( r As Single , g As Single , b As Single , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_setDiffuseColourWithColourValue Cdecl Alias "LIGHT_setDiffuseColourWithColourValue" ( colour As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Function LIGHT_getDiffuseColour Cdecl Alias "LIGHT_getDiffuseColour" ( ogreLight As Zstring Ptr ) As Integer Ptr
Declare Sub      LIGHT_setSpecularColour Cdecl Alias "LIGHT_setSpecularColour" ( r As Single , g As Single , b As Single , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_setSpecularColourWithColourValue Cdecl Alias "LIGHT_setSpecularColourWithColourValue" ( colour As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Function LIGHT_getSpecularColour Cdecl Alias "LIGHT_getSpecularColour" ( ogreLight As Zstring Ptr ) As Integer Ptr
Declare Sub      LIGHT_setAttenuation Cdecl Alias "LIGHT_setAttenuation" ( range As Single , constant As Single , linear As Single , quadratic As Single , ogreLight As Zstring Ptr )
Declare Function LIGHT_getAttenuationRange Cdecl Alias "LIGHT_getAttenuationRange" ( ogreLight As Zstring Ptr ) As Single
Declare Function LIGHT_getAttenuationConstant Cdecl Alias "LIGHT_getAttenuationConstant" ( ogreLight As Zstring Ptr ) As Single
Declare Function LIGHT_getAttenuationLinear Cdecl Alias "LIGHT_getAttenuationLinear" ( ogreLight As Zstring Ptr ) As Single
Declare Function LIGHT_getAttenuationQuadric Cdecl Alias "LIGHT_getAttenuationQuadric" ( ogreLight As Zstring Ptr ) As Single
Declare Sub      LIGHT_setPosition Cdecl Alias "LIGHT_setPosition" ( x As Single , y As Single , z As Single , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_setPositionWithVector3 Cdecl Alias "LIGHT_setPositionWithVector3" ( vec As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Function LIGHT_getPosition Cdecl Alias "LIGHT_getPosition" (ogreLight As Zstring Ptr) As Zstring Ptr
Declare Sub      LIGHT_setDirection Cdecl Alias "LIGHT_setDirection" ( x As Single , y As Single , z As Single , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_setDirectionWithVector3 Cdecl Alias "LIGHT_setDirectionWithVector3" ( vec As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Function LIGHT_getDirection Cdecl Alias "LIGHT_getDirection" (ogreLight As Zstring Ptr) As Zstring Ptr
Declare Sub      LIGHT_setSpotlightRange Cdecl Alias "LIGHT_setSpotlightRange" ( innerAngle As Zstring Ptr , outerAngle As Zstring Ptr , falloff As Single , ogreLight As Zstring Ptr )
Declare Function LIGHT_getSpotlightInnerAngle Cdecl Alias "LIGHT_getSpotlightInnerAngle" ( ogreLight As Zstring Ptr ) As Zstring Ptr
Declare Function LIGHT_getSpotlightOuterAngle Cdecl Alias "LIGHT_getSpotlightOuterAngle" ( ogreLight As Zstring Ptr ) As Zstring Ptr
Declare Function LIGHT_getSpotlightFalloff Cdecl Alias "LIGHT_getSpotlightFalloff" ( ogreLight As Zstring Ptr ) As Single
Declare Sub      LIGHT_setSpotlightInnerAngle Cdecl Alias "LIGHT_setSpotlightInnerAngle" ( val As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_setSpotlightOuterAngle Cdecl Alias "LIGHT_setSpotlightOuterAngle" ( val As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_setSpotlightFalloff Cdecl Alias "LIGHT_setSpotlightFalloff" ( val As Single , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_setPowerScale Cdecl Alias "LIGHT_setPowerScale" ( power As Single , ogreLight As Zstring Ptr )
Declare Function LIGHT_getPowerScale Cdecl Alias "LIGHT_getPowerScale" ( ogreLight As Zstring Ptr ) As Single
Declare Sub      LIGHT_notifyAttached Cdecl Alias "LIGHT_notifyAttached" ( parent As Zstring Ptr , isTagPoint As Integer , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_notifyMoved Cdecl Alias "LIGHT_notifyMoved" ( ogreLight As Zstring Ptr )
Declare Function LIGHT_getBoundingBox Cdecl Alias "LIGHT_getBoundingBox" ( ogreLight As Zstring Ptr ) As Zstring Ptr
Declare Sub      LIGHT_updateRenderQueue Cdecl Alias "LIGHT_updateRenderQueue" ( queue As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Function LIGHT_getMovableType Cdecl Alias "LIGHT_getMovableType" ( ogreLight As Zstring Ptr ) As Zstring Ptr
Declare Function LIGHT_getDerivedPosition Cdecl Alias "LIGHT_getDerivedPosition" (ogreLight As Zstring Ptr) As Zstring Ptr
Declare Function LIGHT_getDerivedDirection Cdecl Alias "LIGHT_getDerivedDirection" (ogreLight As Zstring Ptr) As Zstring Ptr
Declare Sub      LIGHT_setVisible Cdecl Alias "LIGHT_setVisible" ( visible As Integer , ogreLight As Zstring Ptr )
Declare Function LIGHT_getBoundingRadius Cdecl Alias "LIGHT_getBoundingRadius" ( ogreLight As Zstring Ptr ) As Single
Declare Function LIGHT_getAs4DVector Cdecl Alias "LIGHT_getAs4DVector" ( ogreLight As Zstring Ptr ) As Integer Ptr
Declare Function LIGHT_getNearClipVolume Cdecl Alias "LIGHT_getNearClipVolume" ( cam As Zstring Ptr , ogreLight As Zstring Ptr ) As Zstring Ptr
Declare Function LIGHT_getFrustumClipVolumes Cdecl Alias "LIGHT_getFrustumClipVolumes" ( cam As Zstring Ptr , ogreLight As Zstring Ptr ) As Zstring Ptr
Declare Function LIGHT_getTypeFlags Cdecl Alias "LIGHT_getTypeFlags" ( ogreLight As Zstring Ptr ) As Integer
Declare Function LIGHT_createAnimableValue Cdecl Alias "LIGHT_createAnimableValue" ( valuename_ As Zstring Ptr , ogreLight As Zstring Ptr ) As Zstring Ptr
Declare Sub      LIGHT_setCustomShadowCameraSetup Cdecl Alias "LIGHT_setCustomShadowCameraSetup" ( customShadowSetup As Zstring Ptr , ogreLight As Zstring Ptr )
Declare Sub      LIGHT_resetCustomShadowCameraSetup Cdecl Alias "LIGHT_resetCustomShadowCameraSetup" ( ogreLight As Zstring Ptr )
Declare Function LIGHT_getCustomShadowCameraSetup Cdecl Alias "LIGHT_getCustomShadowCameraSetup" ( ogreLight As Zstring Ptr ) As Zstring Ptr


' Particle System
Declare Sub      PS_setRenderer Cdecl Alias "PS_setRenderer" ( typename_ As Zstring Ptr , ps As Zstring Ptr )
Declare Function PS_getRenderer Cdecl Alias "PS_getRenderer" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getRendererName Cdecl Alias "PS_getRendererName" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_addEmitter Cdecl Alias "PS_addEmitter" ( emitterType As Zstring Ptr , ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getEmitter Cdecl Alias "PS_getEmitter" ( index As Integer , ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getNumEmitters Cdecl Alias "PS_getNumEmitters" ( ps As Zstring Ptr ) As Integer
Declare Sub      PS_removeEmitter Cdecl Alias "PS_removeEmitter" ( index As Integer , ps As Zstring Ptr )
Declare Sub      PS_removeAllEmitters Cdecl Alias "PS_removeAllEmitters" ( ps As Zstring Ptr )
Declare Function PS_addAffector Cdecl Alias "PS_addAffector" ( affectorType As Zstring Ptr , ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getAffector Cdecl Alias "PS_getAffector" ( index As Integer , ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getNumAffectors Cdecl Alias "PS_getNumAffectors" ( ps As Zstring Ptr ) As Integer
Declare Sub      PS_removeAffector Cdecl Alias "PS_removeAffector" ( index As Integer , ps As Zstring Ptr )
Declare Sub      PS_removeAllAffectors Cdecl Alias "PS_removeAllAffectors" ( ps As Zstring Ptr )
Declare Sub      PS_clear Cdecl Alias "PS_clear" ( ps As Zstring Ptr )
Declare Function PS_getNumParticles Cdecl Alias "PS_getNumParticles" ( ps As Zstring Ptr ) As Integer
Declare Function PS_createParticle Cdecl Alias "PS_createParticle" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_createEmitterParticle Cdecl Alias "PS_createEmitterParticle" ( emittername_ As Zstring Ptr , ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getParticle Cdecl Alias "PS_getParticle" ( index As Integer , ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getParticleQuota Cdecl Alias "PS_getParticleQuota" ( ps As Zstring Ptr ) As Integer
Declare Sub      PS_setParticleQuota Cdecl Alias "PS_setParticleQuota" ( quota As Integer , ps As Zstring Ptr )
Declare Function PS_getEmittedEmitterQuota Cdecl Alias "PS_getEmittedEmitterQuota" ( ps As Zstring Ptr ) As Integer
Declare Sub      PS_setEmittedEmitterQuota Cdecl Alias "PS_setEmittedEmitterQuota" ( quota As Integer , ps As Zstring Ptr )
Declare Sub      PS_eq Cdecl Alias "PS_eq" ( a As Zstring Ptr , b As Zstring Ptr )
Declare Sub      PS_setMaterialName Cdecl Alias "PS_setMaterialName" ( name_ As Zstring Ptr , ps As Zstring Ptr )
Declare Function PS_getMaterialName Cdecl Alias "PS_getMaterialName" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getBoundingBox Cdecl Alias "PS_getBoundingBox" (ps As Zstring Ptr) As Zstring Ptr
Declare Function PS_getBoundingRadius Cdecl Alias "PS_getBoundingRadius" ( ps As Zstring Ptr ) As Single
Declare Sub      PS_fastForward Cdecl Alias "PS_fastForward" ( time As Single , interval As Single , ps As Zstring Ptr )
Declare Sub      PS_setSpeedFactor Cdecl Alias "PS_setSpeedFactor" ( speedFactor As Single , ps As Zstring Ptr )
Declare Function PS_getSpeedFactor Cdecl Alias "PS_getSpeedFactor" ( ps As Zstring Ptr ) As Single
Declare Sub      PS_setIterationInterval Cdecl Alias "PS_setIterationInterval" ( iterationInterval As Single , ps As Zstring Ptr )
Declare Function PS_getIterationInterval Cdecl Alias "PS_getIterationInterval" ( ps As Zstring Ptr ) As Single
Declare Sub      PS_setNonVisibleUpdateTimeout Cdecl Alias "PS_setNonVisibleUpdateTimeout" ( timeout As Single , ps As Zstring Ptr )
Declare Function PS_getNonVisibleUpdateTimeout Cdecl Alias "PS_getNonVisibleUpdateTimeout" ( ps As Zstring Ptr ) As Single
Declare Function PS_getMovableType Cdecl Alias "PS_getMovableType" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Sub      PS_setDefaultDimensions Cdecl Alias "PS_setDefaultDimensions" ( width_ As Single , height As Single , ps As Zstring Ptr )
Declare Sub      PS_setDefaultWidth Cdecl Alias "PS_setDefaultWidth" ( width_ As Single , ps As Zstring Ptr )
Declare Function PS_getDefaultWidth Cdecl Alias "PS_getDefaultWidth" ( ps As Zstring Ptr ) As Single
Declare Sub      PS_setDefaultHeight Cdecl Alias "PS_setDefaultHeight" ( height As Single , ps As Zstring Ptr )
Declare Function PS_getDefaultHeight Cdecl Alias "PS_getDefaultHeight" ( ps As Zstring Ptr ) As Single
Declare Function PS_getCullIndividually Cdecl Alias "PS_getCullIndividually" ( ps As Zstring Ptr ) As Integer
Declare Sub      PS_setCullIndividually Cdecl Alias "PS_setCullIndividually" ( cullIndividual As Integer , ps As Zstring Ptr )
Declare Function PS_getResourceGroupName Cdecl Alias "PS_getResourceGroupName" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Function PS_getOrigin Cdecl Alias "PS_getOrigin" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Sub      PS_setRenderQueueGroup Cdecl Alias "PS_setRenderQueueGroup" ( queueID As Integer , ps As Zstring Ptr )
Declare Sub      PS_setSortingEnabled Cdecl Alias "PS_setSortingEnabled" ( enabled As Integer , ps As Zstring Ptr )
Declare Function PS_getSortingEnabled Cdecl Alias "PS_getSortingEnabled" ( ps As Zstring Ptr ) As Integer
Declare Sub      PS_setBounds Cdecl Alias "PS_setBounds" ( aabb As Zstring Ptr , ps As Zstring Ptr )
Declare Sub      PS_setBoundsAutoUpdated Cdecl Alias "PS_setBoundsAutoUpdated" ( autoUpdate As Integer , stopIn As Single , ps As Zstring Ptr )
Declare Sub      PS_setKeepParticlesInLocalSpace Cdecl Alias "PS_setKeepParticlesInLocalSpace" ( keepLocal As Integer , ps As Zstring Ptr )
Declare Function PS_getKeepParticlesInLocalSpace Cdecl Alias "PS_getKeepParticlesInLocalSpace" ( ps As Zstring Ptr ) As Integer
Declare Function PS_getTypeFlags Cdecl Alias "PS_getTypeFlags" ( ps As Zstring Ptr ) As Integer
Declare Sub      PS_setDefaultIterationInterval Cdecl Alias "PS_setDefaultIterationInterval" ( iterationInterval As Single )
Declare Function PS_getDefaultIterationInterval Cdecl Alias "PS_getDefaultIterationInterval" () As Single
Declare Sub      PS_setDefaultNonVisibleUpdateTimeout Cdecl Alias "PS_setDefaultNonVisibleUpdateTimeout" ( timeout As Single )
Declare Function PS_getDefaultNonVisibleUpdateTimeout Cdecl Alias "PS_getDefaultNonVisibleUpdateTimeout" () As Single
Declare Function PS_getName Cdecl Alias "PS_getName" (ps As Zstring Ptr) As Zstring Ptr
Declare Function PS_getParentNode Cdecl Alias "PS_getParentNode" (ps As Zstring Ptr) As Zstring Ptr
Declare Function PS_getParentSceneNode Cdecl Alias "PS_getParentSceneNode" (ps As Zstring Ptr) As Zstring Ptr
Declare Function PS_isAttached Cdecl Alias "PS_isAttached" (p As Zstring Ptr) As Byte
Declare Function PS_isInScene Cdecl Alias "PS_isInScene" (p As Zstring Ptr) As Byte
Declare Function PS_getWorldBoundingBox Cdecl Alias "PS_getWorldBoundingBox" (derive As Byte, p As Zstring Ptr) As Zstring Ptr
Declare Function PS_getWorldBoundingSphere Cdecl Alias "PS_getWorldBoundingSphere" (derive As Byte, p As Zstring Ptr) As Zstring Ptr
Declare Sub      PS_setVisible Cdecl Alias "PS_setVisible" (visible As Integer, ps As Zstring Ptr)
Declare Function PS_getVisible Cdecl Alias "PS_getVisible" (p As Zstring Ptr) As Byte
Declare Function PS_isVisible Cdecl Alias "PS_isVisible" (p As Zstring Ptr) As Byte
Declare Sub      PS_setRenderingDistance Cdecl Alias "PS_setRenderingDistance" (dist As Single, p As Zstring Ptr)
Declare Function PS_getRenderingDistance Cdecl Alias "PS_getRenderingDistance" (p As Zstring Ptr) As Single
Declare Sub      PS_setUserObject Cdecl Alias "PS_setUserObject" (obj As Zstring Ptr, p As Zstring Ptr)
Declare Function PS_getUserObject Cdecl Alias "PS_getUserObject" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PS_setUserAny Cdecl Alias "PS_setUserAny" (anything As Zstring Ptr, p As Zstring Ptr)
Declare Function PS_getUserAny Cdecl Alias "PS_getUserAny" (p As Zstring Ptr) As Zstring Ptr
Declare Function PS_getRenderQueueGroup Cdecl Alias "PS_getRenderQueueGroup" (p As Zstring Ptr) As Integer
Declare Sub      PS_setQueryFlags Cdecl Alias "PS_setQueryFlags" (flags As Integer, p As Zstring Ptr)
Declare Sub      PS_addQueryFlags Cdecl Alias "PS_addQueryFlags" (flags As Integer, p As Zstring Ptr)
Declare Sub      PS_removeQueryFlags Cdecl Alias "PS_removeQueryFlags" (flags As Integer, p As Zstring Ptr)
Declare Function PS_getQueryFlags Cdecl Alias "PS_getQueryFlags" (p As Zstring Ptr) As Integer
Declare Sub      PS_setVisibilityFlags Cdecl Alias "PS_setVisibilityFlags" (flags As Integer, p As Zstring Ptr)
Declare Sub      PS_addVisibilityFlags Cdecl Alias "PS_addVisibilityFlags" (flags As Integer, p As Zstring Ptr)
Declare Sub      PS_removeVisibilityFlags Cdecl Alias "PS_removeVisibilityFlags" (flags As Integer, p As Zstring Ptr)
Declare Function PS_getVisibilityFlags Cdecl Alias "PS_getVisibilityFlags" (ogreMovableObject As Zstring Ptr) As Integer
Declare Sub      PS_setListener Cdecl Alias "PS_setListener" (listener As Zstring Ptr, ogreMovableObject As Zstring Ptr)
Declare Function PS_getListener Cdecl Alias "PS_getListener" (ogreMovableObject As Zstring Ptr) As Zstring Ptr
Declare Function PS_queryLights Cdecl Alias "PS_queryLights" (ogreMovableObject As Zstring Ptr) As Zstring Ptr
Declare Sub      PS_setCastShadows Cdecl Alias "PS_setCastShadows" (enabled As Integer, p As Zstring Ptr)
Declare Function PS_getCastShadows Cdecl Alias "PS_getCastShadows" (p As Zstring Ptr) As Integer
Declare Function PS_getEdgeList Cdecl Alias "PS_getEdgeList" (sc As Zstring Ptr) As Zstring Ptr
Declare Function PS_hasEdgeList Cdecl Alias "PS_hasEdgeList" (ogreShadowCaster As Zstring Ptr) As Integer
Declare Function PS_getLightCapBounds Cdecl Alias "PS_getLightCapBounds" (ogreShadowCaster As Zstring Ptr) As Zstring Ptr
Declare Function PS_getDarkCapBounds Cdecl Alias "PS_getDarkCapBounds" (light As Zstring Ptr, dirLightExtrusionDist As Single, ogreShadowCaster As Zstring Ptr) As Zstring Ptr
Declare Function PS_getShadowVolumeRenderableIterator Cdecl Alias "PS_getShadowVolumeRenderableIterator" (shadowTechnique As Integer, light As Zstring Ptr, indexBuffer As Zstring Ptr, extrudeVertices As Byte, extrusionDistance As Single, flags As Integer) As Zstring Ptr
Declare Sub      PS_getPointExtrusionDistance Cdecl Alias "PS_getPointExtrusionDistance" (l As Zstring Ptr, ogreShadowCaster As Zstring Ptr)
Declare Function PS_getIterator Cdecl Alias "PS_getIterator" ( ps As Zstring Ptr ) As Zstring Ptr
Declare Sub      PS_update Cdecl Alias "PS_update" ( timeElapsed As Single , ps As Zstring Ptr )
Declare Sub      PS_notifyParticleResized Cdecl Alias "PS_notifyParticleResized" ( ps As Zstring Ptr )
Declare Sub      PS_notifyParticleRotated Cdecl Alias "PS_notifyParticleRotated" ( ps As Zstring Ptr )
Declare Sub      PS_notifyOrigin Cdecl Alias "PS_notifyOrigin" ( origin As Zstring Ptr , ps As Zstring Ptr )
Declare Sub      PS_updateBounds Cdecl Alias "PS_updateBounds" ( ps As Zstring Ptr )
Declare Sub      PS_notifyCreator Cdecl Alias "PS_notifyCreator" (fact As Zstring Ptr, p As Zstring Ptr)
Declare Function PS_getCreator Cdecl Alias "PS_getCreator" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PS_notifyManager Cdecl Alias "PS_notifyManager" (man As Zstring Ptr, p As Zstring Ptr)
Declare Function PS_getManager Cdecl Alias "PS_getManager" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PS_notifyMoved Cdecl Alias "PS_notifyMoved" (p As Zstring Ptr)
Declare Function PS_getParentNodeFullTransform Cdecl Alias "PS_getParentNodeFullTransform" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PS_updateRenderQueue Cdecl Alias "PS_updateRenderQueue" ( queue As Zstring Ptr , ps As Zstring Ptr )
Declare Sub      PS_notifyCurrentCamera Cdecl Alias "PS_notifyCurrentCamera" ( cam As Zstring Ptr , ps As Zstring Ptr )
Declare Sub      PS_notifyAttached Cdecl Alias "PS_notifyAttached" ( parent As Zstring Ptr , isTagPoint As Integer , ps As Zstring Ptr )




' Manual Object
Declare Sub      MANUALOBJECT_clear Cdecl Alias "MANUALOBJECT_clear" (o As Zstring Ptr)
Declare Sub      MANUALOBJECT_estimateVertexCount Cdecl Alias "MANUALOBJECT_estimateVertexCount" (vcount As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_estimateIndexCount Cdecl Alias "MANUALOBJECT_estimateIndexCount" (icount As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_begin Cdecl Alias "MANUALOBJECT_begin" (materialname_ As Zstring Ptr, opType As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_setDynamic Cdecl Alias "MANUALOBJECT_setDynamic" (dyn As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_getDynamic Cdecl Alias "MANUALOBJECT_getDynamic" (o As Zstring Ptr) As Byte
Declare Sub      MANUALOBJECT_beginUpdate Cdecl Alias "MANUALOBJECT_beginUpdate" (sectionIndex As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_positionWithVector3 Cdecl Alias "MANUALOBJECT_positionWithVector3" (pos As Zstring Ptr, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_position Cdecl Alias "MANUALOBJECT_position" (x As Single, y As Single, z As Single, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_normalWithVector3 Cdecl Alias "MANUALOBJECT_normalWithVector3" (norm As Zstring Ptr, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_normal Cdecl Alias "MANUALOBJECT_normal" (x As Single, y As Single, z As Single, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_textureCoord1D Cdecl Alias "MANUALOBJECT_textureCoord1D" (u As Single, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_textureCoord Cdecl Alias "MANUALOBJECT_textureCoord" (u As Single, v As Single, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_textureCoord3D Cdecl Alias "MANUALOBJECT_textureCoord3D" (u As Single, v As Single, w As Single, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_textureCoord4D Cdecl Alias "MANUALOBJECT_textureCoord4D" (x As Single, y As Single, z As Single, w As Single, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_textureCoordWithVector2 Cdecl Alias "MANUALOBJECT_textureCoordWithVector2" (uv As Zstring Ptr, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_textureCoordWithVector3 Cdecl Alias "MANUALOBJECT_textureCoordWithVector3" (uvw As Zstring Ptr, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_textureCoordWithVector4 Cdecl Alias "MANUALOBJECT_textureCoordWithVector4" (xyzw As Zstring Ptr, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_colourWithColourValue Cdecl Alias "MANUALOBJECT_colourWithColourValue" (col As Zstring Ptr, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_colour Cdecl Alias "MANUALOBJECT_colour" (r As Single, g As Single, b As Single, a As Single, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_index Cdecl Alias "MANUALOBJECT_index" (idx As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_triangle Cdecl Alias "MANUALOBJECT_triangle" (i1 As Integer, i2 As Integer, i3 As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_quad Cdecl Alias "MANUALOBJECT_quad" (i1 As Integer, i2 As Integer, i3 As Integer, i4 As Integer, o As Zstring Ptr)
Declare Function MANUALOBJECT_end Cdecl Alias "MANUALOBJECT_end" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_setMaterialName Cdecl Alias "MANUALOBJECT_setMaterialName" (subindex As Integer, name_ As Zstring Ptr, o As Zstring Ptr)
Declare Function MANUALOBJECT_convertToMesh Cdecl Alias "MANUALOBJECT_convertToMesh" (meshname_ As Zstring Ptr, groupname_ As Zstring Ptr, o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_setUseIdentityProjection Cdecl Alias "MANUALOBJECT_setUseIdentityProjection" (useIdentityProjection As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_getUseIdentityProjection Cdecl Alias "MANUALOBJECT_getUseIdentityProjection" (o As Zstring Ptr) As Byte
Declare Sub      MANUALOBJECT_setUseIdentityView Cdecl Alias "MANUALOBJECT_setUseIdentityView" (useIdentityView As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_getUseIdentityView Cdecl Alias "MANUALOBJECT_getUseIdentityView" (o As Zstring Ptr) As Byte
Declare Sub      MANUALOBJECT_setBoundingBox Cdecl Alias "MANUALOBJECT_setBoundingBox" (box As Zstring Ptr, o As Zstring Ptr)
Declare Function MANUALOBJECT_getSection Cdecl Alias "MANUALOBJECT_getSection" (index As Integer, o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getNumSections Cdecl Alias "MANUALOBJECT_getNumSections" (o As Zstring Ptr) As Integer
Declare Sub      MANUALOBJECT_setKeepDeclarationOrder Cdecl Alias "MANUALOBJECT_setKeepDeclarationOrder" (keepOrder As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_getKeepDeclarationOrder Cdecl Alias "MANUALOBJECT_getKeepDeclarationOrder" (o As Zstring Ptr) As Byte
Declare Function MANUALOBJECT_getMovableType Cdecl Alias "MANUALOBJECT_getMovableType" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getBoundingBox Cdecl Alias "MANUALOBJECT_getBoundingBox" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getBoundingRadius Cdecl Alias "MANUALOBJECT_getBoundingRadius" (o As Zstring Ptr) As Single
Declare Sub      MANUALOBJECT_updateRenderQueue Cdecl Alias "MANUALOBJECT_updateRenderQueue" (queue As Zstring Ptr, o As Zstring Ptr)
Declare Function MANUALOBJECT_getEdgeList Cdecl Alias "MANUALOBJECT_getEdgeList" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_hasEdgeList Cdecl Alias "MANUALOBJECT_hasEdgeList" (o As Zstring Ptr) As Byte
Declare Function MANUALOBJECT_getShadowVolumeRenderableIterator Cdecl Alias "MANUALOBJECT_getShadowVolumeRenderableIterator" (shadowTechnique As Integer, light As Zstring Ptr, indexbuffer As Zstring Ptr, extrudeVertices As Byte, extrusionDistance As Single, flags As Integer, o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_visitRenderables Cdecl Alias "MANUALOBJECT_visitRenderables" (visitor As Zstring Ptr, debugRenderables As Byte, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_notifyCreator Cdecl Alias "MANUALOBJECT_notifyCreator" (fact As Zstring Ptr, o As Zstring Ptr)
Declare Function MANUALOBJECT_getCreator Cdecl Alias "MANUALOBJECT_getCreator" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_notifyManager Cdecl Alias "MANUALOBJECT_notifyManager" (man As Zstring Ptr, o As Zstring Ptr)
Declare Function MANUALOBJECT_getManager Cdecl Alias "MANUALOBJECT_getManager" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getName Cdecl Alias "MANUALOBJECT_getName" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getParentNode Cdecl Alias "MANUALOBJECT_getParentNode" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getParentSceneNode Cdecl Alias "MANUALOBJECT_getParentSceneNode" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_notifyAttached Cdecl Alias "MANUALOBJECT_notifyAttached" (parent As Zstring Ptr, isTagPoint As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_isAttached Cdecl Alias "MANUALOBJECT_isAttached" (o As Zstring Ptr) As Byte
Declare Sub      MANUALOBJECT_detatchFromParent Cdecl Alias "MANUALOBJECT_detatchFromParent" (o As Zstring Ptr)
Declare Function MANUALOBJECT_isInScene Cdecl Alias "MANUALOBJECT_isInScene" (o As Zstring Ptr) As Byte
Declare Sub      MANUALOBJECT_notifyMoved Cdecl Alias "MANUALOBJECT_notifyMoved" (o As Zstring Ptr)
Declare Sub      MANUALOBJECT_notifyCurrentCamera Cdecl Alias "MANUALOBJECT_notifyCurrentCamera" (cam As Zstring Ptr, o As Zstring Ptr)
Declare Function MANUALOBJECT_getWorldBoundingBox Cdecl Alias "MANUALOBJECT_getWorldBoundingBox" (derive As Byte, o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getWorldBoundingSphere Cdecl Alias "MANUALOBJECT_getWorldBoundingSphere" (derive As Byte, o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_setVisible Cdecl Alias "MANUALOBJECT_setVisible" (visible As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_getVisible Cdecl Alias "MANUALOBJECT_getVisible" (o As Zstring Ptr) As Byte
Declare Function MANUALOBJECT_isVisible Cdecl Alias "MANUALOBJECT_isVisible" (o As Zstring Ptr) As Byte
Declare Sub      MANUALOBJECT_setRenderingDistance Cdecl Alias "MANUALOBJECT_setRenderingDistance" (dist As Single, o As Zstring Ptr)
Declare Function MANUALOBJECT_getRenderingDistance Cdecl Alias "MANUALOBJECT_getRenderingDistance" (o As Zstring Ptr) As Single
' anulada --> Declare Sub      MANUALOBJECT_setUserObject Cdecl Alias "MANUALOBJECT_setUserObject" (obj As Zstring Ptr, o As Zstring Ptr)
' anulada --> Declare Function MANUALOBJECT_getUserObject Cdecl Alias "MANUALOBJECT_getUserObject" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_setRenderQueueGroup Cdecl Alias "MANUALOBJECT_setRenderQueueGroup" (queueID As Integer, o As Zstring Ptr)
Declare Function MANUALOBJECT_getRenderQueueGroup Cdecl Alias "MANUALOBJECT_getRenderQueueGroup" (o As Zstring Ptr) As Integer
Declare Function MANUALOBJECT_getParentNodeFullTransform Cdecl Alias "MANUALOBJECT_getParentNodeFullTransform" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_setQueryFlags Cdecl Alias "MANUALOBJECT_setQueryFlags" (flags As Integer, o As Zstring Ptr)
Declare Function MANUALOBJECT_addQueryFlags Cdecl Alias "MANUALOBJECT_addQueryFlags" (o As Zstring Ptr) As Single
Declare Sub      MANUALOBJECT_removeQueryFlags Cdecl Alias "MANUALOBJECT_removeQueryFlags" (flags As Integer, o As Zstring Ptr)
Declare Function MANUALOBJECT_getQueryFlags Cdecl Alias "MANUALOBJECT_getQueryFlags" (o As Zstring Ptr) As Integer
Declare Sub      MANUALOBJECT_setVisibilityFlags Cdecl Alias "MANUALOBJECT_setVisibilityFlags" (flags As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_addVisibilityFlags Cdecl Alias "MANUALOBJECT_addVisibilityFlags" (flags As Integer, o As Zstring Ptr)
Declare Sub      MANUALOBJECT_removeVisibilityFlags Cdecl Alias "MANUALOBJECT_removeVisibilityFlags" (flags As Integer, o As Zstring Ptr)
Declare Function MANUALOBJECT_getVisibilityFlags Cdecl Alias "MANUALOBJECT_getVisibilityFlags" (o As Zstring Ptr) As Single
Declare Sub      MANUALOBJECT_setListener Cdecl Alias "MANUALOBJECT_setListener" (listener As Zstring Ptr, o As Zstring Ptr)
Declare Function MANUALOBJECT_getListener Cdecl Alias "MANUALOBJECT_getListener" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_queryLights Cdecl Alias "MANUALOBJECT_queryLights" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getLightCapBounds Cdecl Alias "MANUALOBJECT_getLightCapBounds" (o As Zstring Ptr) As Zstring Ptr
Declare Function MANUALOBJECT_getDarkCapBounds Cdecl Alias "MANUALOBJECT_getDarkCapBounds" (light As Zstring Ptr, dirLightExtrusionDist As Single, o As Zstring Ptr) As Zstring Ptr
Declare Sub      MANUALOBJECT_setCastShadows Cdecl Alias "MANUALOBJECT_setCastShadows" (enabled As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_getCastShadows Cdecl Alias "MANUALOBJECT_getCastShadows" (o As Zstring Ptr) As Byte
Declare Function MANUALOBJECT_getPointExtrusionDistance Cdecl Alias "MANUALOBJECT_getPointExtrusionDistance" (l As Zstring Ptr, o As Zstring Ptr) As Single
Declare Function MANUALOBJECT_getTypeFlags Cdecl Alias "MANUALOBJECT_getTypeFlags" (o As Zstring Ptr) As Integer
Declare Sub      MANUALOBJECT_setDebugDisplayEnabled Cdecl Alias "MANUALOBJECT_setDebugDisplayEnabled" (enabled As Byte, o As Zstring Ptr)
Declare Function MANUALOBJECT_isDebugDisplayEnabled Cdecl Alias "MANUALOBJECT_isDebugDisplayEnabled" (o As Zstring Ptr) As Byte
Declare Sub      MANUALOBJECT_setDefaultQueryFlags Cdecl Alias "MANUALOBJECT_setDefaultQueryFlags" (flags As Integer)
Declare Function MANUALOBJECT_getDefaultQueryFlags Cdecl Alias "MANUALOBJECT_getDefaultQueryFlags" () As Integer
Declare Sub      MANUALOBJECT_setDefaultVisibilityFlags Cdecl Alias "MANUALOBJECT_setDefaultVisibilityFlags" (flags As Integer)
Declare Function MANUALOBJECT_getDefaultVisibilityFlags Cdecl Alias "MANUALOBJECT_getDefaultVisibilityFlags" () As Integer
Declare Sub      MANUALOBJECT_extrudeVertices Cdecl Alias "MANUALOBJECT_extrudeVertices" (vertxBuffer As Zstring Ptr, originalVertexCount As Long, lightPos As Zstring Ptr, extrudeDist As Single)

' Manual Object Section
Declare Function MOS_getRenderOperationRef Cdecl Alias "MOS_getRenderOperationRef" (s As Zstring Ptr) As Zstring Ptr
Declare Function MOS_getMaterialName Cdecl Alias "MOS_getMaterialName" (s As Zstring Ptr) As Zstring Ptr
Declare Sub      MOS_setMaterialName Cdecl Alias "MOS_setMaterialName" (name_ As Zstring Ptr, s As Zstring Ptr)
Declare Sub      MOS_set32BitIndices Cdecl Alias "MOS_set32BitIndices" (n32 As Byte, s As Zstring Ptr)
Declare Function MOS_get32BitIndices Cdecl Alias "MOS_get32BitIndices" (s As Zstring Ptr) As Byte

' Particle 
Declare Sub      PARTICLE_setDimensions Cdecl Alias "PARTICLE_setDimensions" (width_ As Single, height As Single, p As Zstring Ptr)
Declare Function PARTICLE_hasOwnDimensions Cdecl Alias "PARTICLE_hasOwnDimensions" (p As Zstring Ptr) As Byte
Declare Function PARTICLE_getOwnWidth Cdecl Alias "PARTICLE_getOwnWidth" (p As Zstring Ptr) As Single
Declare Function PARTICLE_getOwnHeight Cdecl Alias "PARTICLE_getOwnHeight" (p As Zstring Ptr) As Single
Declare Sub      PARTICLE_setRotation Cdecl Alias "PARTICLE_setRotation" (rad As Zstring Ptr, p As Zstring Ptr)
Declare Function PARTICLE_getRotation Cdecl Alias "PARTICLE_getRotation" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PARTICLE_notifyOwner Cdecl Alias "PARTICLE_notifyOwner" (owner As Zstring Ptr, p As Zstring Ptr)
Declare Sub      PARTICLE_notifyVisualData Cdecl Alias "PARTICLE_notifyVisualData" (vis As Zstring Ptr, p As Zstring Ptr)
Declare Function PARTICLE_getVisualData Cdecl Alias "PARTICLE_getVisualData" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PARTICLE_resetDimensions Cdecl Alias "PARTICLE_resetDimensions" (p As Zstring Ptr)
Declare Sub      PARTICLE_setHasOwnDimensions Cdecl Alias "PARTICLE_setHasOwnDimensions" (hasOwnDimensions As Byte, p As Zstring Ptr)
Declare Sub      PARTICLE_setPosition Cdecl Alias "PARTICLE_setPosition" (position As Zstring Ptr, p As Zstring Ptr)
Declare Function PARTICLE_getPosition Cdecl Alias "PARTICLE_getPosition" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PARTICLE_setDirection Cdecl Alias "PARTICLE_setDirection" (direction As Zstring Ptr, p As Zstring Ptr)
Declare Function PARTICLE_getDirection Cdecl Alias "PARTICLE_getDirection" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PARTICLE_setColour Cdecl Alias "PARTICLE_setColour" (colour As Zstring Ptr, p As Zstring Ptr)
Declare Function PARTICLE_getColour Cdecl Alias "PARTICLE_getColour" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PARTICLE_setTimeToLive Cdecl Alias "PARTICLE_setTimeToLive" (timeToLive As Single, p As Zstring Ptr)
Declare Function PARTICLE_getTimeToLive Cdecl Alias "PARTICLE_getTimeToLive" (p As Zstring Ptr) As Single
Declare Sub      PARTICLE_setTotalTimeToLive Cdecl Alias "PARTICLE_setTotalTimeToLive" (totalTimeToLive As Single, p As Zstring Ptr)
Declare Function PARTICLE_getTotalTimeToLive Cdecl Alias "PARTICLE_getTotalTimeToLive" (p As Zstring Ptr) As Single
Declare Sub      PARTICLE_setRotationSpeed Cdecl Alias "PARTICLE_setRotationSpeed" (rotationSpeed As Zstring Ptr, p As Zstring Ptr)
Declare Function PARTICLE_getRotationSpeed Cdecl Alias "PARTICLE_getRotationSpeed" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PARTICLE_setParticleType Cdecl Alias "PARTICLE_setParticleType" (particleType As Integer, p As Zstring Ptr)
Declare Function PARTICLE_getParticleType Cdecl Alias "PARTICLE_getParticleType" (p As Zstring Ptr) As Integer


' ParticleEmitter
Declare Sub      PARTICLEEMITTER_initParticle Cdecl Alias "PARTICLEEMITTER_initParticle" (pParticle As Zstring Ptr, p As Zstring Ptr)
Declare Sub      PARTICLEEMITTER_setEnabled Cdecl Alias "PARTICLEEMITTER_setEnabled" (enabled As Byte, p As Zstring Ptr)
Declare Function PARTICLEEMITTER_getEnabled Cdecl Alias "PARTICLEEMITTER_getEnabled" (p As Zstring Ptr) As Byte
Declare Sub      PARTICLEEMITTER_setColour Cdecl Alias "PARTICLEEMITTER_setColour" (colour As Zstring Ptr, p As Zstring Ptr)

' Camera
Declare Sub      CAM_setFOVy Cdecl Alias "CAM_setFOVy" (fovy As Zstring Ptr, c As Zstring Ptr)
Declare Function CAM_getFOVy Cdecl Alias "CAM_getFOVy" (c As Zstring Ptr) As Zstring Ptr
Declare Function CAM_getSceneManager Cdecl Alias "CAM_getSceneManager" ( ogreCamera As Zstring Ptr ) As Zstring Ptr
Declare Sub      CAM_setPolygonMode Cdecl Alias "CAM_setPolygonMode" ( sd As Integer , ogrecamera As Zstring Ptr )
Declare Function CAM_getPolygonMode Cdecl Alias "CAM_getPolygonMode" ( ogreCamera As Zstring Ptr ) As Integer
Declare Sub      CAM_setPosition Cdecl Alias "CAM_setPosition" ( x As Single ,  y As Single , z As Single , OgreCamera As Zstring Ptr )
Declare Function CAM_getPosition Cdecl Alias "CAM_getPosition" (ogreCamera As Zstring Ptr) As Zstring Ptr
Declare Function CAM_getUp Cdecl Alias "CAM_getUp" (ogreCamera As Zstring Ptr) As Zstring Ptr
Declare Sub      CAM_move Cdecl Alias "CAM_move" ( ogreVector As Zstring Ptr , ogreCamera As Zstring Ptr )
Declare Sub      CAM_lookAt Cdecl Alias "CAM_lookAt" (x As Single, y As Single, z As Single, c As Zstring Ptr)
Declare Sub      CAM_lookAtWithVector3 Cdecl Alias "CAM_lookAtWithVector3" (targetPoint As Zstring Ptr, c As Zstring Ptr)
Declare Sub      CAM_setNearClipDistance Cdecl Alias "CAM_setNearClipDistance" (NearClipDistance As Single, ogreCamera As Zstring Ptr)
Declare Function CAM_getNearClipDistance Cdecl Alias "CAM_getNearClipDistance" (c As Zstring Ptr) As Single
Declare Sub      CAM_setFarClipDistance Cdecl Alias "CAM_setFarClipDistance" (FarClipDistance As Single, ogreCamera As Zstring Ptr)
Declare Function CAM_getFarClipDistance Cdecl Alias "CAM_getFarClipDistance" (c As Zstring Ptr) As Single
Declare Sub      CAM_setAspectRatio Cdecl Alias "CAM_setAspectRatio" (AspectRatio As Single, ogreCamera As Zstring Ptr)
Declare Function CAM_getAspectRatio Cdecl Alias "CAM_getAspectRatio" (c As Zstring Ptr ) As Single
Declare Sub      CAM_yaw Cdecl Alias "CAM_yaw" ( degree As Single , ogreCamera As Zstring Ptr )
Declare Sub      CAM_pitch Cdecl Alias "CAM_pitch" ( degree As Single , ogreCamera As Zstring Ptr )
Declare Sub      CAM_roll Cdecl Alias "CAM_roll" ( degree As Single ,  ogreCamera As Zstring Ptr )
Declare Sub      CAM_getCameraToViewportRay Cdecl Alias "CAM_getCameraToViewportRay" ( posx As Single ,posy As Single , ogreRay As Zstring Ptr , ogreCamera As Zstring Ptr )
Declare Sub      CAM_setAutoTracking Cdecl Alias "CAM_setAutoTracking" ( enabled As Integer , ogreSceneNode As Zstring Ptr , x As Single , y As Single , z As Single , ogreCamera As Zstring Ptr )
Declare Sub      CAM_setOrientation Cdecl Alias "CAM_setOrientation" ( ogreQuaternion As Zstring Ptr , ogreCamera As Zstring Ptr )
Declare Function CAM_getViewMatrix Cdecl Alias "CAM_getViewMatrix" (ogreCamera As Zstring Ptr) As Zstring Ptr
Declare Sub      CAM_setWindow Cdecl Alias "CAM_setWindow" (x As Single, y As Single, width_ As Single, height As Single, cam As Zstring Ptr)
Declare Function CAM_getViewport Cdecl Alias "CAM_getViewport" (cam As Zstring Ptr) As Zstring Ptr


' OgreNode
Declare Function NODE_getName Cdecl Alias "NODE_getName" (n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_getParent Cdecl Alias "NODE_getParent" (n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_getOrientation Cdecl Alias "NODE_getOrientation" (n As Zstring Ptr) As Zstring Ptr
Declare Sub      NODE_setOrientationWithQuaternion Cdecl Alias "NODE_setOrientationWithQuaternion" (q As Zstring Ptr, n As Zstring Ptr)
Declare Sub      NODE_setOrientation Cdecl Alias "NODE_setOrientation" (w As Single, x As Single, y As Single, z As Single, n As Zstring Ptr)
Declare Sub      NODE_resetOrientation Cdecl Alias "NODE_resetOrientation" (n As Zstring Ptr)
Declare Sub      NODE_setPositionWithVector3 Cdecl Alias "NODE_setPositionWithVector3" (pos As Zstring Ptr, n As Zstring Ptr)
Declare Sub      NODE_setPosition Cdecl Alias "NODE_setPosition" (x As Single, y As Single, z As Single, n As Zstring Ptr)
Declare Function NODE_getPosition Cdecl Alias "NODE_getPosition" (n As Zstring Ptr) As Zstring Ptr
Declare Sub      NODE_setScaleWithVector3 Cdecl Alias "NODE_setScaleWithVector3" (scale As Zstring Ptr, n As Zstring Ptr)
Declare Sub      NODE_setScale Cdecl Alias "NODE_setScale" (x As Single, y As Single, z As Single, n As Zstring Ptr)
Declare Function NODE_getScale Cdecl Alias "NODE_getScale" (n As Zstring Ptr) As Zstring Ptr
Declare Sub      NODE_setInheritOrientation Cdecl Alias "NODE_setInheritOrientation" (inherit As Integer, n As Zstring Ptr)
Declare Function NODE_getInheritOrientation Cdecl Alias "NODE_getInheritOrientation" (n As Zstring Ptr) As Byte
Declare Sub      NODE_setInheritScale Cdecl Alias "NODE_setInheritScale" (inherit As Byte, n As Zstring Ptr)
Declare Function NODE_getInheritScale Cdecl Alias "NODE_getInheritScale" (n As Zstring Ptr) As Byte
Declare Sub      NODE_scaleWithVector3 Cdecl Alias "NODE_scaleWithVector3" (scale As Zstring Ptr, n As Zstring Ptr)
Declare Sub      NODE_scale Cdecl Alias "NODE_scale" (x As Single, y As Single, z As Single, n As Zstring Ptr)
Declare Sub      NODE_translateWithVector3 Cdecl Alias "NODE_translateWithVector3" (d As Zstring Ptr, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_translate Cdecl Alias "NODE_translate" (x As Single, y As Single, z As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_translateAlongAxesWithVector3 Cdecl Alias "NODE_translateAlongAxesWithVector3" (axes As Zstring Ptr, move As Zstring Ptr, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_translateAlongAxes Cdecl Alias "NODE_translateAlongAxes" (axes As Zstring Ptr, x As Single, y As Single, z As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_roll Cdecl Alias "NODE_roll" (degree As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_rollWithRadians Cdecl Alias "NODE_rollWithRadians" (Radians As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_pitch Cdecl Alias "NODE_pitch" (Degrees As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_pitchWithRadians Cdecl Alias "NODE_pitchWithRadians" (Radians As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_yaw Cdecl Alias "NODE_yaw" (Degrees As Single, transformSpace As Integer, n As Zstring Ptr)
Declare Sub      NODE_yawWithRadians Cdecl Alias "NODE_yawWithRadians" (Radians As Single, transformSpace As Integer, n As Zstring Ptr)
Declare Sub      NODE_rotate Cdecl Alias "NODE_rotate" (axis As Zstring Ptr, Degrees As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_rotateWithRadians Cdecl Alias "NODE_rotateWithRadians" (axis As Zstring Ptr, Radians As Single, relativeTo As Integer, n As Zstring Ptr)
Declare Sub      NODE_rotateWithQuaternion Cdecl Alias "NODE_rotateWithQuaternion" (q As Zstring Ptr, relativeTo As Integer, n As Zstring Ptr)
Declare Function NODE_getLocalAxes Cdecl Alias "NODE_getLocalAxes" (n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_createChild Cdecl Alias "NODE_createChild" (translate As Zstring Ptr, rotate As Zstring Ptr, n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_createChildWithName Cdecl Alias "NODE_createChildWithName" (name_ As Zstring Ptr, translate As Zstring Ptr, rotate As Zstring Ptr, n As Zstring Ptr) As Zstring Ptr
Declare Sub      NODE_addChild Cdecl Alias "NODE_addChild" (child As Zstring Ptr, n As Zstring Ptr)
Declare Function NODE_numChildren Cdecl Alias "NODE_numChildren" (n As Zstring Ptr) As Integer
Declare Function NODE_getChild Cdecl Alias "NODE_getChild" (index As Integer, n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_getChildWithName Cdecl Alias "NODE_getChildWithName" (name_ As Zstring Ptr, n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_getChildIterator Cdecl Alias "NODE_getChildIterator" ( n As Zstring Ptr ) As Zstring Ptr
Declare Function NODE_removeChildWithIndex Cdecl Alias "NODE_removeChildWithIndex" (index As Integer, n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_removeChild Cdecl Alias "NODE_removeChild" (child As Zstring Ptr, n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_removeChildWithName Cdecl Alias "NODE_removeChildWithName" (name_ As Zstring Ptr, n As Zstring Ptr) As Zstring Ptr
Declare Sub      NODE_removeAllChildren Cdecl Alias "NODE_removeAllChildren" (n As Zstring Ptr)
Declare Function NODE_getDerivedOrientation Cdecl Alias "NODE_getDerivedOrientation" (n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_getDerivedPosition Cdecl Alias "NODE_getDerivedPosition" (n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_getDerivedScale Cdecl Alias "NODE_getDerivedScale" (n As Zstring Ptr) As Zstring Ptr
Declare Function NODE_getFullTransform Cdecl Alias "NODE_getFullTransform" (n As Zstring Ptr) As Zstring Ptr
Declare Sub      NODE_update Cdecl Alias "NODE_update" (updateChildren As Byte, parentHasChanged As Byte, n As Zstring Ptr)
Declare Sub      NODE_setListener Cdecl Alias "NODE_setListener" (listener As Zstring Ptr, n As Zstring Ptr)
Declare Function NODE_getListener Cdecl Alias "NODE_getListener" (n As Zstring Ptr) As Zstring Ptr
Declare Sub      NODE_setInitialState Cdecl Alias "NODE_setInitialState" (n As Zstring Ptr)
Declare Sub      NODE_resetToInitialState Cdecl Alias "NODE_resetToInitialState" (n As Zstring Ptr)



' SceneNode
Declare Sub      SNODE_attachObject Cdecl Alias "SNODE_attachObject" ( ogreMovableObject As Zstring Ptr , ogreSceneNode As Zstring Ptr )
Declare Sub      SNODE_attachParticleSystem Cdecl Alias "SNODE_attachParticleSystem" ( ps As Zstring Ptr , ogreSceneNode As Zstring Ptr )
Declare Sub      SNODE_attachManualObject Cdecl Alias "SNODE_attachManualObject" (o As Zstring Ptr, n As Zstring Ptr)
Declare Sub      SNODE_detachObject Cdecl Alias "SNODE_detachObject" ( ogreMovableObject As Zstring Ptr , ogreSceneNode As Zstring Ptr )
Declare Sub      SNODE_detachParticleSystem Cdecl Alias "SNODE_detachParticleSystem" ( ps As Zstring Ptr , ogreSceneNode As Zstring Ptr )
Declare Sub      SNODE_detachManualObject Cdecl Alias "SNODE_detachManualObject" (o As Zstring Ptr, n As Zstring Ptr)
Declare Function SNODE_createChildSceneNode Cdecl Alias "SNODE_createChildSceneNode" ( sceneNodename_ As Zstring Ptr , x As Single , y As Single , z As Single , ogreSceneNode As Zstring Ptr ) As Zstring Ptr
Declare Sub      SNODE_removeAndDestroyAllChildren Cdecl Alias "SNODE_removeAndDestroyAllChildren" ( ogreSceneNode As Zstring Ptr )
Declare Sub      SNODE_showBoundingBox Cdecl Alias "SNODE_showBoundingBox" ( Visible As Integer , ogreSceneNode As Zstring Ptr )
Declare Function SNODE_getParentSceneNode Cdecl Alias "SNODE_getParentSceneNode" ( ogreSceneNode As Zstring Ptr ) As Zstring Ptr
Declare Sub      SNODE_setVisible Cdecl Alias "SNODE_setVisible" ( visible As Integer , ogreSceneNode As Zstring Ptr , cascade As Integer )
Declare Sub      SNODE_setFixedYawAxis Cdecl Alias "SNODE_setFixedYawAxis" ( setUsed As Integer , x As Single , y As Single , z As Single , ogreSceneNode As Zstring Ptr )
Declare Function SNODE_getShowBoundingBox Cdecl Alias "SNODE_getShowBoundingBox" ( ogreSceneNode As Zstring Ptr ) As Integer
Declare Sub      SNODE_lookAt Cdecl Alias "SNODE_lookAt" ( targetPoint As Zstring Ptr , relativeTo As Integer , localDirectionVector As Zstring Ptr , ogreSceneNode As Zstring Ptr )
Declare Sub      SNODE_setAutoTracking Cdecl Alias "SNODE_setAutoTracking" ( enabled As Byte , target As Zstring Ptr , localDirectionVector As Zstring Ptr , offset As Zstring Ptr , n As Zstring Ptr )
Declare Function SNODE_numAttachedObjects Cdecl Alias "SNODE_numAttachedObjects" ( ogreSceneNode As Zstring Ptr ) As Short
Declare Function SNODE_getAttachedObject Cdecl Alias "SNODE_getAttachedObject" ( index As Short , ogreSceneNode As Zstring Ptr ) As Zstring Ptr
Declare Function SNODE_getAttachedObjectWithName Cdecl Alias "SNODE_getAttachedObjectWithName" ( name_ As Zstring Ptr , ogreSceneNode As Zstring Ptr ) As Zstring Ptr

' Entity
Declare Function ENT_getMesh Cdecl Alias "ENT_getMesh" (e As Zstring Ptr) As Integer Ptr
Declare Function ENT_getSubEntity Cdecl Alias "ENT_getSubEntity" ( index As Integer , e As Zstring Ptr ) As Zstring Ptr
Declare Function ENT_getSubEntityWithName Cdecl Alias "ENT_getSubEntityWithName" ( name_ As Zstring Ptr , e As Zstring Ptr ) As Zstring Ptr
Declare Function ENT_getNumSubEntities Cdecl Alias "ENT_getNumSubEntities" ( e As Zstring Ptr ) As Integer
Declare Function ENT_clone Cdecl Alias "ENT_clone" ( clonename_ As Zstring Ptr , ogreEntity As Zstring Ptr ) As Zstring Ptr
Declare Sub      ENT_setMaterialName Cdecl Alias "ENT_setMaterialName" ( materialname_ As Zstring Ptr , ogreEntity As Zstring Ptr )
Declare Sub      ENT_notifyCurrentCamera Cdecl Alias "ENT_notifyCurrentCamera" ( cam As Zstring Ptr , e As Zstring Ptr )
Declare Sub      ENT_setRenderQueueGroup Cdecl Alias "ENT_setRenderQueueGroup" ( queueID As Integer , e As Zstring Ptr )
Declare Function ENT_getBoundingBox Cdecl Alias "ENT_getBoundingBox" ( e As Zstring Ptr ) As Zstring Ptr
Declare Function ENT_getChildObjectsBoundingBox Cdecl Alias "ENT_getChildObjectsBoundingBox" ( e As Zstring Ptr ) As Zstring Ptr
Declare Sub      ENT_updateRenderQueue Cdecl Alias "ENT_updateRenderQueue" ( queue As Zstring Ptr , e As Zstring Ptr )
Declare Function ENT_getMovableType Cdecl Alias "ENT_getMovableType" ( e As Zstring Ptr ) As Zstring Ptr
Declare Function ENT_getAnimationState Cdecl Alias "ENT_getAnimationState" ( name_ As Zstring Ptr , ogreEntity As Zstring Ptr ) As Zstring Ptr
Declare Function ENT_getAllAnimationStates Cdecl Alias "ENT_getAllAnimationStates" ( e As Zstring Ptr ) As Zstring Ptr
Declare Sub      ENT_setDisplaySkeleton Cdecl Alias "ENT_setDisplaySkeleton" ( display As Integer , e As Zstring Ptr )
Declare Function ENT_getDisplaySkeleton Cdecl Alias "ENT_getDisplaySkeleton" ( e As Zstring Ptr ) As Integer
Declare Function ENT_getManualLodLevel Cdecl Alias "ENT_getManualLodLevel" ( index As Integer , e As Zstring Ptr ) As Zstring Ptr
Declare Function ENT_getNumManualLodLevels Cdecl Alias "ENT_getNumManualLodLevels" ( e As Zstring Ptr ) As Integer
Declare Sub      ENT_setMeshLodBias Cdecl Alias "ENT_setMeshLodBias" ( factor As Single , maxDetailIndex As Integer , minDetailIndex As Integer , e As Zstring Ptr )
Declare Sub      ENT_setMaterialLodBias Cdecl Alias "ENT_setMaterialLodBias" ( factor As Single , maxDetailIndex As Integer , minDetailIndex As Integer , e As Zstring Ptr )
Declare Sub      ENT_setPolygonModeOverrideable Cdecl Alias "ENT_setPolygonModeOverrideable" ( PolygonModeOverrideable As Integer , e As Zstring Ptr )
Declare Function ENT_attachObjectToBone Cdecl Alias "ENT_attachObjectToBone" (bonename_ As Zstring Ptr, pMovable As Zstring Ptr, offsetOrientation As Zstring Ptr, offsetPosition As Zstring Ptr, e As Zstring Ptr) As Zstring Ptr
Declare Sub      ENT_detachObjectFromBone Cdecl Alias "ENT_detachObjectFromBone" (Obj As Zstring Ptr, e As Zstring Ptr)
Declare Function ENT_detachObjectFromBoneWithName Cdecl Alias "ENT_detachObjectFromBoneWithName" (movablename_ As Zstring Ptr, e As Zstring Ptr) As Zstring Ptr
Declare Sub      ENT_detachAllObjectsFromBone Cdecl Alias "ENT_detachAllObjectsFromBone" (e As Zstring Ptr)
Declare Function ENT_getAttachedObjectIterator Cdecl Alias "ENT_getAttachedObjectIterator" (e As Zstring Ptr) As Zstring Ptr
Declare Function ENT_getBoneMatrices Cdecl Alias "ENT_getBoneMatrices" (e As Zstring Ptr) As Zstring Ptr
Declare Function ENT_getNumBoneMatrices Cdecl Alias "ENT_getNumBoneMatrices" (e As Zstring Ptr) As Integer
Declare Function ENT_hasSkeleton Cdecl Alias "ENT_hasSkeleton" (e As Zstring Ptr) As Integer
Declare Function ENT_getSkeleton Cdecl Alias "ENT_getSkeleton" (e As Zstring Ptr) As Zstring Ptr
Declare Function ENT_isHardwareAnimationEnabled Cdecl Alias "ENT_isHardwareAnimationEnabled" (e As Zstring Ptr) As Integer
Declare Function ENT_getSoftwareAnimationRequests Cdecl Alias "ENT_getSoftwareAnimationRequests" (e As Zstring Ptr) As Integer
Declare Function ENT_getSoftwareAnimationNormalsRequests Cdecl Alias "ENT_getSoftwareAnimationNormalsRequests" (e As Zstring Ptr) As Integer
Declare Sub      ENT_addSoftwareAnimationRequest Cdecl Alias "ENT_addSoftwareAnimationRequest" (normalsAlso As Byte, e As Zstring Ptr)
Declare Sub      ENT_removeSoftwareAnimationRequest Cdecl Alias "ENT_removeSoftwareAnimationRequest" (normalsAlso As Byte, e As Zstring Ptr)
Declare Sub      ENT_shareSkeletonInstanceWith Cdecl Alias "ENT_shareSkeletonInstanceWith" (entity As Zstring Ptr, e As Zstring Ptr)
Declare Function ENT_hasVertexAnimation Cdecl Alias "ENT_hasVertexAnimation" (e As Zstring Ptr) As Integer
Declare Sub      ENT_stopSharingSkeletonInstance Cdecl Alias "ENT_stopSharingSkeletonInstance" (e As Zstring Ptr)
Declare Function ENT_sharesSkeletonInstance Cdecl Alias "ENT_sharesSkeletonInstance" (e As Zstring Ptr) As Integer
Declare Function ENT_getSkeletonInstanceSharingSet Cdecl Alias "ENT_getSkeletonInstanceSharingSet" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      ENT_refreshAvailableAnimationState Cdecl Alias "ENT_refreshAvailableAnimationState" (e As Zstring Ptr)
Declare Sub      ENT_updateAnimation Cdecl Alias "ENT_updateAnimation" (e As Zstring Ptr)
Declare Function ENT_isAnimated Cdecl Alias "ENT_isAnimated" (e As Zstring Ptr) As Integer
Declare Function ENT_isSkeletonAnimated Cdecl Alias "ENT_isSkeletonAnimated" (e As Zstring Ptr) As Integer
Declare Function ENT_getSkelAnimVertexData Cdecl Alias "ENT_getSkelAnimVertexData" (e As Zstring Ptr) As Integer Ptr
Declare Function ENT_getSoftwareVertexAnimVertexData Cdecl Alias "ENT_getSoftwareVertexAnimVertexData" (e As Zstring Ptr) As Integer Ptr
Declare Function ENT_getHardwareVertexAnimVertexData Cdecl Alias "ENT_getHardwareVertexAnimVertexData" (e As Zstring Ptr) As Integer Ptr
Declare Function ENT_getSkelAnimTempBufferInfo Cdecl Alias "ENT_getSkelAnimTempBufferInfo" (e As Zstring Ptr) As Zstring Ptr
Declare Function ENT_getVertexAnimTempBufferInfo Cdecl Alias "ENT_getVertexAnimTempBufferInfo" (e As Zstring Ptr) As Zstring Ptr
Declare Function ENT_getVertexDataForBinding Cdecl Alias "ENT_getVertexDataForBinding" (e As Zstring Ptr) As Zstring Ptr
Declare Function ENT_chooseVertexDataForBinding Cdecl Alias "ENT_chooseVertexDataForBinding" (hasVertexAnim As Byte, e As Zstring Ptr) As Integer
Declare Function ENT_getBuffersMarkedForAnimation Cdecl Alias "ENT_getBuffersMarkedForAnimation" (e As Zstring Ptr) As Integer
Declare Sub      ENT_markBuffersUsedForAnimation Cdecl Alias "ENT_markBuffersUsedForAnimation" (e As Zstring Ptr)
Declare Function ENT_isInitialised Cdecl Alias "ENT_isInitialised" (e As Zstring Ptr) As Integer
Declare Sub      ENT_initialise Cdecl Alias "ENT_initialise" (forceReinitialise As Byte, e As Zstring Ptr)
Declare Sub      ENT_deinitialise Cdecl Alias "ENT_deinitialise" (e As Zstring Ptr)
Declare Sub      ENT_backgroundLoadingComplete Cdecl Alias "ENT_backgroundLoadingComplete" (res As Zstring Ptr, e As Zstring Ptr)
Declare Sub      ENT_delete Cdecl Alias "ENT_delete" (e As Zstring Ptr)

' Billboard Set
Declare Function BILLBOARDSET_createBillboard Cdecl Alias "BILLBOARDSET_createBillboard" (position As Zstring Ptr, colour As Zstring Ptr, s As Zstring Ptr) As Zstring Ptr
Declare Sub      BILLBOARDSET_setMaterialName Cdecl Alias "BILLBOARDSET_setMaterialName" (name_ As Zstring Ptr, s As Zstring Ptr)
Declare Function BILLBOARDSET_getSortingEnabled Cdecl Alias "BILLBOARDSET_getSortingEnabled" (s As Zstring Ptr) As Byte
Declare Sub      BILLBOARDSET_setSortingEnabled Cdecl Alias "BILLBOARDSET_setSortingEnabled" (sortenabled As Byte, s As Zstring Ptr)

' Billboard
Declare Function BILLBOARD_getRotation Cdecl Alias "BILLBOARD_getRotation" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BILLBOARD_setRotation Cdecl Alias "BILLBOARD_setRotation" (rotation As Zstring Ptr, b As Zstring Ptr)
Declare Sub      BILLBOARD_setPosition Cdecl Alias "BILLBOARD_setPosition" (position As Zstring Ptr, b As Zstring Ptr)
Declare Sub      BILLBOARD_setDimensions Cdecl Alias "BILLBOARD_setDimensions" (width_ As Single, height As Single, b As Zstring Ptr)
Declare Sub      BILLBOARD_setColour Cdecl Alias "BILLBOARD_setColour" (colour As Zstring Ptr, b As Zstring Ptr)
Declare Function BILLBOARD_getColour Cdecl Alias "BILLBOARD_getColour" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BILLBOARD_setTexcoordRect Cdecl Alias "BILLBOARD_setTexcoordRect" ( u0 As Single , v0 As Single , u1 As Single , v1 As Single , b As Zstring Ptr )

' Billboard Chain
Declare Sub      BC_setMaxChainElements Cdecl Alias "BC_setMaxChainElements" (maxElements As Integer, bc As Zstring Ptr)
Declare Function BC_getMaxChainElements Cdecl Alias "BC_getMaxChainElements" (bc As Zstring Ptr) As Integer
Declare Sub      BC_setNumberOfChains Cdecl Alias "BC_setNumberOfChains" (numChains As Integer, bc As Zstring Ptr)
Declare Function BC_getNumberOfChains Cdecl Alias "BC_getNumberOfChains" (bc As Zstring Ptr) As Integer
Declare Sub      BC_setUseTextureCoords Cdecl Alias "BC_setUseTextureCoords" (use As Integer, bc As Zstring Ptr)
Declare Function BC_getUseTextureCoords Cdecl Alias "BC_getUseTextureCoords" (bc As Zstring Ptr) As Integer
Declare Sub      BC_setTextureCoordDirection Cdecl Alias "BC_setTextureCoordDirection" (dir As Integer, bc As Zstring Ptr)
Declare Function BC_getTextureCoordDirection Cdecl Alias "BC_getTextureCoordDirection" (bc As Zstring Ptr) As Integer
Declare Sub      BC_setOtherTextureCoordRange Cdecl Alias "BC_setOtherTextureCoordRange" (start As Single, EndRange As Single, bc As Zstring Ptr)
Declare Function BC_getOtherTextureCoordRange Cdecl Alias "BC_getOtherTextureCoordRange" (bc As Zstring Ptr) As Single Ptr
Declare Sub      BC_setUseVertexColours Cdecl Alias "BC_setUseVertexColours" (use As Byte, bc As Zstring Ptr)
Declare Function BC_getUseVertexColours Cdecl Alias "BC_getUseVertexColours" (bc As Zstring Ptr) As Integer
Declare Sub      BC_setDynamic Cdecl Alias "BC_setDynamic" (dyn As Byte, bc As Zstring Ptr)
Declare Function BC_getDynamic Cdecl Alias "BC_getDynamic" (bc As Zstring Ptr) As Integer
Declare Sub      BC_addChainElement Cdecl Alias "BC_addChainElement" (chainIndex As Integer, billboardChainElement As Zstring Ptr, bc As Zstring Ptr)
Declare Sub      BC_removeChainElement Cdecl Alias "BC_removeChainElement" (chainIndex As Integer, bc As Zstring Ptr)
Declare Sub      BC_updateChainElement Cdecl Alias "BC_updateChainElement" (chainIndex As Integer, elementIndex As Integer, billboardChainElement As Zstring Ptr, bc As Zstring Ptr)
Declare Function BC_getChainElement Cdecl Alias "BC_getChainElement" (chainIndex As Integer, elementIndex As Integer, bc As Zstring Ptr) As Zstring Ptr
Declare Sub      BC_clearChain Cdecl Alias "BC_clearChain" (chainIndex As Integer, bc As Zstring Ptr)
Declare Sub      BC_clearAllChains Cdecl Alias "BC_clearAllChains" (bc As Zstring Ptr)
Declare Function BC_getMaterialName Cdecl Alias "BC_getMaterialName" (bc As Zstring Ptr) As Zstring Ptr
Declare Sub      BC_setMaterialName Cdecl Alias "BC_setMaterialName" (name_ As Zstring Ptr, bc As Zstring Ptr)
Declare Sub      BC_setCustomParameter Cdecl Alias "BC_setCustomParameter" (index As Integer, value As Zstring Ptr, bc As Zstring Ptr)
Declare Function BC_getCustomParameter Cdecl Alias "BC_getCustomParameter" (index As Integer, bc As Zstring Ptr) As Integer Ptr
Declare Function BC_getLights Cdecl Alias "BC_getLights" (bc As Zstring Ptr) As Zstring Ptr
Declare Function BC_getNumWorldTransforms Cdecl Alias "BC_getNumWorldTransforms" (bc As Zstring Ptr) As Integer
Declare Function BC_getCastsShadows Cdecl Alias "BC_getCastsShadows" (bc As Zstring Ptr) As Integer

' Billboard Chain Element
Declare Function BCE_createEmpty Cdecl Alias "BCE_createEmpty" () As Zstring Ptr
Declare Function BCE_create Cdecl Alias "BCE_create" (Position As Zstring Ptr, width_ As Single, texCoord As Single, colour As Zstring Ptr) As Zstring Ptr
Declare Sub      BCE_delete Cdecl Alias "BCE_delete" (elem As Zstring Ptr)



' Ogre Viewport
Declare Function VP_create Cdecl Alias "VP_create" ( camera As Zstring Ptr , target As Zstring Ptr , Left As Single , top As Single , width_ As Single , height As Single , ZOrder As Integer ) As Zstring Ptr
Declare Sub      VP_destroy Cdecl Alias "VP_destroy" ( ogreViewport As Zstring Ptr )
Declare Sub      VP_update Cdecl Alias "VP_update" ( ogreViewport As Zstring Ptr )
Declare Function VP_getTarget Cdecl Alias "VP_getTarget" ( ogreViewport As Zstring Ptr ) As Zstring Ptr
Declare Function VP_getCamera Cdecl Alias "VP_getCamera" ( ogreViewport As Zstring Ptr ) As Zstring Ptr
Declare Sub      VP_setCamera Cdecl Alias "VP_setCamera" ( ogreCamera As Zstring Ptr , ogreViewport As Zstring Ptr )
Declare Function VP_getZOrder Cdecl Alias "VP_getZOrder" ( ogreViewport As Zstring Ptr ) As Integer
Declare Function VP_getLeft Cdecl Alias "VP_getLeft" ( ogreViewport As Zstring Ptr ) As Single
Declare Function VP_getTop Cdecl Alias "VP_getTop" ( ogreViewport As Zstring Ptr ) As Single
Declare Function VP_getWidth Cdecl Alias "VP_getWidth" ( ogreViewport As Zstring Ptr ) As Single
Declare Function VP_getHeight Cdecl Alias "VP_getHeight" ( ogreViewport As Zstring Ptr ) As Single
Declare Function VP_getActualLeft Cdecl Alias "VP_getActualLeft" ( ogreViewport As Zstring Ptr ) As Integer
Declare Function VP_getActualTop Cdecl Alias "VP_getActualTop" ( ogreViewport As Zstring Ptr ) As Integer
Declare Function VP_getActualWidth Cdecl Alias "VP_getActualWidth" ( ogreViewport As Zstring Ptr ) As Integer
Declare Function VP_getActualHeight Cdecl Alias "VP_getActualHeight" ( ogreViewport As Zstring Ptr ) As Integer
Declare Sub      VP_setDimensions Cdecl Alias "VP_setDimensions" ( offsetLeft As Single , offsetTop As Single , width_ As Single , height As Single , ogreViewport As Zstring Ptr )
Declare Sub      VP_setBackgroundColour Cdecl Alias "VP_setBackgroundColour" ( colour As Zstring Ptr , ogreViewPort As Zstring Ptr )
Declare Function VP_getBackgroundColour Cdecl Alias "VP_getBackgroundColour" (ogreViewport As Zstring Ptr) As Integer Ptr
Declare Sub      VP_setClearEveryFrame Cdecl Alias "VP_setClearEveryFrame" ( clear_ As Integer , buffers As Integer , ogreViewport As Zstring Ptr )
Declare Function VP_getClearEveryFrame Cdecl Alias "VP_getClearEveryFrame" ( ogreViewport As Zstring Ptr ) As Integer
Declare Function VP_getClearBuffers Cdecl Alias "VP_getClearBuffers" ( ogreViewport As Zstring Ptr ) As Integer
Declare Sub      VP_setMaterialScheme Cdecl Alias "VP_setMaterialScheme" ( schemename_ As Zstring Ptr , ogreViewport As Zstring Ptr )
Declare Function VP_getMaterialScheme Cdecl Alias "VP_getMaterialScheme" ( ogreViewport As Zstring Ptr ) As Zstring Ptr
Declare Sub      VP_getActualDimensions Cdecl Alias "VP_getActualDimensions" ( Left_ As Zstring Ptr , top As Zstring Ptr , width_ As Zstring Ptr , height As Zstring Ptr , ogreViewport As Zstring Ptr )
Declare Sub      VP_setOverlaysEnabled Cdecl Alias "VP_setOverlaysEnabled" ( enabled As Integer , ogreViewport As Zstring Ptr )
Declare Function VP_getOverlaysEnabled Cdecl Alias "VP_getOverlaysEnabled" ( ogreViewport As Zstring Ptr ) As Integer
Declare Sub      VP_setSkiesEnabled Cdecl Alias "VP_setSkiesEnabled" ( enabled As Integer , ogreViewport As Zstring Ptr )
Declare Function VP_getSkiesEnabled Cdecl Alias "VP_getSkiesEnabled" ( ogreViewport As Zstring Ptr ) As Integer
Declare Sub      VP_setShadowsEnabled Cdecl Alias "VP_setShadowsEnabled" ( enabled As Integer, ogreViewport As Zstring Ptr )
Declare Function VP_getShadowsEnabled Cdecl Alias "VP_getShadowsEnabled" (ogreViewport As Zstring Ptr) As Integer
Declare Sub      VP_setVisibilityMask Cdecl Alias "VP_setVisibilityMask" (mask As Integer, v As Zstring Ptr)
Declare Function VP_getVisibilityMask Cdecl Alias "VP_getVisibilityMask" (v As Zstring Ptr) As Integer
Declare Sub      VP_setRenderQueueInvocationSequenceName Cdecl Alias "VP_setRenderQueueInvocationSequenceName" (sequencename_ As Zstring Ptr, ogreViewport As Zstring Ptr)
Declare Function VP_getRenderQueueInvocationSequenceName Cdecl Alias "VP_getRenderQueueInvocationSequenceName" ( ogreViewport As Zstring Ptr ) As Zstring Ptr
Declare Function VP_getRenderQueueInvocationSequence Cdecl Alias "VP_getRenderQueueInvocationSequence" ( ogreViewport As Zstring Ptr ) As Zstring Ptr
Declare Sub      VP_updateDimensions Cdecl Alias "VP_updateDimensions" (ogreViewport As Zstring Ptr)
Declare Function VP_isUpdated Cdecl Alias "VP_isUpdated" ( ogreViewport As Zstring Ptr ) As Integer
Declare Sub      VP_clearUpdatedFlag Cdecl Alias "VP_clearUpdatedFlag" ( ogreViewport As Zstring Ptr )
Declare Function VP_getNumRenderedFaces Cdecl Alias "VP_getNumRenderedFaces" ( ogreViewport As Zstring Ptr ) As Integer
Declare Function VP_getNumRenderedBatches Cdecl Alias "VP_getNumRenderedBatches" ( ogreViewport As Zstring Ptr ) As Integer

' Shadow Caster
Declare Function SHADOWCASTER_getCastShadows Cdecl Alias "SHADOWCASTER_getCastShadows" ( ogreShadowCaster As Zstring Ptr ) As Integer
Declare Function SHADOWCASTER_getEdgeList Cdecl Alias "SHADOWCASTER_getEdgeList" (sc As Zstring Ptr) As Zstring Ptr
Declare Function SHADOWCASTER_hasEdgeList Cdecl Alias "SHADOWCASTER_hasEdgeList" ( ogreShadowCaster As Zstring Ptr ) As Integer
Declare Function SHADOWCASTER_getWorldBoundingBox Cdecl Alias "SHADOWCASTER_getWorldBoundingBox" ( derive As Integer , ogreShadowCaster As Zstring Ptr ) As Zstring Ptr
Declare Function SHADOWCASTER_getLightCapBounds Cdecl Alias "SHADOWCASTER_getLightCapBounds" ( ogreShadowCaster As Zstring Ptr ) As Zstring Ptr
Declare Function SHADOWCASTER_getDarkCapBounds Cdecl Alias "SHADOWCASTER_getDarkCapBounds" ( light As Zstring Ptr , dirLightExtrusionDist As Single , ogreShadowCaster As Zstring Ptr ) As Zstring Ptr
Declare Function SHADOWCASTER_getShadowVolumeRenderableIterator Cdecl Alias "SHADOWCASTER_getShadowVolumeRenderableIterator" (shadowTechnique As Integer, light As Zstring Ptr, indexBuffer As Zstring Ptr, extrudeVertices As Byte, extrusionDistance As Single, flags As Integer) As Zstring Ptr
Declare Sub      SHADOWCASTER_getPointExtrusionDistance Cdecl Alias "SHADOWCASTER_getPointExtrusionDistance" ( l As Zstring Ptr , ogreShadowCaster As Zstring Ptr )
Declare Sub      SHADOWCASTER_extrudeVertices  Cdecl Alias "SHADOWCASTER_extrudeVertices" (vertexbuffer As Zstring Ptr, originalVertexCount As Long, lightPos As Zstring Ptr, extrudeDist As Single) 

' Sphere
Declare Function SPHERE_create Cdecl Alias "SPHERE_create" () As Zstring Ptr
Declare Function SPHERE_createWithAttributes Cdecl Alias "SPHERE_createWithAttributes" ( center As Zstring Ptr , radius As Single ) As Zstring Ptr
Declare Sub      SPHERE_delete Cdecl Alias "SPHERE_delete" ( ogreSphere As Zstring Ptr )
Declare Function SPHERE_getRadius Cdecl Alias "SPHERE_getRadius" ( ogreSphere As Zstring Ptr ) As Single


' Angle
Declare Function ANGLE_create Cdecl Alias "ANGLE_create" ( angle As Single ) As Zstring Ptr
Declare Sub      ANGLE_delete Cdecl Alias "ANGLE_delete" (angle As Zstring Ptr)

' OgreImage
Declare Function OGREIMAGE_create Cdecl Alias "OGREIMAGE_create" () As Zstring Ptr
Declare Sub      OGREIMAGE_delete Cdecl Alias "OGREIMAGE_delete" (i As Zstring Ptr)
Declare Sub      OGREIMAGE_load Cdecl Alias "OGREIMAGE_load" (strFilename_ As Zstring Ptr, groupname_ As Zstring Ptr, i As Zstring Ptr)
Declare Function OGREIMAGE_getWidth Cdecl Alias "OGREIMAGE_getWidth" (i As Zstring Ptr) As Integer
Declare Function OGREIMAGE_getHeight Cdecl Alias "OGREIMAGE_getHeight" (i As Zstring Ptr) As Integer

' Root Resource Group Manager
Declare Sub      RGM_initialiseResourceGroup Cdecl Alias "RGM_initialiseResourceGroup" (name_ As Zstring Ptr)
Declare Sub      RGM_initialiseAllResourceGroups Cdecl Alias "RGM_initialiseAllResourceGroups" ()
Declare Sub      RGM_clearResourceGroup Cdecl Alias "RGM_clearResourceGroup" (name_ As Zstring Ptr)
Declare Sub      RGM_destroyResourceGroup Cdecl Alias "RGM_destroyResourceGroup" (name_ As Zstring Ptr)
Declare Sub      RGM_addResourceLocation Cdecl Alias "RGM_addResourceLocation" (name_ As Zstring Ptr, locType As Zstring Ptr, resGroup As Zstring Ptr, recursive As Byte)
Declare Sub      RGM_removeResourceLocation Cdecl Alias "RGM_removeResourceLocation" ( name_ As Zstring Ptr , resGroup As Zstring Ptr )
Declare Function RGM_resourceExists Cdecl Alias "RGM_resourceExists" (group As Zstring Ptr, filename_ As Zstring Ptr) As Byte

' Render Target
Declare Sub      RT_delete Cdecl Alias "RT_delete" ( ogreRenderTarget As Zstring Ptr )
Declare Function RT_getName Cdecl Alias "RT_getName" ( ogreRenderTarget As Zstring Ptr ) As Zstring Ptr
Declare Sub      RT_getMetrics Cdecl Alias "RT_getMetrics" ( width_ As Zstring Ptr , height As Zstring Ptr , colourDepth As Zstring Ptr , ogreRenderTarget As Zstring Ptr )
Declare Function RT_getWidth Cdecl Alias "RT_getWidth" ( ogreRenderTarget As Zstring Ptr ) As Integer
Declare Function RT_getHeight Cdecl Alias "RT_getHeight" ( ogreRenderTarget As Zstring Ptr ) As Integer
Declare Function RT_getColourDepth Cdecl Alias "RT_getColourDepth" ( ogreRenderTarget As Zstring Ptr ) As Integer
Declare Sub      RT_update Cdecl Alias "RT_update" ( ogreRenderTarget As Zstring Ptr )
Declare Function RT_addViewport Cdecl Alias "RT_addViewport" ( ogreCamera As Zstring Ptr ,  ZOrder As Integer , offsetLeft As Single , offsetTop As Single , portwidth_ As Single , portHeight As Single, ogreRenderTarget As Zstring Ptr ) As Zstring Ptr
Declare Function RT_getViewport Cdecl Alias "RT_getViewport" ( index As Integer , r As Zstring Ptr ) As Zstring Ptr
Declare Sub      RT_getCustomAttribute Cdecl Alias "RT_getCustomAttribute" ( name_ As Zstring Ptr , pData As Zstring Ptr , ogreRenderTarget As Zstring Ptr )
Declare Function RT_writeContentsToTimestampedFile Cdecl Alias "RT_writeContentsToTimestampedFile" ( Filename_ As Zstring Ptr , FileExtension As Zstring Ptr , ogreRenderTarget As Zstring Ptr ) As Zstring Ptr
Declare Sub      RT_writeContentsToFile Cdecl Alias "RT_writeContentsToFile" ( filename_ As Zstring Ptr , ogreRenderTarget As Zstring Ptr )
Declare Function RT_getTriangleCount Cdecl Alias "RT_getTriangleCount" (rt As Zstring Ptr) As Integer
Declare Function RT_getLastFPS Cdecl Alias "RT_getLastFPS" (rt As Zstring Ptr) As Single
Declare Function RT_getAverageFPS Cdecl Alias "RT_getAverageFPS" (rt As Zstring Ptr) As Single
Declare Function RT_getPixelColour Cdecl Alias "RT_getPixelColour" (x As Integer, y As Integer, t As Zstring Ptr) As Zstring Ptr


' Render Window
Declare Sub      RW_swapBuffers Cdecl Alias "RW_swapBuffers" (waitForVSynch As Byte, rw As Zstring Ptr)


' String Interface
Declare Sub      STRINT_delete Cdecl Alias "STRINT_delete" ( ogreStringInterface As Zstring Ptr )
Declare Function STRINT_getParamDictionary Cdecl Alias "STRINT_getParamDictionary" ( ogreStringInterface As Zstring Ptr ) As Zstring Ptr
Declare Function STRINT_getParameters Cdecl Alias "STRINT_getParameters" ( ogreStringInterface As Zstring Ptr ) As Zstring Ptr
Declare Function STRINT_setParameter Cdecl Alias "STRINT_setParameter" ( name_ As Zstring Ptr , value As Zstring Ptr , ogreStringInterface As Zstring Ptr ) As Integer
Declare Sub      STRINT_setParameterList Cdecl Alias "STRINT_setParameterList" ( paramList As Zstring Ptr , ogreStringInterface As Zstring Ptr )
Declare Function STRINT_getParameter Cdecl Alias "STRINT_getParameter" (name_ As Zstring Ptr, ogreStringInterface As Zstring Ptr) As Zstring Ptr
Declare Sub      STRINT_copyParametersTo Cdecl Alias "STRINT_copyParametersTo" ( dest As Zstring Ptr , ogreStringInterface As Zstring Ptr )
Declare Sub      STRINT_cleanupDictionary Cdecl Alias "STRINT_cleanupDictionary" ()

' Script Loader
Declare Sub      SL_destroy Cdecl Alias "SL_destroy" ( sl As Zstring Ptr )
Declare Function SL_getScriptPatterns Cdecl Alias "SL_getScriptPatterns" ( sl As Zstring Ptr ) As Zstring Ptr
Declare Sub      SL_parseScript Cdecl Alias "SL_parseScript" ( stream As Zstring Ptr , groupname_ As Zstring Ptr , sl As Zstring Ptr )
Declare Function SL_getLoadingOrder Cdecl Alias "SL_getLoadingOrder" ( sl As Zstring Ptr ) As Single

' Resource
Declare Sub      RESOURCE_load Cdecl Alias "RESOURCE_load" ( backgroundThread As Integer , ogreResource As Zstring Ptr )
Declare Sub      RESOURCE_reload Cdecl Alias "RESOURCE_reload" ( ogreResource As Zstring Ptr )
Declare Function RESOURCE_isReloadable Cdecl Alias "RESOURCE_isReloadable" (ogreResource As Zstring Ptr) As Integer
Declare Function RESOURCE_isManuallyLoaded Cdecl Alias "RESOURCE_isManuallyLoaded" ( ogreResource As Zstring Ptr ) As Integer
Declare Sub      RESOURCE_unload Cdecl Alias "RESOURCE_unload" ( ogreResource As Zstring Ptr )
Declare Function RESOURCE_getSize Cdecl Alias "RESOURCE_getSize" ( ogreResource As Zstring Ptr ) As Integer
Declare Sub      RESOURCE_touch Cdecl Alias "RESOURCE_touch" ( ogreResource As Zstring Ptr )
Declare Function RESOURCE_getName Cdecl Alias "RESOURCE_getName" ( ogreResource As Zstring Ptr ) As Zstring Ptr
Declare Function RESOURCE_getHandle Cdecl Alias "RESOURCE_getHandle" ( ogreResource As Zstring Ptr ) As Long
Declare Function RESOURCE_isLoaded Cdecl Alias "RESOURCE_isLoaded" ( ogreResource As Zstring Ptr ) As Integer
Declare Function RESOURCE_isLoading Cdecl Alias "RESOURCE_isLoading" ( ogreResource As Zstring Ptr ) As Integer
Declare Function RESOURCE_getLoadingState Cdecl Alias "RESOURCE_getLoadingState" ( ogreResource As Zstring Ptr ) As Integer
Declare Function RESOURCE_isBackgroundLoaded Cdecl Alias "RESOURCE_isBackgroundLoaded" ( ogreResource As Zstring Ptr ) As Integer
Declare Sub      RESOURCE_setBackgroundLoaded Cdecl Alias "RESOURCE_setBackgroundLoaded" ( bl As Integer , ogreResource As Zstring Ptr )
Declare Sub      RESOURCE_escalateLoading Cdecl Alias "RESOURCE_escalateLoading" ( ogreResource As Zstring Ptr )
Declare Sub      RESOURCE_addListener Cdecl Alias "RESOURCE_addListener" ( lis As Zstring Ptr , ogreResource As Zstring Ptr )
Declare Sub      RESOURCE_removeListener Cdecl Alias "RESOURCE_removeListener" ( lis As Zstring Ptr , ogreResource As Zstring Ptr )
Declare Function RESOURCE_getGroup Cdecl Alias "RESOURCE_getGroup" ( ogreResource As Zstring Ptr ) As Zstring Ptr
Declare Sub      RESOURCE_changeGroupOwnership Cdecl Alias "RESOURCE_changeGroupOwnership" (newGroup As Zstring Ptr, ogreResource As Zstring Ptr)
Declare Function RESOURCE_getCreator Cdecl Alias "RESOURCE_getCreator" ( ogreResource As Zstring Ptr ) As Zstring Ptr
Declare Function RESOURCE_getOrigin Cdecl Alias "RESOURCE_getOrigin" ( ogreResource As Zstring Ptr ) As Zstring Ptr
Declare Sub      RESOURCE_notifyOrigin Cdecl Alias "RESOURCE_notifyOrigin" (origin As Zstring Ptr, ogreResource As Zstring Ptr)


' Render System List
Declare Function RSL_create Cdecl Alias "RSL_create" () As Zstring Ptr
Declare Sub      RSL_delete Cdecl Alias "RSL_delete" ( rsl As Zstring Ptr )
Declare Function RSL_begin Cdecl Alias "RSL_begin" (rsl As Zstring Ptr) As Zstring Ptr
Declare Function RSL_end Cdecl Alias "RSL_end" (rsl As Zstring Ptr) As Zstring Ptr
Declare Function RSL_size Cdecl Alias "RSL_size" (rsl As Zstring Ptr) As Integer

' Render System List Iterator
Declare Function RSLI_getRenderSystem Cdecl Alias "RSLI_getRenderSystem" (rsli As Zstring Ptr) As Zstring Ptr
Declare Sub      RSLI_eq Cdecl Alias "RSLI_eq" (a As Zstring Ptr, i As Zstring Ptr)
Declare Function RSLI_isEqualTo Cdecl Alias "RSLI_isEqualTo" (a As Zstring Ptr, i As Zstring Ptr) As Byte
Declare Function RSLI_isNotEqualTo Cdecl Alias "RSLI_isNotEqualTo" (a As Zstring Ptr, i As Zstring Ptr) As Byte
Declare Sub      RSLI_moveForward Cdecl Alias "RSLI_moveForward" (i As Zstring Ptr)

' Name Value Pair List
Declare Function NVPL_create Cdecl Alias "NVPL_create" () As Zstring Ptr
Declare Sub      NVPL_delete Cdecl Alias "NVPL_delete" ( nvpl As Zstring Ptr )
Declare Sub      NVPL_insert Cdecl Alias "NVPL_insert" (key As Zstring Ptr, value As Zstring Ptr, nvpl As Zstring Ptr)
Declare Function NVPL_begin Cdecl Alias "NVPL_begin" (l As Zstring Ptr) As Zstring Ptr
Declare Function NVPL_end Cdecl Alias "NVPL_end" (l As Zstring Ptr) As Zstring Ptr

' Name Value Pair List Iterator
Declare Function NVPLI_create Cdecl Alias "NVPLI_create" () As Zstring Ptr
Declare Sub      NVPLI_delete Cdecl Alias "NVPLI_delete" (i As Zstring Ptr)
Declare Sub      NVPLI_eq Cdecl Alias "NVPLI_eq" (rkIterator As Zstring Ptr, i As Zstring Ptr)
Declare Function NVPLI_isNotEqualTo Cdecl Alias "NVPLI_isNotEqualTo" (rkIterator As Zstring Ptr, i As Zstring Ptr) As Byte
Declare Function NVPLI_isEqualTo Cdecl Alias "NVPLI_isEqualTo" (rkIterator As Zstring Ptr, i As Zstring Ptr) As Byte
Declare Sub      NVPLI_increment Cdecl Alias "NVPLI_increment" (i As Zstring Ptr)
Declare Sub      NVPLI_decrement Cdecl Alias "NVPLI_decrement" (i As Zstring Ptr)
Declare Function NVPLI_first Cdecl Alias "NVPLI_first" (i As Zstring Ptr) As Zstring Ptr
Declare Function NVPLI_second Cdecl Alias "NVPLI_second" (i As Zstring Ptr) As Zstring Ptr

' Vertex List
Declare Function VERTEXLIST_create Cdecl Alias "VERTEXLIST_create" () As Zstring Ptr
Declare Sub      VERTEXLIST_delete Cdecl Alias "VERTEXLIST_delete" (l As Zstring Ptr)
Declare Sub      VERTEXLIST_push_back Cdecl Alias "VERTEXLIST_push_back" (vector As Zstring Ptr, l As Zstring Ptr)
Declare Function VERTEXLIST_getValue Cdecl Alias "VERTEXLIST_getValue" (index As Integer, l As Zstring Ptr) As Zstring Ptr
Declare Function VERTEXLIST_size Cdecl Alias "VERTEXLIST_size" (l As Zstring Ptr) As Integer

' Index List
Declare Function INDEXLIST_create Cdecl Alias "INDEXLIST_create" () As Zstring Ptr
Declare Sub      INDEXLIST_delete Cdecl Alias "INDEXLIST_delete" (l As Zstring Ptr)
Declare Function INDEXLIST_size Cdecl Alias "INDEXLIST_size" (l As Zstring Ptr) As Integer
Declare Sub      INDEXLIST_reserve Cdecl Alias "INDEXLIST_reserve" (size As Integer, l As Zstring Ptr)
Declare Sub      INDEXLIST_push_back Cdecl Alias "INDEXLIST_push_back" (value As Integer, l As Zstring Ptr)
Declare Sub      INDEXLIST_addTriangle Cdecl Alias "INDEXLIST_addTriangle" (t1 As Integer, t2 As Integer, t3 As Integer, l As Zstring Ptr)
Declare Function INDEXLIST_getValue Cdecl Alias "INDEXLIST_getValue" (index As Integer, l As Zstring Ptr) As Integer


' Vertex Element
Declare Sub      VERTEXELEMENT_delete Cdecl Alias "VERTEXELEMENT_delete" (e As Zstring Ptr)
Declare Function VERTEXELEMENT_getTypeSize Cdecl Alias "VERTEXELEMENT_getTypeSize" (etype As Integer) As Integer

' Float List
Declare Function FLOATLIST_create Cdecl Alias "FLOATLIST_create" () As Zstring Ptr
Declare Sub      FLOATLIST_delete Cdecl Alias "FLOATLIST_delete" (l As Zstring Ptr)
Declare Function FLOATLIST_size Cdecl Alias "FLOATLIST_size" (l As Zstring Ptr) As Integer
Declare Sub      FLOATLIST_reserve Cdecl Alias "FLOATLIST_reserve" (size As Integer, l As Zstring Ptr)
Declare Sub      FLOATLIST_push_back Cdecl Alias "FLOATLIST_push_back" (value As Single, l As Zstring Ptr)
Declare Sub      FLOATLIST_add3DPoint Cdecl Alias "FLOATLIST_add3DPoint" (p1 As Single, p2 As Single, p3 As Single, l As Zstring Ptr)
Declare Sub      FLOATLIST_add2DPoint Cdecl Alias "FLOATLIST_add2DPoint" (p1 As Single, p2 As Single, l As Zstring Ptr)
Declare Sub      FLOATLIST_clear Cdecl Alias "FLOATLIST_clear" (l As Zstring Ptr)
Declare Function FLOATLIST_getValue Cdecl Alias "FLOATLIST_getValue" (index As Integer, l As Zstring Ptr) As Single

' Line Manager
Declare Function LINEMANAGER_create Cdecl Alias "LINEMANAGER_create" (s As Zstring Ptr) As Zstring Ptr
Declare Sub      LINEMANAGER_delete Cdecl Alias "LINEMANAGER_delete" (m As Zstring Ptr)
Declare Sub      LINEMANAGER_Set2DMaterialName Cdecl Alias "LINEMANAGER_Set2DMaterialName" (name_ As Zstring Ptr, m As Zstring Ptr)
Declare Sub      LINEMANAGER_Draw2DLine Cdecl Alias "LINEMANAGER_Draw2DLine" (x1 As Single, y1 As Single, x2 As Single, y2 As Single, m As Zstring Ptr)
Declare Sub      LINEMANAGER_Clear2DLines Cdecl Alias "LINEMANAGER_Clear2DLines" (m As Zstring Ptr)
Declare Sub      LINEMANAGER_Set3DMaterialName Cdecl Alias "LINEMANAGER_Set3DMaterialName" (name_ As Zstring Ptr, m As Zstring Ptr)
Declare Sub      LINEMANAGER_Draw3DLine Cdecl Alias "LINEMANAGER_Draw3DLine" (x1 As Single, y1 As Single, z1 As Single, x2 As Single, y2 As Single, z2 As Single, m As Zstring Ptr)
Declare Sub      LINEMANAGER_Clear3DLines Cdecl Alias "LINEMANAGER_Clear3DLines" (m As Zstring Ptr)

' Log Manager
Declare Function LM_create Cdecl Alias "LM_create" () As Zstring Ptr
Declare Function LM_createLog Cdecl Alias "LM_createLog" (name_ As Zstring Ptr, defaultLog As Byte, debuggerOutput As Byte, suppressFileOutput As Byte) As Zstring Ptr
Declare Sub      LM_logMessage Cdecl Alias "LM_logMessage" ( loggingMessageLevel As Integer , message As Zstring Ptr , debug As Integer )
Declare Sub      LM_setLogDetail Cdecl Alias "LM_setLogDetail" (loggingLevel As Integer)
Declare Function LM_getDefaultLog Cdecl Alias "LM_getDefaultLog" () As Zstring Ptr

' Ogre Log
Declare Sub      OGRELOG_setDebugOutputEnabled Cdecl Alias "OGRELOG_setDebugOutputEnabled" (debugOutput As Byte, l As Zstring Ptr)

' Mesh Manager
Declare Sub      MM_createPlane Cdecl Alias "MM_createPlane" ( name_ As Zstring Ptr , groupname_ As Zstring Ptr , width_ As Single , height As Single , xSegments As Integer , ySegments As Integer )
Declare Function MM_load Cdecl Alias "MM_load" (filename_ As Zstring Ptr, groupname_ As Zstring Ptr, vertexBufferUsage As Integer, indexBufferUsage As Integer, vertexBufferShadowed As Byte, indexBufferShadowed As Byte) As Zstring Ptr
Declare Function MM_createManual Cdecl Alias "MM_createManual" (name_ As Zstring Ptr, groupname_ As Zstring Ptr, loader As Zstring Ptr) As Zstring Ptr
Declare Function MM_getByName Cdecl Alias "MM_getByName" (name_ As Zstring Ptr) As Zstring Ptr
Declare Function MM_resourceExists Cdecl Alias "MM_resourceExists" (name_ As Zstring Ptr) As Byte

' Skeleton Manager
Declare Function SKELETONMANAGER_create Cdecl Alias "SKELETONMANAGER_create" (name_ As Zstring Ptr, group As Zstring Ptr, isManual As Byte, loader As Zstring Ptr, createParams As Zstring Ptr) As Zstring Ptr
Declare Sub      SKELETONMANAGER_remove Cdecl Alias "SKELETONMANAGER_remove" (name_ As Zstring Ptr)

' Compositor Manager
Declare Function COMPMANAGER_addCompositor Cdecl Alias "COMPMANAGER_addCompositor" (vp As Zstring Ptr, compositor As Zstring Ptr, addPosition As Integer) As Zstring Ptr
Declare Sub      COMPMANAGER_setCompositorEnabled Cdecl Alias "COMPMANAGER_setCompositorEnabled" (vp As Zstring Ptr, compositor As Zstring Ptr, value As Byte)
Declare Sub      COMPMANAGER_removeCompositor Cdecl Alias "COMPMANAGER_removeCompositor" (vp As Zstring Ptr, compositor As Zstring Ptr)
Declare Sub      COMPMANAGER_removeAll Cdecl Alias "COMPMANAGER_removeAll" ()

' Material Manager
Declare Function MATERIALMANAGER_create Cdecl Alias "MATERIALMANAGER_create" (name_ As Zstring Ptr, group As Zstring Ptr, isManual As Integer, loader As Zstring Ptr, createParams As Zstring Ptr) As Zstring Ptr
Declare Function MATERIALMANAGER_getByName Cdecl Alias "MATERIALMANAGER_getByName" (name_ As ZString Ptr) As ZString Ptr

' Texture
Declare Function TEXTURE_getBuffer Cdecl Alias "TEXTURE_getBuffer" (face As Integer, mipmap As Integer, t As Zstring Ptr) As Zstring Ptr

' Texture Manager
Declare Function TEXTUREMANAGER_loadImage Cdecl Alias "TEXTUREMANAGER_loadImage" (name_ As Zstring Ptr, group As Zstring Ptr, img As Zstring Ptr, texType As Integer, iNumMipMaps As Integer, gamma As Single, isalpha_ As Byte, desiredFormat As Integer, hwGammaCorrection As Byte) As Zstring Ptr
Declare Function TEXTUREMANAGER_createManual Cdecl Alias "TEXTUREMANAGER_createManual" (name_ As Zstring Ptr, group As Zstring Ptr,texType As Integer,width_ As Integer,height As Integer,num_mips As Integer,format_ As Integer,usage As Integer,loader As ZString Ptr)  As Zstring Ptr

' Hardware Pixel Buffer
Declare Function HPB_getRenderTarget Cdecl Alias "HPB_getRenderTarget" ( slice As Integer , h As Zstring Ptr ) As Zstring Ptr

' Hardware Buffer Manager
Declare Function HBM_createVertexBuffer Cdecl Alias "HBM_createVertexBuffer" (vertSize As Integer, numVerts As Integer, usage As Integer, useShadowBuffer As Byte) As Zstring Ptr
Declare Function HBM_createIndexBuffer Cdecl Alias "HBM_createIndexBuffer" (iType As Integer, numIndexes As Integer, usage As Integer, useShadoBuffer As Byte) As Zstring Ptr

' Ogre Texture Pointer
Declare Sub      TEXTUREPTR_delete Cdecl Alias "TEXTUREPTR_delete" ( ogreTexturePtr As Zstring Ptr )

' Material
Declare Sub      MATERIAL_delete Cdecl Alias "MATERIAL_delete" ( ogreMaterial As Zstring Ptr )
Declare Sub      MATERIAL_eq Cdecl Alias "MATERIAL_eq" (a As Zstring Ptr, b As Zstring Ptr)
Declare Sub      MATERIAL_setDepthCheckEnabled Cdecl Alias "MATERIAL_setDepthCheckEnabled" (enabled As Byte, m As ZString Ptr)
Declare Sub      MATERIAL_setDepthWriteEnabled Cdecl Alias "MATERIAL_setDepthWriteEnabled" (enabled As Byte, m As ZString Ptr)
Declare Sub      MATERIAL_setDepthFunction     Cdecl Alias "MATERIAL_setDepthFunction"     (func As Integer, m As ZString Ptr)
Declare Function MATERIAL_createTechnique Cdecl Alias "MATERIAL_createTechnique" ( creator As Zstring Ptr , name_ As Zstring Ptr , ResourceHandle As Long , group As Zstring Ptr , isManual As Integer , loader As Zstring Ptr ) As Zstring Ptr
Declare Function MATERIAL_getTechniqueWithIndex Cdecl Alias "MATERIAL_getTechniqueWithIndex" (index As Integer, m As Zstring Ptr) As Zstring Ptr
Declare Function MATERIAL_clone Cdecl Alias "MATERIAL_clone" (newName As Zstring Ptr, changeGroup As Byte, newGroup As ZString Ptr, m As ZString Ptr) As Zstring Ptr
Declare Function MATERIAL_getName Cdecl Alias "MATERIAL_getName" ( name_ As Zstring Ptr) As Zstring Ptr

' SubEntity
Declare Function SUBENTITY_getMaterialName Cdecl Alias "SUBENTITY_getMaterialName" (s As ZString Ptr) As ZString Ptr
Declare Function SUBENTITY_getMaterial Cdecl Alias "SUBENTITY_getMaterial" (s As ZString Ptr) As ZString Ptr
Declare Sub      SUBENTITY_setMaterialName Cdecl Alias "SUBENTITY_setMaterialName" (name_ As ZString Ptr, s As ZString Ptr)

' Mesh
Declare Sub      MESH_delete Cdecl Alias "MESH_delete" (m As Zstring Ptr)
Declare Function MESH_createSubMesh Cdecl Alias "MESH_createSubMesh" (m As Zstring Ptr) As Integer Ptr
Declare Function MESH_createSubMeshWithName Cdecl Alias "MESH_createSubMeshWithName" (name_ As Zstring Ptr, m As Zstring Ptr) As Integer Ptr
Declare Sub      MESH_nameSubMesh Cdecl Alias "MESH_nameSubMesh" (name_ As Zstring Ptr, index As Integer, m As Zstring Ptr)
Declare Function MESH_getSubMeshIndex Cdecl Alias "MESH_getSubMeshIndex" (name_ As Zstring Ptr, m As Zstring Ptr) As Integer
Declare Function MESH_getNumSubMeshes Cdecl Alias "MESH_getNumSubMeshes" (m As Zstring Ptr) As Integer
Declare Function MESH_getSubMeshWithIndex Cdecl Alias "MESH_getSubMeshWithIndex" (index As Integer, m As Zstring Ptr) As Integer Ptr
Declare Function MESH_getSubMesh Cdecl Alias "MESH_getSubMesh" (name_ As Zstring Ptr, m As Zstring Ptr) As Integer Ptr
Declare Function MESH_getSubMeshIterator Cdecl Alias "MESH_getSubMeshIterator" (m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_clone Cdecl Alias "MESH_clone" (newname_ As Zstring Ptr, newGroup As Zstring Ptr, m As Zstring Ptr) As Integer Ptr
Declare Function MESH_getBounds Cdecl Alias "MESH_getBounds" (m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_getBoundingSphereRadius Cdecl Alias "MESH_getBoundingSphereRadius" (m As Zstring Ptr) As Single
Declare Sub      MESH_setBounds Cdecl Alias "MESH_setBounds" (bounds As Zstring Ptr, pad As Byte, m As Zstring Ptr)
Declare Sub      MESH_setBoundingSphereRadius Cdecl Alias "MESH_setBoundingSphereRadius" (radius As Single, m As Zstring Ptr)
Declare Sub      MESH_setSkeletonName Cdecl Alias "MESH_setSkeletonName" (skelname_ As Zstring Ptr, m As Zstring Ptr)
Declare Function MESH_hasSkeleton Cdecl Alias "MESH_hasSkeleton" (m As Zstring Ptr) As Integer
Declare Function MESH_hasVertexAnimation Cdecl Alias "MESH_hasVertexAnimation" (m As Zstring Ptr) As Integer
Declare Function MESH_getSkeleton Cdecl Alias "MESH_getSkeleton" (m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_getSkeletonName Cdecl Alias "MESH_getSkeletonName" (m As Zstring Ptr) As Zstring Ptr
Declare Sub      MESH_initAnimationState Cdecl Alias "MESH_initAnimationState" (animSet As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_refreshAnimationState Cdecl Alias "MESH_refreshAnimationState" (animSet As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_addBoneAssignment Cdecl Alias "MESH_addBoneAssignment" (vertBoneAssign As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_clearBoneAssignments Cdecl Alias "MESH_clearBoneAssignments" (m As Zstring Ptr)
Declare Sub      MESH_notifySkeleton Cdecl Alias "MESH_notifySkeleton" (pSkel As Zstring Ptr, m As Zstring Ptr)
Declare Function MESH_getBoneAssignmentIterator Cdecl Alias "MESH_getBoneAssignmentIterator" (m As Zstring Ptr) As Zstring Ptr
' anulada --> Declare Sub      MESH_generateLodLevels Cdecl Alias "MESH_generateLodLevels" (lodDistances As Zstring Ptr, reductionFunction As Integer, reductionValue As Single, m As Zstring Ptr)
Declare Function MESH_getNumLodLevels Cdecl Alias "MESH_getNumLodLevels" (m As Zstring Ptr) As Integer
Declare Function MESH_getLodLevel Cdecl Alias "MESH_getLodLevel" (index As Integer, m As Zstring Ptr) As Zstring Ptr
Declare Sub      MESH_createManualLodLevel Cdecl Alias "MESH_createManualLodLevel" (fromDepth As Single, meshname_ As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_updateManualLodLevel Cdecl Alias "MESH_updateManualLodLevel" (index As Integer, meshname_ As Zstring Ptr, m As Zstring Ptr)
Declare Function MESH_getLodIndex Cdecl Alias "MESH_getLodIndex" (depth As Single, m As Zstring Ptr) As Integer
' anulada --> Declare Function MESH_getLodIndexSquaredDepth Cdecl Alias "MESH_getLodIndexSquaredDepth" (depth As Single, m As Zstring Ptr) As Integer
Declare Function MESH_isLodManual Cdecl Alias "MESH_isLodManual" (m As Zstring Ptr) As Integer
Declare Sub      MESH_setLodInfo Cdecl Alias "MESH_setLodInfo" (numLevels As Integer, isManual As Byte, m As Zstring Ptr)
Declare Sub      MESH_setLodUsage Cdecl Alias "MESH_setLodUsage" (level As Integer, usage As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_setSubMeshLodFaceList Cdecl Alias "MESH_setSubMeshLodFaceList" (subIdx As Integer, level As Integer, facedata As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_removeLodLevels Cdecl Alias "MESH_removeLodLevels" (m As Zstring Ptr)
Declare Sub      MESH_setVertexBufferPolicy Cdecl Alias "MESH_setVertexBufferPolicy" (usage As Integer, shadowBuffer As Byte, m As Zstring Ptr)
Declare Sub      MESH_setIndexBufferPolicy Cdecl Alias "MESH_setIndexBufferPolicy" (usage As Integer, shadowBuffer As Byte, m As Zstring Ptr)
Declare Function MESH_getVertexBufferUsage Cdecl Alias "MESH_getVertexBufferUsage" (m As Zstring Ptr) As Integer
Declare Function MESH_getIndexBufferUsage Cdecl Alias "MESH_getIndexBufferUsage" (m As Zstring Ptr) As Integer
Declare Function MESH_isVertexBufferShadowed Cdecl Alias "MESH_isVertexBufferShadowed" (m As Zstring Ptr) As Integer
Declare Function MESH_isIndexBufferShadowed Cdecl Alias "MESH_isIndexBufferShadowed" (m As Zstring Ptr) As Integer
Declare Function MESH_rationaliseBoneAssignments Cdecl Alias "MESH_rationaliseBoneAssignments" (vertexCount As Integer, assignments As Zstring Ptr, m As Zstring Ptr) As Integer
Declare Sub      MESH_compileBoneAssignments Cdecl Alias "MESH_compileBoneAssignments" (m As Zstring Ptr)
Declare Sub      MESH_updateCompiledBoneAssignments Cdecl Alias "MESH_updateCompiledBoneAssignments" (m As Zstring Ptr)
Declare Sub      MESH_buildTangentVectors Cdecl Alias "MESH_buildTangentVectors" (targetSemantic As Integer, sourceTexCoordSet As Integer, index As Integer, splitMirrored As Byte , splitRotated As Byte , storeParityInW As Byte , m As Zstring Ptr)
Declare Function MESH_suggestTangentVectorBuildParams Cdecl Alias "MESH_suggestTangentVectorBuildParams" (targetSemantic As Integer, outSourceCoordSet As Integer Ptr, outIndex As Integer Ptr, m As Zstring Ptr) As Integer
Declare Sub      MESH_buildEdgeList Cdecl Alias "MESH_buildEdgeList" (m As Zstring Ptr)
Declare Sub      MESH_freeEdgeList Cdecl Alias "MESH_freeEdgeList" (m As Zstring Ptr)
Declare Sub      MESH_prepareForShadowVolume Cdecl Alias "MESH_prepareForShadowVolume" (m As Zstring Ptr)
Declare Function MESH_getEdgeList Cdecl Alias "MESH_getEdgeList" (lodIndex As Integer, m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_isPreparedForShadowVolumes Cdecl Alias "MESH_isPreparedForShadowVolumes" (m As Zstring Ptr) As Integer
Declare Function MESH_isEdgeListBuilt Cdecl Alias "MESH_isEdgeListBuilt" (m As Zstring Ptr) As Integer
Declare Function MESH_getSubMeshNameMap Cdecl Alias "MESH_getSubMeshNameMap" (m As Zstring Ptr) As Zstring Ptr
Declare Sub      MESH_setAutoBuildEdgeLists Cdecl Alias "MESH_setAutoBuildEdgeLists" (autobuild As Byte, m As Zstring Ptr)
Declare Function MESH_getAutoBuildEdgeLists Cdecl Alias "MESH_getAutoBuildEdgeLists" (m As Zstring Ptr) As Integer
Declare Function MESH_getSharedVertexDataAnimationType Cdecl Alias "MESH_getSharedVertexDataAnimationType" (m As Zstring Ptr) As Integer
Declare Function MESH_createAnimation Cdecl Alias "MESH_createAnimation" (name_ As Zstring Ptr, length As Single, m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_getAnimation Cdecl Alias "MESH_getAnimation" (name_ As Zstring Ptr, m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_getAnimationImpl Cdecl Alias "MESH_getAnimationImpl" (name_ As Zstring Ptr, m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_hasAnimation Cdecl Alias "MESH_hasAnimation" (name_ As Zstring Ptr, m As Zstring Ptr) As Integer
Declare Sub      MESH_removeAnimation Cdecl Alias "MESH_removeAnimation" (name_ As Zstring Ptr, m As Zstring Ptr)
Declare Function MESH_getNumAnimations Cdecl Alias "MESH_getNumAnimations" (m As Zstring Ptr) As Integer
Declare Function MESH_getAnimationWithIndex Cdecl Alias "MESH_getAnimationWithIndex" (index As Integer, m As Zstring Ptr) As Zstring Ptr
Declare Sub      MESH_removeAllAnimations Cdecl Alias "MESH_removeAllAnimations" (m As Zstring Ptr)
Declare Function MESH_getVertexDataByTrackHandle Cdecl Alias "MESH_getVertexDataByTrackHandle" (handle As Integer, m As Zstring Ptr) As Integer Ptr
Declare Sub      MESH_updateMaterialForAllSubMeshes Cdecl Alias "MESH_updateMaterialForAllSubMeshes" (m As Zstring Ptr)
Declare Sub      MESH_determineAnimationTypes Cdecl Alias "MESH_determineAnimationTypes" (m As Zstring Ptr)
Declare Function MESH_getAnimationTypesDirty Cdecl Alias "MESH_getAnimationTypesDirty" (m As Zstring Ptr) As Integer
Declare Function MESH_createPose Cdecl Alias "MESH_createPose" (target As Integer, name_ As Zstring Ptr, m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_getPoseCount Cdecl Alias "MESH_getPoseCount" (m As Zstring Ptr) As Integer
Declare Function MESH_getPoseWithIndex Cdecl Alias "MESH_getPoseWithIndex" (index As Integer, m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_getPose Cdecl Alias "MESH_getPose" (name_ As Zstring Ptr, m As Zstring Ptr) As Zstring Ptr
Declare Sub      MESH_removePoseWithIndex Cdecl Alias "MESH_removePoseWithIndex" (index As Integer, m As Zstring Ptr)
Declare Sub      MESH_removePose Cdecl Alias "MESH_removePose" (name_ As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_removeAllPoses Cdecl Alias "MESH_removeAllPoses" (m As Zstring Ptr)
Declare Function MESH_getPoseIterator Cdecl Alias "MESH_getPoseIterator" (m As Zstring Ptr) As Zstring Ptr
Declare Function MESH_getPoseList Cdecl Alias "MESH_getPoseList" (m As Zstring Ptr) As Zstring Ptr
Declare Sub      MESH_setSharedVertexData Cdecl Alias "MESH_setSharedVertexData" (v As Zstring Ptr, m As Zstring Ptr)
Declare Function MESH_getSharedVertexData Cdecl Alias "MESH_getSharedVertexData" (m As Zstring Ptr) As Integer Ptr
Declare Function MESH_getSharedBlendIndexToBoneIndexMap Cdecl Alias "MESH_getSharedBlendIndexToBoneIndexMap" (m As Zstring Ptr) As Zstring Ptr
Declare Sub      MESH_setSharedBlendIndexToBoneIndexMap Cdecl Alias "MESH_setSharedBlendIndexToBoneIndexMap" (i As Zstring Ptr, m As Zstring Ptr)
Declare Sub      MESH_getVertexInformation Cdecl Alias "MESH_getVertexInformation" (vertex_count As Zstring Ptr, verticeList As Zstring Ptr, index_count As Zstring Ptr, indexList As Zstring Ptr, m As Zstring Ptr)
Declare Function MESH_getTriangleCount Cdecl Alias "MESH_getTriangleCount" ( m As Zstring Ptr ) As Integer
Declare Sub      MESH_softwareVertexMorph Cdecl Alias "MESH_softwareVertexMorph" (t As Single, b1 As Zstring Ptr, b2 As Zstring Ptr, targetVertexData As Zstring Ptr)
' anulada --> Declare Sub      MESH_softwareVertexPoseBlend Cdecl Alias "MESH_softwareVertexPoseBlend" (weight As Single , vertexOffsetMap As Zstring Ptr , targetVertexData As Zstring Ptr)
                           
' SubMesh
Declare Sub      SUBMESH_setMaterialName Cdecl Alias "SUBMESH_setMaterialName" (matName As ZString Ptr, s As Zstring Ptr)
Declare Function SUBMESH_getMaterialName Cdecl Alias "SUBMESH_getMaterialName" (s As Zstring Ptr) As Zstring Ptr
Declare Sub      SUBMESH_addBoneAssignment Cdecl Alias "SUBMESH_addBoneAssignment" (vertBoneAssign As Zstring Ptr, s As Zstring Ptr)
Declare Sub      SUBMESH_clearBoneAssignments Cdecl Alias "SUBMESH_clearBoneAssignments" (s As Zstring Ptr)
Declare Sub      SUBMESH_setUseSharedVertices Cdecl Alias "SUBMESH_setUseSharedVertices" (useSharedVertices As Byte, s As Zstring Ptr)
Declare Function SUBMESH_getUseSharedVertices Cdecl Alias "SUBMESH_getUseSharedVertices" (s As Zstring Ptr) As Byte
Declare Sub      SUBMESH_setOperationType Cdecl Alias "SUBMESH_setOperationType" (operationType As Integer, s As Zstring Ptr)
Declare Function SUBMESH_getOperationType Cdecl Alias "SUBMESH_getOperationType" (s As Zstring Ptr) As Integer
Declare Sub      SUBMESH_setVertexData Cdecl Alias "SUBMESH_setVertexData" (v As Zstring Ptr, s As Zstring Ptr)
Declare Function SUBMESH_getVertexData Cdecl Alias "SUBMESH_getVertexData" (s As Zstring Ptr) As Integer Ptr
Declare Sub      SUBMESH_setIndexData Cdecl Alias "SUBMESH_setIndexData" (indexData As Zstring Ptr, s As Zstring Ptr)
Declare Function SUBMESH_getIndexData Cdecl Alias "SUBMESH_getIndexData" (s As Zstring Ptr) As Zstring Ptr
Declare Sub      SUBMESH_setBlendIndexToBoneIndexMap Cdecl Alias "SUBMESH_setBlendIndexToBoneIndexMap" (map As Zstring Ptr, s As Zstring Ptr)
Declare Function SUBMESH_getBlendIndexToBoneIndexMap Cdecl Alias "SUBMESH_getBlendIndexToBoneIndexMap" (s As Zstring Ptr) As Zstring Ptr
' anulada --> Declare Sub      SUBMESH_setLodFaceList Cdecl Alias "SUBMESH_setLodFaceList" (mLodFaceList As Zstring Ptr, s As Zstring Ptr)
' anulada --> Declare Function SUBMESH_getLodFaceList Cdecl Alias "SUBMESH_getLodFaceList" (s As Zstring Ptr) As Zstring Ptr
' anulada --> Declare Sub      SUBMESH_setExtremityPoints Cdecl Alias "SUBMESH_setExtremityPoints" (extremityPoints As Zstring Ptr, s As Zstring Ptr)
Declare Function SUBMESH_getExtremityPoints Cdecl Alias "SUBMESH_getExtremityPoints" (s As Zstring Ptr) As Zstring Ptr
Declare Sub      SUBMESH_setParent Cdecl Alias "SUBMESH_setParent" (parent As Zstring Ptr, s As Zstring Ptr)
Declare Function SUBMESH_getParent Cdecl Alias "SUBMESH_getParent" ( s As Zstring Ptr ) As Zstring Ptr


' Skeleton
Declare Function SKELETON_createBone Cdecl Alias "SKELETON_createBone" (s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_createBoneWithHandle Cdecl Alias "SKELETON_createBoneWithHandle" (handle As Integer, s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_createBoneWithName Cdecl Alias "SKELETON_createBoneWithName" (name_ As Zstring Ptr, s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_createBoneWithNameHandle Cdecl Alias "SKELETON_createBoneWithNameHandle" (name_ As Zstring Ptr, handle As Integer, s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_getNumBones Cdecl Alias "SKELETON_getNumBones" (s As Zstring Ptr) As Integer
Declare Function SKELETON_getRootBoneIterator Cdecl Alias "SKELETON_getRootBoneIterator" (s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_getBoneIterator Cdecl Alias "SKELETON_getBoneIterator" (s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_getBone Cdecl Alias "SKELETON_getBone" (handle As Integer, s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_getBoneWithName Cdecl Alias "SKELETON_getBoneWithName" (name_ As Zstring Ptr, s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_hasBone Cdecl Alias "SKELETON_hasBone" (name_ As Zstring Ptr, s As Zstring Ptr) As Byte
Declare Sub      SKELETON_setBindingPose Cdecl Alias "SKELETON_setBindingPose" (s As Zstring Ptr)
Declare Sub      SKELETON_reset Cdecl Alias "SKELETON_reset" (resetManualBones As Byte, s As Zstring Ptr)
Declare Function SKELETON_createAnimation Cdecl Alias "SKELETON_createAnimation" (name_ As Zstring Ptr, length As Single, s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_getAnimation Cdecl Alias "SKELETON_getAnimation" (name_ As Zstring Ptr, s As Zstring Ptr) As Zstring Ptr
Declare Function SKELETON_hasAnimation Cdecl Alias "SKELETON_hasAnimation" (name_ As Zstring Ptr, s As Zstring Ptr) As Byte
Declare Sub      SKELETON_removeAnimation Cdecl Alias "SKELETON_removeAnimation" (name_ As Zstring Ptr, s As Zstring Ptr)
Declare Function SKELETON_getNumAnimations Cdecl Alias "SKELETON_getNumAnimations" (s As Zstring Ptr) As Integer
Declare Sub      SKELETON_optimiseAllAnimations Cdecl Alias "SKELETON_optimiseAllAnimations" (preservingIdentityNodeTracks As Byte, s As Zstring Ptr)
Declare Function SKELETON_getBlendMode Cdecl Alias "SKELETON_getBlendMode" (s As Zstring Ptr) As Integer
Declare Sub      SKELETON_setBlendMode Cdecl Alias "SKELETON_setBlendMode" (state As Integer, s As Zstring Ptr)
Declare Sub      SKELETON_notifyManualBonesDirty Cdecl Alias "SKELETON_notifyManualBonesDirty" (s As Zstring Ptr)
Declare Sub      SKELETON_notifyManualBoneStateChange Cdecl Alias "SKELETON_notifyManualBoneStateChange" (bone As Zstring Ptr, s As Zstring Ptr)
Declare Function SKELETON_getManualBonesDirty Cdecl Alias "SKELETON_getManualBonesDirty" (s As Zstring Ptr) As Byte
Declare Function SKELETON_hasManualBones Cdecl Alias "SKELETON_hasManualBones" (s As Zstring Ptr) As Byte
Declare Function SKELETON_getName Cdecl Alias "SKELETON_getName" (s As Zstring Ptr) As Zstring Ptr

' Bone
Declare Function BONE_createChild Cdecl Alias "BONE_createChild" (handle As Integer, translate As Zstring Ptr, rotate As Zstring Ptr, b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getHandle Cdecl Alias "BONE_getHandle" (b As Zstring Ptr) As Integer
Declare Sub      BONE_setBindingPose Cdecl Alias "BONE_setBindingPose" (b As Zstring Ptr)
Declare Sub      BONE_reset Cdecl Alias "BONE_reset" (b As Zstring Ptr)
Declare Sub      BONE_setManuallyControlled Cdecl Alias "BONE_setManuallyControlled" (manuallyControlled As Byte, b As Zstring Ptr)
Declare Function BONE_isManuallyControlled Cdecl Alias "BONE_isManuallyControlled" (b As Zstring Ptr) As Byte
Declare Sub      BONE_getOffsetTransform Cdecl Alias "BONE_getOffsetTransform" (matrix4 As Zstring Ptr, b As Zstring Ptr)
Declare Function BONE_getBindingPoseInverseScale Cdecl Alias "BONE_getBindingInverseScale" (b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getBindingPoseInversePosition Cdecl Alias "BONE_getBindingPoseInversePosition" (b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getBindingPoseInverseOrientation Cdecl Alias "BONE_getBindingPoseInverseOrientation" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_needUpdate Cdecl Alias "BONE_needUpdate" (forceParentUpdate As Byte, b As Zstring Ptr)
Declare Function BONE_getName Cdecl Alias "BONE_getName" (b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getParent Cdecl Alias "BONE_getParent" (b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getOrientation Cdecl Alias "BONE_getOrientation" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_setOrientationWithQuaternion Cdecl Alias "BONE_setOrientationWithQuaternion" (q As Zstring Ptr, b As Zstring Ptr)
Declare Sub      BONE_setOrientation Cdecl Alias "BONE_setOrientation" (w As Single, x As Single, y As Single, z As Single, b As Zstring Ptr)
Declare Sub      BONE_resetOrientation Cdecl Alias "BONE_resetOrientation" (b As Zstring Ptr)
Declare Sub      BONE_setPositionWithVector3 Cdecl Alias "BONE_setPositionWithVector3" (pos As Zstring Ptr, b As Zstring Ptr)
Declare Sub      BONE_setPosition Cdecl Alias "BONE_setPosition" (x As Single, y As Single, z As Single, b As Zstring Ptr)
Declare Function BONE_getPosition Cdecl Alias "BONE_getPosition" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_setScaleWithVector3 Cdecl Alias "BONE_setScaleWithVector3" (scale As Zstring Ptr, b As Zstring Ptr)
Declare Sub      BONE_setScale Cdecl Alias "BONE_setScale" (x As Single, y As Single, z As Single, b As Zstring Ptr)
Declare Function BONE_getScale Cdecl Alias "BONE_getScale" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_setInheritOrientation Cdecl Alias "BONE_setInheritOrientation" (inherit As Integer, b As Zstring Ptr)
Declare Function BONE_getInheritOrientation Cdecl Alias "BONE_getInheritOrientation" (b As Zstring Ptr) As Byte
Declare Sub      BONE_setInheritScale Cdecl Alias "BONE_setInheritScale" (inherit As Byte, b As Zstring Ptr)
Declare Function BONE_getInheritScale Cdecl Alias "BONE_getInheritScale" (b As Zstring Ptr) As Byte
Declare Sub      BONE_scaleWithVector3 Cdecl Alias "BONE_scaleWithVector3" (scale As Zstring Ptr, b As Zstring Ptr)
Declare Sub      BONE_scale Cdecl Alias "BONE_scale" (x As Single, y As Single, z As Single, b As Zstring Ptr)
Declare Sub      BONE_translateWithVector3 Cdecl Alias "BONE_translateWithVector3" (d As Zstring Ptr, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_translate Cdecl Alias "BONE_translate" (x As Single, y As Single, z As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_translateAlongAxesWithVector3 Cdecl Alias "BONE_translateAlongAxesWithVector3" (axes As Zstring Ptr, move As Zstring Ptr, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_translateAlongAxes Cdecl Alias "BONE_translateAlongAxes" (axes As Zstring Ptr, x As Single, y As Single, z As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_roll Cdecl Alias "BONE_roll" (degree As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_rollWithRadians Cdecl Alias "BONE_rollWithRadians" (Radians As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_pitch Cdecl Alias "BONE_pitch" (Degrees As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_pitchWithRadians Cdecl Alias "BONE_pitchWithRadians" (Radians As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_yaw Cdecl Alias "BONE_yaw" (Degrees As Single, transformSpace As Integer, b As Zstring Ptr)
Declare Sub      BONE_yawWithRadians Cdecl Alias "BONE_yawWithRadians" (Radians As Single, transformSpace As Integer, b As Zstring Ptr)
Declare Sub      BONE_rotate Cdecl Alias "BONE_rotate" (axis As Zstring Ptr, Degrees As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_rotateWithRadians Cdecl Alias "BONE_rotateWithRadians" (axis As Zstring Ptr, Radians As Single, relativeTo As Integer, b As Zstring Ptr)
Declare Sub      BONE_rotateWithQuaternion Cdecl Alias "BONE_rotateWithQuaternion" (q As Zstring Ptr, relativeTo As Integer, b As Zstring Ptr)
Declare Function BONE_getLocalAxes Cdecl Alias "BONE_getLocalAxes" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_addChild Cdecl Alias "BONE_addChild" (child As Zstring Ptr, b As Zstring Ptr)
Declare Function BONE_numChildren Cdecl Alias "BONE_numChildren" (b As Zstring Ptr) As Integer
Declare Function BONE_getChild Cdecl Alias "BONE_getChild" (index As Integer, b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getChildWithName Cdecl Alias "BONE_getChildWithName" (name_ As Zstring Ptr, b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getChildIterator Cdecl Alias "BONE_getChildIterator" ( b As Zstring Ptr ) As Zstring Ptr
Declare Function BONE_removeChildWithIndex Cdecl Alias "BONE_removeChildWithIndex" (index As Integer, b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_removeChild Cdecl Alias "BONE_removeChild" (child As Zstring Ptr, b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_removeChildWithName Cdecl Alias "BONE_removeChildWithName" (name_ As Zstring Ptr, b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_removeAllChildren Cdecl Alias "BONE_removeAllChildren" (b As Zstring Ptr)
Declare Function BONE_getDerivedOrientation Cdecl Alias "BONE_getDerivedOrientation" (b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getDerivedPosition Cdecl Alias "BONE_getDerivedPosition" (b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getDerivedScale Cdecl Alias "BONE_getDerivedScale" (b As Zstring Ptr) As Zstring Ptr
Declare Function BONE_getFullTransform Cdecl Alias "BONE_getFullTransform" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_update Cdecl Alias "BONE_update" (updateChildren As Byte, parentHasChanged As Byte, b As Zstring Ptr)
Declare Sub      BONE_setListener Cdecl Alias "BONE_setListener" (listener As Zstring Ptr, b As Zstring Ptr)
Declare Function BONE_getListener Cdecl Alias "BONE_getListener" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      BONE_setInitialState Cdecl Alias "BONE_setInitialState" (b As Zstring Ptr)
Declare Sub      BONE_resetToInitialState Cdecl Alias "BONE_resetToInitialState" (b As Zstring Ptr)

' User Defined Object
Declare Function UO_create Cdecl Alias "UO_create" () As Zstring Ptr
Declare Sub      UO_delete Cdecl Alias "UO_delete" (u As Zstring Ptr)
Declare Function UO_getCustomObject Cdecl Alias "UO_getCustomObject" (u As Zstring Ptr) As Object
Declare Sub      UO_setCustomObject Cdecl Alias "UO_setCustomObject" (newObject As Object, u As Zstring Ptr)
Declare Function UO_getOSMPropertyList Cdecl Alias "UO_getOSMPropertyList" (u As Zstring Ptr) As Zstring Ptr
Declare Sub      UO_setOSMPropertyList Cdecl Alias "UO_setOSMPropertyList" ( list As Zstring Ptr, u As Zstring Ptr )

' Vertex Bone Assignment
Declare Function VBA_create Cdecl Alias "VBA_create" () As Zstring Ptr
Declare Sub      VBA_delete Cdecl Alias "VBA_delete" (a As Zstring Ptr)
Declare Function VBA_getVertexIndex Cdecl Alias "VBA_getVertexIndex" (a As Zstring Ptr) As Integer
Declare Sub      VBA_setVertexIndex Cdecl Alias "VBA_setVertexIndex" (vertexIndex As Integer, a As Zstring Ptr)
Declare Function VBA_getBoneIndex Cdecl Alias "VBA_getBoneIndex" (a As Zstring Ptr) As Integer
Declare Sub      VBA_setBoneIndex Cdecl Alias "VBA_setBoneIndex" (boneIndex As Integer, a As Zstring Ptr)
Declare Function VBA_getWeight Cdecl Alias "VBA_getWeight" (a As Zstring Ptr) As Single
Declare Sub      VBA_setWeight Cdecl Alias "VBA_setWeight" (weight As Single, a As Zstring Ptr)


' Animation State
Declare Sub      AS_delete Cdecl Alias "AS_delete" ( ogreAnimationState As Zstring Ptr )
Declare Function AS_getAnimationName Cdecl Alias "AS_getAnimationName" ( ogreAnimationState As Zstring Ptr ) As Zstring Ptr
Declare Sub      AS_setEnabled Cdecl Alias "AS_setEnabled" ( enabled As Integer , ogreAnimationState As Zstring Ptr )
Declare Sub      AS_addTime Cdecl Alias "AS_addTime" ( offset As Single , ogreAnimationState As Zstring Ptr )
Declare Sub      AS_setLoop Cdecl Alias "AS_setLoop" (Loop As Integer, ogreAnimationState As Zstring Ptr)
Declare Function AS_getLoop Cdecl Alias "AS_getLoop" ( s As Zstring Ptr ) As Byte
Declare Sub      AS_setTimePosition Cdecl Alias "AS_setTimePosition" ( timePos As Single , ogreAnimationState As Zstring Ptr )
Declare Function AS_getTimePosition Cdecl Alias "AS_getTimePosition" ( as_ As Zstring Ptr ) As Single
Declare Function AS_getLength Cdecl Alias "AS_getLength" (as_ As Zstring Ptr) As Single
Declare Function AS_getWeight Cdecl Alias "AS_getWeight" (as_ As Zstring Ptr) As Single
Declare Sub      AS_setWeight Cdecl Alias "AS_setWeight" (weight As Single, s As Zstring Ptr)
Declare Sub      AS_createBlendMask Cdecl Alias "AS_createBlendMask" (blendMaskSizeHint As Integer, initialWeight As Single, s As Zstring Ptr)
Declare Sub      AS_destroyBlendMask Cdecl Alias "AS_destroyBlendMask" (s As Zstring Ptr)
Declare Function AS_hasBlendMask Cdecl Alias "AS_hasBlendMask" (s As Zstring Ptr) As Byte
Declare Sub      AS_setBlendMaskEntry Cdecl Alias "AS_setBlendMaskEntry" (boneHandle As Integer, weight As Single, s As Zstring Ptr)
Declare Function AS_getBlendMaskEntry Cdecl Alias "AS_getBlendMaskEntry" (boneHandle As Integer, s As Zstring Ptr) As Single

' Animation State Set
Declare Function ANIMSTATESET_create Cdecl Alias "ANIMSTATESET_create" () As Zstring Ptr
Declare Function ANIMSTATESET_createWithAnimationStateSet Cdecl Alias "ANIMSTATESET_createWithAnimationStateSet" (rhs As Zstring Ptr) As Zstring Ptr
Declare Sub      ANIMSTATESET_delete Cdecl Alias "ANIMSTATESET_delete" (s As Zstring Ptr)
Declare Function ANIMSTATESET_createAnimationState Cdecl Alias "ANIMSTATESET_createAnimationState" (animname_ As Zstring Ptr, timePos As Single, length As Single, weight As Single, enabled As Byte, s As Zstring Ptr) As Zstring Ptr
Declare Function ANIMSTATESET_getAnimationState Cdecl Alias "ANIMSTATESET_getAnimationState" (name_ As Zstring Ptr, s As Zstring Ptr) As Zstring Ptr
Declare Function ANIMSTATESET_hasAnimationState Cdecl Alias "ANIMSTATESET_hasAnimationState" (name_ As Zstring Ptr, s As Zstring Ptr) As Byte
Declare Sub      ANIMSTATESET_removeAnimationState Cdecl Alias "ANIMSTATESET_removeAnimationState" (name_ As Zstring Ptr, s As Zstring Ptr)
Declare Sub      ANIMSTATESET_removeAllAnimationStates Cdecl Alias "ANIMSTATESET_removeAllAnimationStates" (s As Zstring Ptr)
Declare Function ANIMSTATESET_getAnimationStateIterator Cdecl Alias "ANIMSTATESET_getAnimationStateIterator" (s As Zstring Ptr) As Zstring Ptr
Declare Sub      ANIMSTATESET_copyMatchingState Cdecl Alias "ANIMSTATESET_copyMatchingState" (target As Zstring Ptr, s As Zstring Ptr)
Declare Sub      ANIMSTATESET_notifyDirty Cdecl Alias "ANIMSTATESET_notifyDirty" (s As Zstring Ptr)
Declare Function ANIMSTATESET_getDirtyFrameNumber Cdecl Alias "ANIMSTATESET_getDirtyFrameNumber" (s As Zstring Ptr) As Long
Declare Sub      ANIMSTATESET_notifyAnimationStateEnabled Cdecl Alias "ANIMSTATESET_notifyAnimationStateEnabled" (target As Zstring Ptr, enabled As Byte, s As Zstring Ptr)
Declare Function ANIMSTATESET_hasEnabledAnimationState Cdecl Alias "ANIMSTATESET_hasEnabledAnimationState" (s As Zstring Ptr) As Byte

' Animation State Iterator
Declare Sub      ANIMSTATEITER_delete Cdecl Alias "ANIMSTATEITER_delete" (i As Zstring Ptr)
Declare Function ANIMSTATEITER_hasMoreElements Cdecl Alias "ANIMSTATEITER_hasMoreElements" (i As Zstring Ptr) As Byte
Declare Function ANIMSTATEITER_getNext Cdecl Alias "ANIMSTATEITER_getNext" (i As Zstring Ptr) As Zstring Ptr

' Animation
Declare Function ANIMATION_getName Cdecl Alias "ANIMATION_getName" (a As Zstring Ptr) As Zstring Ptr
Declare Function ANIMATION_getLength Cdecl Alias "ANIMATION_getLength" (a As Zstring Ptr) As Single
Declare Function ANIMATION_createNodeTrack Cdecl Alias "ANIMATION_createNodeTrack" (handle As Integer, node As Zstring Ptr, a As Zstring Ptr) As Zstring Ptr
Declare Function ANIMATION_createNodeTrackWithBone Cdecl Alias "ANIMATION_createNodeTrackWithBone" (handle As Integer, node As Zstring Ptr, a As Zstring Ptr) As Zstring Ptr
Declare Function ANIMATION_getNumNodeTracks Cdecl Alias "ANIMATION_getNumNodeTracks" (a As Zstring Ptr) As Integer
Declare Function ANIMATION_getNodeTrack Cdecl Alias "ANIMATION_getNodeTrack" ( handle As Integer , a As Zstring Ptr ) As Zstring Ptr
Declare Function ANIMATION_getNumNumericTracks Cdecl Alias "ANIMATION_getNumNumericTracks" (a As Zstring Ptr) As Integer
Declare Function ANIMATION_getNumVertexTracks Cdecl Alias "ANIMATION_getNumVertexTracks" (a As Zstring Ptr) As Integer
Declare Sub      ANIMATION_apply Cdecl Alias "ANIMATION_apply" (timePos As Single, weight As Single, scale As Single, a As Zstring Ptr)
Declare Sub      ANIMATION_setInterpolationMode Cdecl Alias "ANIMATION_setInterpolationMode" (im As Integer, a As Zstring Ptr)
Declare Sub      ANIMATION_setRotationInterpolationMode Cdecl Alias "ANIMATION_setRotationInterpolationMode" ( im As Integer , a As Zstring Ptr )
Declare Function ANIMATION_getNodeTrackList Cdecl Alias "ANIMATION_getNodeTrackList" (a As Zstring Ptr) As Zstring Ptr
Declare Sub      ANIMATION_setDefaultInterpolationMode Cdecl Alias "ANIMATION_setDefaultInterpolationMode" (im As Integer)


' Node Animation Track
Declare Function NODEANIMTRACK_createNodeKeyFrame Cdecl Alias "NODEANIMTRACK_createNodeKeyFrame" (timePos As Single, t As Zstring Ptr) As Zstring Ptr
Declare Function NODEANIMTRACK_getAssociatedNode Cdecl Alias "NODEANIMTRACK_getAssociatedNode" (t As Zstring Ptr) As Zstring Ptr
Declare Sub      NODEANIMTRACK_setAssociatedNode Cdecl Alias "NODEANIMTRACK_setAssociatedNode" (NODE As Zstring Ptr, t As Zstring Ptr)
Declare Sub      NODEANIMTRACK_apply Cdecl Alias "NODEANIMTRACK_apply" (timeIndex As Single, weight As Single, scale As Single, t As Zstring Ptr)
Declare Sub      NODEANIMTRACK_applyWithTimeIndex Cdecl Alias "NODEANIMTRACK_applyWithTimeIndex" (timeIndex As Zstring Ptr, weight As Single, scale As Single, t As Zstring Ptr)

' Animation Iterator
Declare Sub      ANIMITER_delete Cdecl Alias "ANIMITER_delete" (i As Zstring Ptr)
Declare Function ANIMITER_hasMoreElements Cdecl Alias "ANIMITER_hasMoreElements" (i As Zstring Ptr) As Byte
Declare Function ANIMITER_getNext Cdecl Alias "ANIMITER_getNext" (i As Zstring Ptr) As Zstring Ptr

' Node Track List
Declare Sub      NODETRACKLIST_delete Cdecl Alias "NODETRACKLIST_delete" (l As Zstring Ptr)
Declare Function NODETRACKLIST_begin Cdecl Alias "NODETRACKLIST_begin" (l As Zstring Ptr) As Zstring Ptr
Declare Function NODETRACKLIST_end Cdecl Alias "NODETRACKLIST_end" (l As Zstring Ptr) As Zstring Ptr

' Node Track List Iterator
Declare Sub      NODETRACKLISTITER_delete Cdecl Alias "NODETRACKLISTITER_delete" (i As Zstring Ptr)
Declare Function NODETRACKLISTITER_isNotEqualTo Cdecl Alias "NODETRACKLISTITER_isNotEqualTo" (i2 As Zstring Ptr, i As Zstring Ptr) As Byte
Declare Sub      NODETRACKLISTITER_moveNext Cdecl Alias "NODETRACKLISTITER_moveNext" (i As Zstring Ptr)
Declare Function NODETRACKLISTITER_getAnimationTrack Cdecl Alias "NODETRACKLISTITER_getAnimationTrack" (i As Zstring Ptr) As Zstring Ptr

' Ogre Key Frame
Declare Function OGREKEYFRAME_getTime Cdecl Alias "OGREKEYFRAME_getTime" (f As Zstring Ptr) As Single
Declare Function OGREKEYFRAME_clone Cdecl Alias "OGREKEYFRAME_clone" (newParent As Zstring Ptr, f As Zstring Ptr) As Zstring Ptr

' Transform Key Frame
Declare Sub      TFORMKEYFRAME_setTranslate Cdecl Alias "TFORMKEYFRAME_setTranslate" (trans As Zstring Ptr, f As Zstring Ptr)
Declare Function TFORMKEYFRAME_getTranslate Cdecl Alias "TFORMKEYFRAME_getTranslate" (f As Zstring Ptr) As Zstring Ptr
Declare Sub      TFORMKEYFRAME_setScale Cdecl Alias "TFORMKEYFRAME_setScale" (scale As Zstring Ptr, f As Zstring Ptr)
Declare Function TFORMKEYFRAME_getScale Cdecl Alias "TFORMKEYFRAME_getScale" (f As Zstring Ptr) As Zstring Ptr
Declare Sub      TFORMKEYFRAME_setRotation Cdecl Alias "TFORMKEYFRAME_setRotation" (rot As Zstring Ptr, f As Zstring Ptr)
Declare Function TFORMKEYFRAME_getRotation Cdecl Alias "TFORMKEYFRAME_getRotation" (f As Zstring Ptr) As Zstring Ptr

' Time Index
Declare Function TIMEINDEX_create Cdecl Alias "TIMEINDEX_create" (timePos As Single) As Zstring Ptr
Declare Function TIMEINDEX_createWithIndex Cdecl Alias "TIMEINDEX_createWithIndex" (timePos As Single, keyIndex As Integer) As Zstring Ptr
Declare Function TIMEINDEX_hasKeyIndex Cdecl Alias "TIMEINDEX_hasKeyIndex" (t As Zstring Ptr) As Byte
Declare Function TIMEINDEX_getTimePos Cdecl Alias "TIMEINDEX_getTimePos" (t As Zstring Ptr) As Single
Declare Function TIMEINDEX_getKeyIndex Cdecl Alias "TIMEINDEX_getKeyIndex" (t As Zstring Ptr) As Integer
Declare Sub      TIMEINDEX_delete Cdecl Alias "TIMEINDEX_delete" (t As Zstring Ptr)


' View Point
Declare Sub      VIEWPOINT_delete Cdecl Alias "VIEWPOINT_delete" (vp As Zstring Ptr)

' Sky Plane Gen parameters
Declare Function SKYPLANEGENPARAMETERS_getSkyPlaneScale Cdecl Alias "SKYPLANEGENPARAMETERS_getSkyPlaneScale" (p As Zstring Ptr) As Single
Declare Function SKYPLANEGENPARAMETERS_getSkyPlaneTiling Cdecl Alias "SKYPLANEGENPARAMETERS_getSkyPlaneTiling" (p As Zstring Ptr) As Single
Declare Function SKYPLANEGENPARAMETERS_getSkyPlaneBow Cdecl Alias "SKYPLANEGENPARAMETERS_getSkyPlaneBow" (p As Zstring Ptr) As Single
Declare Function SKYPLANEGENPARAMETERS_getSkyPlaneXSegments Cdecl Alias "SKYPLANEGENPARAMETERS_getSkyPlaneXSegments" (p As Zstring Ptr) As Integer
Declare Function SKYPLANEGENPARAMETERS_getSkyPlaneYSegments Cdecl Alias "SKYPLANEGENPARAMETERS_getSkyPlaneYSegments" (p As Zstring Ptr) As Integer
Declare Sub      SKYPLANEGENPARAMETERS_delete Cdecl Alias "SKYPLANEGENPARAMETERS_delete" (p As Zstring Ptr)

' Sky Box Gen Parameters
Declare Function SKYBOXGENPARAMETERS_getSkyBoxDistance Cdecl Alias "SKYBOXGENPARAMETERS_getSkyBoxDistance" (p As Zstring Ptr) As Single
Declare Sub      SKYBOXGENPARAMETERS_delete Cdecl Alias "SKYBOXGENPARAMETERS_delete" (p As Zstring Ptr)


' Sky Dome Gen Parameters
Declare Function SKYDOMEGENPARAMETERS_getSkyDomeCurvature Cdecl Alias "SKYDOMEGENPARAMETERS_getSkyDomeCurvature" (p As Zstring Ptr) As Single
Declare Function SKYDOMEGENPARAMETERS_getSkyDomeTiling Cdecl Alias "SKYDOMEGENPARAMETERS_getSkyDomeTiling" (p As Zstring Ptr) As Single
Declare Function SKYDOMEGENPARAMETERS_getSkyDomeDistance Cdecl Alias "SKYDOMEGENPARAMETERS_getSkyDomeDistance" (p As Zstring Ptr) As Single
Declare Function SKYDOMEGENPARAMETERS_getSkyDomeXSegments Cdecl Alias "SKYDOMEGENPARAMETERS_getSkyDomeXSegments" (p As Zstring Ptr) As Integer
Declare Function SKYDOMEGENPARAMETERS_getSkyDomeYSegments Cdecl Alias "SKYDOMEGENPARAMETERS_getSkyDomeYSegments" (p As Zstring Ptr) As Integer
Declare Function SKYDOMEGENPARAMETERS_getSkyDomeYSegments_keep Cdecl Alias "SKYDOMEGENPARAMETERS_getSkyDomeYSegments_keep" (p As Zstring Ptr) As Integer
Declare Sub      SKYDOMEGENPARAMETERS_delete Cdecl Alias "SKYDOMEGENPARAMETERS_delete" (p As Zstring Ptr)


' Axis Aligned Box
Declare Function AAB_createEmpty Cdecl Alias "AAB_createEmpty" () As Zstring Ptr
Declare Function AAB_createWithExtent Cdecl Alias "AAB_createWithExtent" (e As Integer) As Zstring Ptr
Declare Function AAB_createWithAAB Cdecl Alias "AAB_createWithAAB" (rkBox As Zstring Ptr) As Zstring Ptr
Declare Function AAB_createWithMinMax Cdecl Alias "AAB_createWithMinMax" (MinVec As Zstring Ptr, MaxVec As Zstring Ptr) As Zstring Ptr
Declare Function AAB_create Cdecl Alias "AAB_create" (mx As Single, my As Single, mz As Single, m2x As Single, m2y As Single, m2z As Single) As Zstring Ptr
Declare Sub      AAB_eq Cdecl Alias "AAB_eq" (rhs As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_delete Cdecl Alias "AAB_delete" (b As Zstring Ptr)
Declare Function AAB_getMinimum Cdecl Alias "AAB_getMinimum" (b As Zstring Ptr) As Zstring Ptr
Declare Function AAB_getMaximum Cdecl Alias "AAB_getMaximum" (b As Zstring Ptr) As Zstring Ptr
Declare Sub      AAB_setMinimumWithVector Cdecl Alias "AAB_setMinimumWithVector" (vec As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_setMinimum Cdecl Alias "AAB_setMinimum" (x As Single, y As Single, z As Single, b As Zstring Ptr)
Declare Sub      AAB_setMinimumX Cdecl Alias "AAB_setMinimumX" (x As Single, b As Zstring Ptr)
Declare Sub      AAB_setMinimumY Cdecl Alias "AAB_setMinimumY" (y As Single, b As Zstring Ptr)
Declare Sub      AAB_setMinimumZ Cdecl Alias "AAB_setMinimumZ" (z As Single, b As Zstring Ptr)
Declare Sub      AAB_setMaximumWithVector Cdecl Alias "AAB_setMaximumWithVector" (vec As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_setMaximum Cdecl Alias "AAB_setMaximum" (x As Single, y As Single, z As Single, b As Zstring Ptr)
Declare Sub      AAB_setMaximumX Cdecl Alias "AAB_setMaximumX" (x As Single, b As Zstring Ptr)
Declare Sub      AAB_setMaximumY Cdecl Alias "AAB_setMaximumY" (y As Single, b As Zstring Ptr)
Declare Sub      AAB_setMaximumZ Cdecl Alias "AAB_setMaximumZ" (z As Single, b As Zstring Ptr)
Declare Sub      AAB_setExtents Cdecl Alias "AAB_setExtents" (MinVec As Zstring Ptr, MaxVec As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_setExtentsWithFloats Cdecl Alias "AAB_setExtentsWithFloats" (mx As Single, my As Single, mz As Single, m2x As Single, m2y As Single, m2z As Single, b As Zstring Ptr)
Declare Function AAB_getCorner Cdecl Alias "AAB_getCorner" (cornerToGet As Integer, b As Zstring Ptr) As Zstring Ptr
Declare Sub      AAB_merge Cdecl Alias "AAB_merge" (rhs As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_mergeWithPoint Cdecl Alias "AAB_mergeWithPoint" (point As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_transform Cdecl Alias "AAB_transform" (matrix As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_transformAffine Cdecl Alias "AAB_transformAffine" (matrix As Zstring Ptr, b As Zstring Ptr)
Declare Sub      AAB_setBoxNull Cdecl Alias "AAB_setBoxNull" (b As Zstring Ptr)
Declare Function AAB_isBoxNull Cdecl Alias "AAB_isBoxNull" (b As Zstring Ptr) As Byte
Declare Function AAB_isFinite Cdecl Alias "AAB_isFinite" (b As Zstring Ptr) As Byte
Declare Sub      AAB_setInfinite Cdecl Alias "AAB_setInfinite" (b As Zstring Ptr)
Declare Function AAB_isInfinite Cdecl Alias "AAB_isInfinite" (b As Zstring Ptr) As Byte
Declare Function AAB_intersects Cdecl Alias "AAB_intersects" (b2 As Zstring Ptr, b As Zstring Ptr) As Byte
Declare Function AAB_intersection Cdecl Alias "AAB_intersection" (b2 As Zstring Ptr, b As Zstring Ptr) As Zstring Ptr
Declare Function AAB_volume Cdecl Alias "AAB_volume" (b As Zstring Ptr) As Single
Declare Sub      AAB_scale Cdecl Alias "AAB_scale" (s As Zstring Ptr, b As Zstring Ptr)
Declare Function AAB_intersectsSphere Cdecl Alias "AAB_intersectsSphere" (s As Zstring Ptr, b As Zstring Ptr) As Byte
Declare Function AAB_intersectsPlane Cdecl Alias "AAB_intersectsPlane" (p As Zstring Ptr, b As Zstring Ptr) As Byte
Declare Function AAB_intersectsVector Cdecl Alias "AAB_intersectsVector" (v As Zstring Ptr, b As Zstring Ptr) As Byte
Declare Function AAB_getCenter Cdecl Alias "AAB_getCenter" (b As Zstring Ptr) As Zstring Ptr
Declare Function AAB_getSize Cdecl Alias "AAB_getSize" (b As Zstring Ptr) As Zstring Ptr
Declare Function AAB_getHalfSize Cdecl Alias "AAB_getHalfSize" (b As Zstring Ptr) As Zstring Ptr
Declare Function AAB_containsVector Cdecl Alias "AAB_containsVector" (v As Zstring Ptr, b As Zstring Ptr) As Byte
Declare Function AAB_contains Cdecl Alias "AAB_contains" (other As Zstring Ptr, b As Zstring Ptr) As Byte
Declare Function AAB_isEqualTo Cdecl Alias "AAB_isEqualTo" (rhs As Zstring Ptr, b As Zstring Ptr) As Byte
Declare Sub      AAB_isNotEqualTo Cdecl Alias "AAB_isNotEqualTo" (rhs As Zstring Ptr, b As Zstring Ptr)
Declare Function AAB_BOX_NULL Cdecl Alias "AAB_BOX_NULL" () As Zstring Ptr
Declare Function AAB_BOX_INFINITE Cdecl Alias "AAB_BOX_INFINITE" () As Zstring Ptr
Declare Function AAB_toStr Cdecl Alias "AAB_toStr" (b As Zstring Ptr) As Zstring Ptr

' Flow
Declare Sub      FLOW_loadResourceFile Cdecl Alias "FLOW_loadResourceFile" ( resourceFilename_ As Zstring Ptr )

' Quick Line
Declare Function QUICKLINE_create Cdecl Alias "QUICKLINE_create" ( sm As Zstring Ptr ) As Zstring Ptr
Declare Sub      QUICKLINE_addPoint Cdecl Alias "QUICKLINE_addPoint" ( x As Single , y As Single , z As Single , mo As Zstring Ptr )

' Scene Query
Declare Sub      SQ_setQueryMask Cdecl Alias "SQ_setQueryMask" ( mask As Integer , sq As Zstring Ptr )
Declare Function SQ_getQueryMask Cdecl Alias "SQ_getQueryMask" ( sq As Zstring Ptr ) As Integer
Declare Sub      SQ_setQueryTypeMask Cdecl Alias "SQ_setQueryTypeMask" ( mask As Integer , sq As Zstring Ptr )
Declare Function SQ_getQueryTypeMask Cdecl Alias "SQ_getQueryTypeMask" ( sq As Zstring Ptr ) As Integer
Declare Sub      SQ_setWorldFragmentType Cdecl Alias "SQ_setWorldFragmentType" ( wft As Integer , sq As Zstring Ptr )
Declare Function SQ_getWorldFragmentType Cdecl Alias "SQ_getWorldFragmentType" ( sq As Zstring Ptr ) As Integer
Declare Function SQ_getSupportedWorldFragmentTypes Cdecl Alias "SQ_getSupportedWorldFragmentTypes" ( sq As Zstring Ptr ) As Zstring Ptr

' Ray Scene Query
Declare Sub      RSQUERY_setRay Cdecl Alias "RSQUERY_setRay" ( ogreRay As Zstring Ptr , ogreRaySceneQuery As Zstring Ptr )
Declare Function RSQUERY_getRay Cdecl Alias "RSQUERY_getRay" ( ogreRaySceneQuery As Zstring Ptr ) As Zstring Ptr
Declare Sub      RSQUERY_setSortByDistance Cdecl Alias "RSQUERY_setSortByDistance" ( sort As Integer , maxResults As Integer , ogreRaySceneQuery As Zstring Ptr )
Declare Function RSQUERY_getSortByDistance Cdecl Alias "RSQUERY_getSortByDistance" ( rsq As Zstring Ptr ) As Integer
Declare Function RSQUERY_getMaxResults Cdecl Alias "RSQUERY_getMaxResults" ( rsq As Zstring Ptr ) As Integer
Declare Function RSQUERY_execute Cdecl Alias "RSQUERY_execute" ( ogreRaySceneQuery As Zstring Ptr ) As Zstring Ptr
Declare Sub      RSQUERY_executeWithListener Cdecl Alias "RSQUERY_executeWithListener" ( listener As Zstring Ptr , rsq As Zstring Ptr )
Declare Function RSQUERY_getLastResults Cdecl Alias "RSQUERY_getLastResults" ( rsq As Zstring Ptr ) As Zstring Ptr
Declare Sub      RSQUERY_clearResults Cdecl Alias "RSQUERY_clearResults" ( ogreRaySceneQuery As Zstring Ptr )
Declare Function RSQUERY_queryResult Cdecl Alias "RSQUERY_queryResult" ( obj As Zstring Ptr , distance As Single , rsq As Zstring Ptr ) As Integer
Declare Function RSQUERY_queryResultWithWorldFragment Cdecl Alias "RSQUERY_queryResultWithWorldFragment" ( fragment As Zstring Ptr , distance As Single , rsq As Zstring Ptr ) As Integer

' Ray Scene Query Results
Declare Function RSQR_begin Cdecl Alias "RSQR_begin" ( result As Zstring Ptr ) As Zstring Ptr
Declare Function RSQR_end Cdecl Alias "RSQR_end" ( result As Zstring Ptr ) As Zstring Ptr
Declare Function RSQR_at Cdecl Alias "RSQR_at" ( index As Integer , result As Zstring Ptr ) As Zstring Ptr
Declare Sub      RSQR_delete Cdecl Alias "RSQR_delete" (rsqr As Zstring Ptr)

' Ray Scene Query Results Entry
Declare Function RSQRENTRY_getMovable Cdecl Alias "RSQRENTRY_getMovable" ( entry As Zstring Ptr ) As Zstring Ptr
Declare Function RSQRENTRY_getDistance Cdecl Alias "RSQRENTRY_getDistance" ( entry As Zstring Ptr ) As Single
Declare Function RSQRENTRY_getWorldFragment Cdecl Alias "RSQRENTRY_getWorldFragment" ( entry As Zstring Ptr ) As Zstring Ptr
Declare Function RSQRENTRY_isLessThan Cdecl Alias "RSQRENTRY_isLessThan" ( a As Zstring Ptr , b As Zstring Ptr ) As Integer
Declare Sub      RSQRENTRY_delete Cdecl Alias "RSQRENTRY_delete" ( r As Zstring Ptr )

' Ray Scene Query Result Iterator
Declare Function RSQRI_getEntry Cdecl Alias "RSQRI_getEntry" ( iter As Zstring Ptr ) As Zstring Ptr
Declare Function RSQRI_isNotEqualTo Cdecl Alias "RSQRI_isNotEqualTo" ( a As Zstring Ptr , b As Zstring Ptr ) As Integer
Declare Sub      RSQRI_isEqualTo Cdecl Alias "RSQRI_isEqualTo" ( a As Zstring Ptr , b As Zstring Ptr )
Declare Sub      RSQRI_delete Cdecl Alias "RSQRI_delete" (i As Zstring Ptr)

' Quaternion
Declare Function QUAT_createEmpty Cdecl Alias "QUAT_createEmpty" () As Zstring Ptr
Declare Function QUAT_create Cdecl Alias "QUAT_create" (fW As Single, fX As Single, fY As Single, fZ As Single) As Zstring Ptr
Declare Function QUAT_createWithQuaternion Cdecl Alias "QUAT_createWithQuaternion" (rkQ As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_createWithMatrix3 Cdecl Alias "QUAT_createWithMatrix3" (rot As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_createWithAngleAxis Cdecl Alias "QUAT_createWithAngleAxis" (rfAngle As Zstring Ptr, rkAxis As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_createWith3OrthoAxes Cdecl Alias "QUAT_createWith3OrthoAxes" (xAxis As Zstring Ptr, yAxis As Zstring Ptr, zAxis As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_createWithFloatPtr Cdecl Alias "QUAT_createWithFloatPtr" (valptr As Single Ptr) As Zstring Ptr
Declare Function QUAT_getValue Cdecl Alias "QUAT_getValue" (i As Integer, q As Zstring Ptr) As Single
Declare Sub      QUAT_setValue Cdecl Alias "QUAT_setValue" (i As Integer, value As Single, q As Zstring Ptr)
Declare Sub      QUAT_FromRotationMatrix Cdecl Alias "QUAT_FromRotationMatrix" ( kRot As Zstring Ptr , q As Zstring Ptr )
Declare Sub      QUAT_ToRotationMatrix Cdecl Alias "QUAT_ToRotationMatrix" ( kRot As Zstring Ptr , q As Zstring Ptr )
Declare Sub      QUAT_FromAngleAxis Cdecl Alias "QUAT_FromAngleAxis" ( rfAngle As Zstring Ptr , rkAxis As Zstring Ptr , q As Zstring Ptr )
Declare Sub      QUAT_ToAngleAxis Cdecl Alias "QUAT_ToAngleAxis" ( rfAngle As Zstring Ptr , rkAxis As Zstring Ptr , q As Zstring Ptr )
Declare Sub      QUAT_ToAngleAxisWithDegree Cdecl Alias "QUAT_ToAngleAxisWithDegree" (dAngle As Zstring Ptr, rkAxis As Zstring Ptr, q As Zstring Ptr)
Declare Sub      QUAT_FromAxes Cdecl Alias "QUAT_FromAxes" (xAxis As Zstring Ptr, yAxis As Zstring Ptr, zAxis As Zstring Ptr, q As Zstring Ptr)
Declare Sub      QUAT_ToAxes Cdecl Alias "QUAT_ToAxes" (xAxis As Zstring Ptr, yAxis As Zstring Ptr, zAxis As Zstring Ptr, q As Zstring Ptr)
Declare Function QUAT_xAxis Cdecl Alias "QUAT_xAxis" (q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_yAxis Cdecl Alias "QUAT_yAxis" (q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_zAxis Cdecl Alias "QUAT_zAxis" (q As Zstring Ptr) As Zstring Ptr
Declare Sub      QUAT_eq Cdecl Alias "QUAT_eq" (rkQ As Zstring Ptr, q As Zstring Ptr)
Declare Function QUAT_add Cdecl Alias "QUAT_add" (rkQ As Zstring Ptr, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_sub Cdecl Alias "QUAT_sub" (rkQ As Zstring Ptr, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_mul Cdecl Alias "QUAT_mul" (rkQ As Zstring Ptr, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_mulWithScalar Cdecl Alias "QUAT_mulWithScalar" (fScalar As Single, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_negative Cdecl Alias "QUAT_negative" (q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_isEqualTo Cdecl Alias "QUAT_isEqualTo" (rhs As Zstring Ptr, q As Zstring Ptr) As Integer
Declare Function QUAT_isNotEqualTo Cdecl Alias "QUAT_isNotEqualTo" (rhs As Zstring Ptr, q As Zstring Ptr) As Integer
Declare Function QUAT_Dot Cdecl Alias "QUAT_Dot" (rkQ As Zstring Ptr, q As Zstring Ptr) As Single
Declare Function QUAT_Norm Cdecl Alias "QUAT_Norm" (q As Zstring Ptr) As Single
Declare Function QUAT_normalise Cdecl Alias "QUAT_normalise" (q As Zstring Ptr) As Single
Declare Function QUAT_Inverse Cdecl Alias "QUAT_Inverse" (q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_UnitInverse Cdecl Alias "QUAT_UnitInverse" (q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_Exp Cdecl Alias "QUAT_Exp" (q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_Log Cdecl Alias "QUAT_Log" (q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_mulWithVector3 Cdecl Alias "QUAT_mulWithVector3" (rkVector As Zstring Ptr, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_getPitch Cdecl Alias "QUAT_getPitch" (reprojectAxis As Byte, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_getRoll Cdecl Alias "QUAT_getRoll" (reprojectAxis As Byte, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_getYaw Cdecl Alias "QUAT_getYaw" (reprojectAxis As Byte, q As Zstring Ptr) As Zstring Ptr
Declare Function QUAT_isEqualToWithTolerance Cdecl Alias "QUAT_isEqualToWithTolerance" (a As Zstring Ptr, tolerance As Zstring Ptr, q As Zstring Ptr) As Integer
Declare Sub      QUAT_delete Cdecl Alias "QUAT_delete" (q As Zstring Ptr)
Declare Function QUAT_getW Cdecl Alias "QUAT_getW" (q As Zstring Ptr) As Single
Declare Function QUAT_getX Cdecl Alias "QUAT_getX" (q As Zstring Ptr) As Single
Declare Function QUAT_getY Cdecl Alias "QUAT_getY" (q As Zstring Ptr) As Single
Declare Function QUAT_getZ Cdecl Alias "QUAT_getZ" (q As Zstring Ptr) As Single
Declare Sub      QUAT_setW Cdecl Alias "QUAT_setW" (w As Single, q As Zstring Ptr)
Declare Sub      QUAT_setX Cdecl Alias "QUAT_setX" (x As Single, q As Zstring Ptr)
Declare Sub      QUAT_setY Cdecl Alias "QUAT_setY" (y As Single, q As Zstring Ptr)
Declare Sub      QUAT_setZ Cdecl Alias "QUAT_setZ" (z As Single, q As Zstring Ptr)
Declare Sub      QUAT_setAll Cdecl Alias "QUAT_setAll" (w As Single , x As Single , y As Single , z As Single , q As Zstring Ptr )
Declare Function QUAT_Slerp Cdecl Alias "QUAT_Slerp" (fT As Single, rkP As Zstring Ptr, rkQ As Zstring Ptr, shortestPath As Integer) As Zstring Ptr
Declare Function QUAT_SlerpExtraSpins Cdecl Alias "QUAT_SlerpExtraSpins" (ft As Single, rkP As Zstring Ptr, rkQ As Zstring Ptr, iExtraSpins As Integer) As Zstring Ptr
Declare Sub      QUAT_Intermediate Cdecl Alias "QUAT_Intermediate" (rkQ0 As Zstring Ptr, rkQ1 As Zstring Ptr, rkQ2 As Zstring Ptr, rka As Zstring Ptr, rkB As Zstring Ptr)
Declare Function QUAT_Squad Cdecl Alias "QUAT_Squad" (fT As Single, rkP As Zstring Ptr, rkA As Zstring Ptr, rkB As Zstring Ptr, rkQ As Zstring Ptr, shortestPath As Integer) As Zstring Ptr
Declare Function QUAT_nlerp Cdecl Alias "QUAT_nlerp" (fT As Single, rkP As Zstring Ptr, rkQ As Zstring Ptr, shortestPath As Integer) As Zstring Ptr
Declare Function QUAT_ms_fEpsilon Cdecl Alias "QUAT_ms_fEpsilon" () As Single Ptr
Declare Function QUAT_ZERO Cdecl Alias "QUAT_ZERO" () As Zstring Ptr
Declare Function QUAT_IDENTITY Cdecl Alias "QUAT_IDENTITY" () As Zstring Ptr
Declare Function QUAT_toStr Cdecl Alias "QUAT_toStr" (q As Zstring Ptr) As Zstring Ptr


' Degree
Declare Function DEGREE_create Cdecl Alias "DEGREE_create" (degree As Single) As ZString Ptr
Declare Function DEGREE_valueDegrees Cdecl Alias "DEGREE_valueDegrees" ( degree As Zstring Ptr ) As Single
Declare Function DEGREE_valueRadians Cdecl Alias "DEGREE_valueRadians" ( degree As Zstring Ptr ) As Single
Declare Function DEGREE_valueAngleUnits Cdecl Alias "DEGREE_valueAngleUnits" ( degree As Zstring Ptr ) As Single
Declare Sub      DEGREE_delete Cdecl Alias "DEGREE_delete" (d As Zstring Ptr)

' Radian
Declare Function RAD_create Cdecl Alias "RAD_create" (radian As Single) As ZString Ptr
Declare Function RAD_createWithDegrees Cdecl Alias "RAD_createWithDegrees" (d As Single ) As Zstring Ptr
Declare Function RAD_valueAngleUnits Cdecl Alias "RAD_valueAngleUnits" ( ogreRadian As Zstring Ptr ) As Single
Declare Function RAD_valueDegrees Cdecl Alias "RAD_valueDegrees" ( ogreRadian As Zstring Ptr ) As Single
Declare Function RAD_valueRadians Cdecl Alias "RAD_valueRadians" (ogreRadian As Zstring Ptr) As Single
Declare Sub      RAD_delete Cdecl Alias "RAD_delete" (r As Zstring Ptr)

' Byte Float Pair
Declare Function BYTEFLOATPAIR_create Cdecl Alias "BYTEFLOATPAIR_create" (First As Byte, second As Single) As Zstring Ptr
Declare Sub      BYTEFLOATPAIR_delete Cdecl Alias "BYTEFLOATPAIR_delete" (p As Zstring Ptr)
Declare Function BYTEFLOATPAIR_getFirst Cdecl Alias "BYTEFLOATPAIR_getFirst" (p As Zstring Ptr) As Byte
Declare Sub      BYTEFLOATPAIR_setFirst Cdecl Alias "BYTEFLOATPAIR_setFirst" (First As Byte, p As Zstring Ptr)
Declare Function BYTEFLOATPAIR_getSecond Cdecl Alias "BYTEFLOATPAIR_getSecond" (p As Zstring Ptr) As Single
Declare Sub      BYTEFLOATPAIR_setSecond Cdecl Alias "BYTEFLOATPAIR_setSecond" (second As Single, p As Zstring Ptr)

' Plane
Declare Function PLANE_createEmpty Cdecl Alias "PLANE_createEmpty" () As Integer Ptr
Declare Function PLANE_createWithPlane Cdecl Alias "PLANE_createWithPlane" (rhs As Zstring Ptr) As Integer Ptr
Declare Function PLANE_create Cdecl Alias "PLANE_create" (rkNormal As Zstring Ptr, fConstant As Single) As Integer Ptr
Declare Function PLANE_createWithPoint Cdecl Alias "PLANE_createWithPoint" (rkNormal As Zstring Ptr, rkPoint As Zstring Ptr) As Integer Ptr
Declare Function PLANE_createWith3Points Cdecl Alias "PLANE_createWith3Points" (rkPoint0 As Zstring Ptr, rkPoint1 As Zstring Ptr, rkPoint2 As Zstring Ptr) As Integer Ptr
Declare Function PLANE_getSide Cdecl Alias "PLANE_getSide" (rkPoint As Zstring Ptr, p As Zstring Ptr) As Integer
Declare Function PLANE_getSideWithAAB Cdecl Alias "PLANE_getSideWithAAB" (rkBox As Zstring Ptr, p As Zstring Ptr) As Integer
Declare Function PLANE_getSideWithBox Cdecl Alias "PLANE_getSideWithBox" (centre As Zstring Ptr, halfsize As Zstring Ptr, p As Zstring Ptr) As Integer
Declare Function PLANE_getDistance Cdecl Alias "PLANE_getDistance" (rkPoint As Zstring Ptr, p As Zstring Ptr) As Single
Declare Sub      PLANE_redefine Cdecl Alias "PLANE_redefine" (rkPoint0 As Zstring Ptr, rkPoint1 As Zstring Ptr, rkPoint2 As Zstring Ptr, p As Zstring Ptr)
Declare Sub      PLANE_redefineWithNormal Cdecl Alias "PLANE_redefineWithNormal" (rkNormal As Zstring Ptr, rkPoint As Zstring Ptr, p As Zstring Ptr)
Declare Function PLANE_projectVector Cdecl Alias "PLANE_projectVector" (v As Zstring Ptr, p As Zstring Ptr) As Zstring Ptr
Declare Function PLANE_normalise Cdecl Alias "PLANE_normalise" (p As Zstring Ptr) As Single
Declare Function PLANE_isEqualTo Cdecl Alias "PLANE_isEqualTo" (rhs As Zstring Ptr, p As Zstring Ptr) As Integer
Declare Function PLANE_isNotEqualTo Cdecl Alias "PLANE_isNotEqualTo" (rhs As Zstring Ptr, p As Zstring Ptr) As Integer
Declare Function PLANE_toStr Cdecl Alias "PLANE_toStr" (p As Zstring Ptr) As Zstring Ptr
Declare Sub      PLANE_delete Cdecl Alias "PLANE_delete" (p As Zstring Ptr)
Declare Function PLANE_getNormal Cdecl Alias "PLANE_getNormal" (p As Zstring Ptr) As Zstring Ptr
Declare Function PLANE_getD Cdecl Alias "PLANE_getD" (p As Zstring Ptr) As Single
Declare Sub      PLANE_setNormal Cdecl Alias "PLANE_setNormal" (normal As Zstring Ptr, p As Zstring Ptr)
Declare Sub      PLANE_setD Cdecl Alias "PLANE_setD" (d As Single, p As Zstring Ptr)


' Vector2
Declare Function VECTOR2_createEmpty Cdecl Alias "VECTOR2_createEmpty" () As Zstring Ptr
Declare Function VECTOR2_create Cdecl Alias "VECTOR2_create" (fX As Single, fY As Single) As Zstring Ptr
Declare Function VECTOR2_createWithScalar Cdecl Alias "VECTOR2_createWithScalar" (scalar As Single) As Zstring Ptr
Declare Function VECTOR2_createWithFloatPtr Cdecl Alias "VECTOR2_createWithFloatPtr" (r As Single Ptr) As Zstring Ptr
Declare Function VECTOR2_createWithVector2 Cdecl Alias "VECTOR2_createWithVector2" (rkVector As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_getValue Cdecl Alias "VECTOR2_getValue" (i As Integer, v As Zstring Ptr) As Single
Declare Sub      VECTOR2_setValue Cdecl Alias "VECTOR2_setValue" (i As Integer, value As Single, v As Zstring Ptr)
Declare Sub      VECTOR2_eq Cdecl Alias "VECTOR2_eq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR2_eqWithScalar Cdecl Alias "VECTOR2_eqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Function VECTOR2_isEqualTo Cdecl Alias "VECTOR2_isEqualTo" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR2_isNotEqualTo Cdecl Alias "VECTOR2_isNotEqualTo" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR2_addWithScalar Cdecl Alias "VECTOR2_addWithScalar" (fScalar As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_add Cdecl Alias "VECTOR2_add" (rkVector As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_subWithScalar Cdecl Alias "VECTOR2_subWithScalar" ( fScalar As Single , v As Zstring Ptr ) As Zstring Ptr
Declare Function VECTOR2_sub Cdecl Alias "VECTOR2_sub" (rkVector As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_mulWithScalar Cdecl Alias "VECTOR2_mulWithScalar" (fScalar As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_mul Cdecl Alias "VECTOR2_mul" (rhs As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_divWithScalar Cdecl Alias "VECTOR2_divWithScalar" (fScalar As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_div Cdecl Alias "VECTOR2_div" (rhs As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_positive Cdecl Alias "VECTOR2_positive" (v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_negative Cdecl Alias "VECTOR2_negative" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VECTOR2_addEq Cdecl Alias "VECTOR2_addEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR2_addEqWithScalar Cdecl Alias "VECTOR2_addEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR2_subEq Cdecl Alias "VECTOR2_subEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR2_subEqWithScalar Cdecl Alias "VECTOR2_subEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR2_mulEqWithScalar Cdecl Alias "VECTOR2_mulEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR2_mulEq Cdecl Alias "VECTOR2_mulEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR2_divEqWithScalar Cdecl Alias "VECTOR2_divEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR2_divEq Cdecl Alias "VECTOR2_divEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Function VECTOR2_length Cdecl Alias "VECTOR2_length" (v As Zstring Ptr) As Single
Declare Function VECTOR2_squaredLength Cdecl Alias "VECTOR2_squaredLength" (v As Zstring Ptr) As Single
Declare Function VECTOR2_dotProduct Cdecl Alias "VECTOR2_dotProduct" (vec As Zstring Ptr, v As Zstring Ptr) As Single
Declare Function VECTOR2_normalise Cdecl Alias "VECTOR2_normalise" (v As Zstring Ptr) As Single
Declare Function VECTOR2_midPoint Cdecl Alias "VECTOR2_midPoint" (vec As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_isLessThan Cdecl Alias "VECTOR2_isLessThan" (rhs As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR2_isGreaterThan Cdecl Alias "VECTOR2_isGreaterThan" (rhs As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Sub      VECTOR2_makeFloor Cdecl Alias "VECTOR2_makeFloor" (cmp As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR2_makeCeil Cdecl Alias "VECTOR2_makeCeil" (cmp As Zstring Ptr, v As Zstring Ptr)
Declare Function VECTOR2_perpendicular Cdecl Alias "VECTOR2_perpendicular" (v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_crossProduct Cdecl Alias "VECTOR2_crossProduct" (rkVector As Zstring Ptr, v As Zstring Ptr) As Single
Declare Function VECTOR2_randomDeviant Cdecl Alias "VECTOR2_randomDeviant" (angle As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_isZeroLength Cdecl Alias "VECTOR2_isZeroLength" (v As Zstring Ptr) As Integer
Declare Function VECTOR2_normalisedCopy Cdecl Alias "VECTOR2_normalisedCopy" (v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_reflect Cdecl Alias "VECTOR2_reflect" (normal As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR2_toStr Cdecl Alias "VECTOR2_toStr" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VECTOR2_delete Cdecl Alias "VECTOR2_delete" (v As Zstring Ptr)
Declare Function VECTOR2_getX Cdecl Alias "VECTOR2_getX" (v As Zstring Ptr) As Single
Declare Function VECTOR2_getY Cdecl Alias "VECTOR2_getY" (v As Zstring Ptr) As Single
Declare Sub      VECTOR2_setX Cdecl Alias "VECTOR2_setX" (x As Single, v As Zstring Ptr)
Declare Sub      VECTOR2_setY Cdecl Alias "VECTOR2_setY" (y As Single, v As Zstring Ptr)
Declare Sub      VECTOR2_setAll Cdecl Alias "VECTOR2_setAll" (x As Single , y As Single , v As Zstring Ptr )
Declare Function VECTOR2_ZERO Cdecl Alias "VECTOR2_ZERO" () As Zstring Ptr
Declare Function VECTOR2_UNIT_X Cdecl Alias "VECTOR2_UNIT_X" () As Zstring Ptr
Declare Function VECTOR2_UNIT_Y Cdecl Alias "VECTOR2_UNIT_Y" () As Zstring Ptr
Declare Function VECTOR2_NEGATIVE_UNIT_X Cdecl Alias "VECTOR2_NEGATIVE_UNIT_X" () As Zstring Ptr
Declare Function VECTOR2_NEGATIVE_UNIT_Y Cdecl Alias "VECTOR2_NEGATIVE_UNIT_Y" () As Zstring Ptr
Declare Function VECTOR2_UNIT_SCALE Cdecl Alias "VECTOR2_UNIT_SCALE" () As Zstring Ptr

' Vector3
Declare Function VECTOR3_createEmpty Cdecl Alias "VECTOR3_createEmpty" () As Zstring Ptr
Declare Function VECTOR3_create Cdecl Alias "VECTOR3_create" (x As Single, y As Single, z As Single) As Zstring Ptr
Declare Function VECTOR3_createWithFloatPtr Cdecl Alias "VECTOR3_createWithFloatPtr" (r As Single Ptr) As Zstring Ptr
Declare Function VECTOR3_createWithScalar Cdecl Alias "VECTOR3_createWithScalar" (scalar As Single) As Zstring Ptr
Declare Function VECTOR3_createWithVector3 Cdecl Alias "VECTOR3_createWithVector3" (rkVector As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_getValue Cdecl Alias "VECTOR3_getValue" (i As Integer, v As Zstring Ptr) As Single
Declare Sub      VECTOR3_setValue Cdecl Alias "VECTOR3_setValue" (i As Integer, value As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_eq Cdecl Alias "VECTOR3_eq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR3_eqWithScalar Cdecl Alias "VECTOR3_eqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Function VECTOR3_isEqualTo Cdecl Alias "VECTOR3_isEqualTo" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR3_isNotEqualTo Cdecl Alias "VECTOR3_isNotEqualTo" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR3_addWithScalar Cdecl Alias "VECTOR3_addWithScalar" (fScalar As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_add Cdecl Alias "VECTOR3_add" (rkVector As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_subWithScalar Cdecl Alias "VECTOR3_subWithScalar" (fScalar As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_sub Cdecl Alias "VECTOR3_sub" (rkVector As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_mulWithScalar Cdecl Alias "VECTOR3_mulWithScalar" (fScalar As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_mul Cdecl Alias "VECTOR3_mul" (rhs As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_divWithScalar Cdecl Alias "VECTOR3_divWithScalar" (fScalar As Single, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_div Cdecl Alias "VECTOR3_div" (rhs As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_positive Cdecl Alias "VECTOR3_positive" (v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_negative Cdecl Alias "VECTOR3_negative" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VECTOR3_addEq Cdecl Alias "VECTOR3_addEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR3_addEqWithScalar Cdecl Alias "VECTOR3_addEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_subEq Cdecl Alias "VECTOR3_subEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR3_subEqWithScalar Cdecl Alias "VECTOR3_subEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_mulEqWithScalar Cdecl Alias "VECTOR3_mulEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_mulEq Cdecl Alias "VECTOR3_mulEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR3_divEqWithScalar Cdecl Alias "VECTOR3_divEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_divEq Cdecl Alias "VECTOR3_divEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Function VECTOR3_length Cdecl Alias "VECTOR3_length" (v As Zstring Ptr) As Single
Declare Function VECTOR3_squaredLength Cdecl Alias "VECTOR3_squaredLength" (v As Zstring Ptr) As Single
Declare Function VECTOR3_distance Cdecl Alias "VECTOR3_distance" (rhs As Zstring Ptr, v As Zstring Ptr) As Single
Declare Function VECTOR3_squaredDistance Cdecl Alias "VECTOR3_squaredDistance" (rhs As Zstring Ptr, v As Zstring Ptr) As Single
Declare Function VECTOR3_dotProduct Cdecl Alias "VECTOR3_dotProduct" (vec As Zstring Ptr, v As Zstring Ptr) As Single
Declare Function VECTOR3_absDotProduct Cdecl Alias "VECTOR3_absDotProduct" (vec As Zstring Ptr, v As Zstring Ptr) As Single
Declare Function VECTOR3_normalise Cdecl Alias "VECTOR3_normalise" (v As Zstring Ptr) As Single
Declare Function VECTOR3_crossProduct Cdecl Alias "VECTOR3_crossProduct" (rkVector As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_midPoint Cdecl Alias "VECTOR3_midPoint" (vec As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_isLessThan Cdecl Alias "VECTOR3_isLessThan" (rhs As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR3_isGreaterThan Cdecl Alias "VECTOR3_isGreaterThan" (rhs As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Sub      VECTOR3_makeFloor Cdecl Alias "VECTOR3_makeFloor" (cmp As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR3_makeCeil Cdecl Alias "VECTOR3_makeCeil" (cmp As Zstring Ptr, v As Zstring Ptr)
Declare Function VECTOR3_perpendicular Cdecl Alias "VECTOR3_perpendicular" (v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_randomDeviant Cdecl Alias "VECTOR3_randomDeviant" (angle As Zstring Ptr, up As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_getRotationTo Cdecl Alias "VECTOR3_getRotationTo" (dest As Zstring Ptr, fallbackAxis As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_isZeroLength Cdecl Alias "VECTOR3_isZeroLength" (v As Zstring Ptr) As Integer
Declare Function VECTOR3_normalisedCopy Cdecl Alias "VECTOR3_normalisedCopy" (v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_reflect Cdecl Alias "VECTOR3_reflect" (normal As Zstring Ptr, v As Zstring Ptr) As Zstring Ptr
Declare Function VECTOR3_positionEquals Cdecl Alias "VECTOR3_positionEquals" (rhs As Zstring Ptr, tolerance As Single, v As Zstring Ptr) As Integer
Declare Function VECTOR3_positionCloses Cdecl Alias "VECTOR3_positionCloses" (rhs As Zstring Ptr, tolerance As Single, v As Zstring Ptr) As Integer
Declare Function VECTOR3_directionEquals Cdecl Alias "VECTOR3_directionEquals" (rhs As Zstring Ptr, tolerance As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR3_toStr Cdecl Alias "VECTOR3_toStr" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VECTOR3_delete Cdecl Alias "VECTOR3_delete" (v As Zstring Ptr)
Declare Function VECTOR3_getX Cdecl Alias "VECTOR3_getX" (v As Zstring Ptr) As Single
Declare Function VECTOR3_getY Cdecl Alias "VECTOR3_getY" (v As Zstring Ptr) As Single
Declare Function VECTOR3_getZ Cdecl Alias "VECTOR3_getZ" (v As Zstring Ptr) As Single
Declare Sub      VECTOR3_setX Cdecl Alias "VECTOR3_setX" (x As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_setY Cdecl Alias "VECTOR3_setY" (y As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_setZ Cdecl Alias "VECTOR3_setZ" (z As Single, v As Zstring Ptr)
Declare Sub      VECTOR3_setAll Cdecl Alias "VECTOR3_setAll" (x As Single, y As Single, z As Single, v As Zstring Ptr)
Declare Function VECTOR3_ZERO Cdecl Alias "VECTOR3_ZERO" () As Zstring Ptr
Declare Function VECTOR3_UNIT_X Cdecl Alias "VECTOR3_UNIT_X" () As Zstring Ptr
Declare Function VECTOR3_UNIT_Y Cdecl Alias "VECTOR3_UNIT_Y" () As Zstring Ptr
Declare Function VECTOR3_UNIT_Z Cdecl Alias "VECTOR3_UNIT_Z" () As Zstring Ptr
Declare Function VECTOR3_NEGATIVE_UNIT_X Cdecl Alias "VECTOR3_NEGATIVE_UNIT_X" () As Zstring Ptr
Declare Function VECTOR3_NEGATIVE_UNIT_Y Cdecl Alias "VECTOR3_NEGATIVE_UNIT_Y" () As Zstring Ptr
Declare Function VECTOR3_NEGATIVE_UNIT_Z Cdecl Alias "VECTOR3_NEGATIVE_UNIT_Z" () As Zstring Ptr
Declare Function VECTOR3_UNIT_SCALE Cdecl Alias "VECTOR3_UNIT_SCALE" () As Zstring Ptr
 
' Vector4
Declare Function VECTOR4_createEmpty Cdecl Alias "VECTOR4_createEmpty" () As Integer Ptr
Declare Function VECTOR4_create Cdecl Alias "VECTOR4_create" (fX As Single, fY As Single, fZ As Single, fW As Single) As Integer Ptr
Declare Function VECTOR4_createWithFloatPtr Cdecl Alias "VECTOR4_createWithFloatPtr" (r As Single Ptr) As Integer Ptr
Declare Function VECTOR4_createWithScalar Cdecl Alias "VECTOR4_createWithScalar" (scalar As Single) As Integer Ptr
Declare Function VECTOR4_createWithVector3 Cdecl Alias "VECTOR4_createWithVector3" (rkVector As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_createWithVector4 Cdecl Alias "VECTOR4_createWithVector4" (rkVector As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_getValue Cdecl Alias "VECTOR4_getValue" (i As Integer, v As Zstring Ptr) As Single
Declare Sub      VECTOR4_setValue Cdecl Alias "VECTOR4_setValue" (i As Integer, value As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_eq Cdecl Alias "VECTOR4_eq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR4_eqWithScalar Cdecl Alias "VECTOR4_eqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Function VECTOR4_isEqualTo Cdecl Alias "VECTOR4_isEqualTo" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Function VECTOR4_isNotEqualTo Cdecl Alias "VECTOR4_isNotEqualTo" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer
Declare Sub      VECTOR4_eqWithVector3 Cdecl Alias "VECTOR4_eqWithVector3" (rhs As Zstring Ptr, v As Zstring Ptr)
Declare Function VECTOR4_addWithScalar Cdecl Alias "VECTOR4_addWithScalar" (fScalar As Single, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_add Cdecl Alias "VECTOR4_add" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_subWithScalar Cdecl Alias "VECTOR4_subWithScalar" (fScalar As Single, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_sub Cdecl Alias "VECTOR4_sub" (rkVector As Zstring Ptr, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_mulWithScalar Cdecl Alias "VECTOR4_mulWithScalar" (fScalar As Single, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_mul Cdecl Alias "VECTOR4_mul" (rhs As Zstring Ptr, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_divWithScalar Cdecl Alias "VECTOR4_divWithScalar" (fScalar As Single, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_div Cdecl Alias "VECTOR4_div" (rhs As Zstring Ptr, v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_positive Cdecl Alias "VECTOR4_positive" (v As Zstring Ptr) As Integer Ptr
Declare Function VECTOR4_negative Cdecl Alias "VECTOR4_negative" (v As Zstring Ptr) As Integer Ptr
Declare Sub      VECTOR4_addEq Cdecl Alias "VECTOR4_addEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR4_subEq Cdecl Alias "VECTOR4_subEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR4_mulEqWithScalar Cdecl Alias "VECTOR4_mulEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_addEqWithScalar Cdecl Alias "VECTOR4_addEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_subEqWithScalar Cdecl Alias "VECTOR4_subEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_mulEq Cdecl Alias "VECTOR4_mulEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Sub      VECTOR4_divEqWithScalar Cdecl Alias "VECTOR4_divEqWithScalar" (fScalar As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_divEq Cdecl Alias "VECTOR4_divEq" (rkVector As Zstring Ptr, v As Zstring Ptr)
Declare Function VECTOR4_dotProduct Cdecl Alias "VECTOR4_dotProduct" (vec As Zstring Ptr, v As Zstring Ptr) As Single
Declare Function VECTOR4_toStr Cdecl Alias "VECTOR4_toStr" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VECTOR4_delete Cdecl Alias "VECTOR4_delete" (v As Zstring Ptr)
Declare Function VECTOR4_getW Cdecl Alias "VECTOR4_getW" (v As Zstring Ptr) As Single
Declare Function VECTOR4_getX Cdecl Alias "VECTOR4_getX" (v As Zstring Ptr) As Single
Declare Function VECTOR4_getY Cdecl Alias "VECTOR4_getY" (v As Zstring Ptr) As Single
Declare Function VECTOR4_getZ Cdecl Alias "VECTOR4_getZ" (v As Zstring Ptr) As Single
Declare Sub      VECTOR4_setW Cdecl Alias "VECTOR4_setW" (w As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_setX Cdecl Alias "VECTOR4_setX" (x As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_setY Cdecl Alias "VECTOR4_setY" (y As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_setZ Cdecl Alias "VECTOR4_setZ" (z As Single, v As Zstring Ptr)
Declare Sub      VECTOR4_setAll Cdecl Alias "VECTOR4_setAll" (x As Single, y As Single, z As Single, w As Single, v As Zstring Ptr)
Declare Function VECTOR4_ZERO Cdecl Alias "VECTOR4_ZERO" () As Integer Ptr


' Render Operation
Declare Function RENDEROP_create Cdecl Alias "RENDEROP_create" () As Zstring Ptr
Declare Sub      RENDEROP_delete Cdecl Alias "RENDEROP_delete" (o As Zstring Ptr)
Declare Function RENDEROP_getVertexData Cdecl Alias "RENDEROP_getVertexData" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      RENDEROP_setVertexData Cdecl Alias "RENDEROP_setVertexData" (vertexData As Zstring Ptr, o As Zstring Ptr)
Declare Function RENDEROP_getOperationType Cdecl Alias "RENDEROP_getOperationType" (o As Zstring Ptr) As Integer
Declare Sub      RENDEROP_setOperationType Cdecl Alias "RENDEROP_setOperationType" (operationType As Integer, o As Zstring Ptr)
Declare Function RENDEROP_getUseIndexes Cdecl Alias "RENDEROP_getUseIndexes" (o As Zstring Ptr) As Byte
Declare Sub      RENDEROP_setUseIndexes Cdecl Alias "RENDEROP_setUseIndexes" (useIndexes As Byte, o As Zstring Ptr)
Declare Function RENDEROP_getIndexData Cdecl Alias "RENDEROP_getIndexData" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      RENDEROP_setIndexData Cdecl Alias "RENDEROP_setIndexData" (indexData As Zstring Ptr, o As Zstring Ptr)
Declare Function RENDEROP_getSrcRenderable Cdecl Alias "RENDEROP_getSrcRenderable" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      RENDEROP_setSrcRenderable Cdecl Alias "RENDEROP_setSrcRenderable" (srcRenderable As Zstring Ptr, o As Zstring Ptr)


' Vertex Data
Declare Function VERTEXDATA_create Cdecl Alias "VERTEXDATA_create" () As Zstring Ptr
Declare Sub      VERTEXDATA_delete Cdecl Alias "VERTEXDATA_delete" (v As Zstring Ptr)
Declare Function VERTEXDATA_getVertexDeclaration Cdecl Alias "VERTEXDATA_getVertexDeclaration" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VERTEXDATA_setVertexDeclaration Cdecl Alias "VERTEXDATA_setVertexDeclaration" (vertexDeclaration As Zstring Ptr, v As Zstring Ptr)
Declare Function VERTEXDATA_getVertexBufferBinding Cdecl Alias "VERTEXDATA_getVertexBufferBinding" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VERTEXDATA_setVertexBufferBinding Cdecl Alias "VERTEXDATA_setVertexBufferBinding" (vertexBufferBinding As Zstring Ptr, v As Zstring Ptr)
Declare Function VERTEXDATA_getVertexStart Cdecl Alias "VERTEXDATA_getVertexStart" (v As Zstring Ptr) As Integer
Declare Sub      VERTEXDATA_setVertexStart Cdecl Alias "VERTEXDATA_setVertexStart" (vertexStart As Integer, v As Zstring Ptr)
Declare Function VERTEXDATA_getVertexCount Cdecl Alias "VERTEXDATA_getVertexCount" (v As Zstring Ptr) As Integer
Declare Sub      VERTEXDATA_setVertexCount Cdecl Alias "VERTEXDATA_setVertexCount" (vertexCount As Integer, v As Zstring Ptr)
Declare Function VERTEXDATA_getHwAnimationDataList Cdecl Alias "VERTEXDATA_getHwAnimationDataList" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VERTEXDATA_setHwAnimationDataList Cdecl Alias "VERTEXDATA_setHwAnimationDataList" (hwAnimationDataList As Zstring Ptr, v As Zstring Ptr)
Declare Function VERTEXDATA_getHwAnimDataItemsUsed Cdecl Alias "VERTEXDATA_getHwAnimDataItemsUsed" (v As Zstring Ptr) As Integer
Declare Sub      VERTEXDATA_setHwAnimDataItemsUsed Cdecl Alias "VERTEXDATA_setHwAnimDataItemsUsed" (hwAnimDataItemsUsed As Integer, v As Zstring Ptr)
Declare Function VERTEXDATA_getHardwareShadowVolWBuffer Cdecl Alias "VERTEXDATA_getHardwareShadowVolWBuffer" (v As Zstring Ptr) As Zstring Ptr
Declare Sub      VERTEXDATA_setHardwareShadowVolWBuffer Cdecl Alias "VERTEXDATA_setHardwareShadowVolWBuffer" (hardwareShadowVolWBuffer As Zstring Ptr, v As Zstring Ptr)

' Index Data
Declare Sub      INDEXDATA_setIndexBuffer Cdecl Alias "INDEXDATA_setIndexBuffer" (indexBuffer As Zstring Ptr, d As Zstring Ptr)
Declare Sub      INDEXDATA_setIndexStart Cdecl Alias "INDEXDATA_setIndexStart" (indexStart As Integer, d As Zstring Ptr)
Declare Sub      INDEXDATA_setIndexCount Cdecl Alias "INDEXDATA_setIndexCount" (indexCount As Integer , d As Zstring Ptr  )

' Vertex Declaration
Declare Function VERTEXDECLARATION_getElementCount Cdecl Alias "VERTEXDECLARATION_getElementCount" (v As Zstring Ptr) As Integer
Declare Function VERTEXDECLARATION_addElement Cdecl Alias "VERTEXDECLARATION_addElement" (source As Integer, offset As Integer, theType As Integer, semantic As Integer, index As Integer, d As Zstring Ptr) As Zstring Ptr

' Vertex Buffer Binding
Declare Sub      VBB_setBinding Cdecl Alias "VBB_setBinding" (index As Integer, buffer As Zstring Ptr, b As Zstring Ptr)
 
' Hardware Vertex Buffer
Declare Function HVB_getSizeInBytes Cdecl Alias "HVB_getSizeInBytes" (b As Zstring Ptr) As Integer
Declare Sub      HVB_writeDataWithFloatList Cdecl Alias "HVB_writeDataWithFloatList" (offset As Integer, length As Integer, pSource As Zstring Ptr, discardWholeBuffer As Byte, b As Zstring Ptr)
Declare Sub      HVB_delete Cdecl Alias "HVB_delete" (b As Zstring Ptr)

' Hardware Index Buffer
Declare Function HIB_getSizeInBytes Cdecl Alias "HIB_getSizeInBytes" (b As Zstring Ptr) As Integer
Declare Sub      HIB_writeDataWithIndexList Cdecl Alias "HIB_writeDataWithIndexList" (offset As Integer, length As Integer, pSource As Zstring Ptr, discardWholeBuffer As Byte, b As Zstring Ptr)
Declare Sub      HIB_delete Cdecl Alias "HIB_delete" (b As Zstring Ptr)

' Simple Spline
Declare Function SIMPLESPLINE_create Cdecl Alias "SIMPLESPLINE_create" () As Zstring Ptr
Declare Sub      SIMPLESPLINE_delete Cdecl Alias "SIMPLESPLINE_delete" (spline As Zstring Ptr)
Declare Sub      SIMPLESPLINE_addPoint Cdecl Alias "SIMPLESPLINE_addPoint" (p As Zstring Ptr, spline As Zstring Ptr)
Declare Function SIMPLESPLINE_getPoint Cdecl Alias "SIMPLESPLINE_getPoint" (index As Short, spline As Zstring Ptr) As Zstring Ptr
Declare Function SIMPLESPLINE_getNumPoints Cdecl Alias "SIMPLESPLINE_getNumPoints" (spline As Zstring Ptr) As Short
Declare Sub      SIMPLESPLINE_clear Cdecl Alias "SIMPLESPLINE_clear" (spline As Zstring Ptr)
Declare Sub      SIMPLESPLINE_updatePoint Cdecl Alias "SIMPLESPLINE_updatePoint" (index As Short, Value As Zstring Ptr, spline As Zstring Ptr)
Declare Function SIMPLESPLINE_interpolate Cdecl Alias "SIMPLESPLINE_interpolate" (t As Single, spline As Zstring Ptr) As Zstring Ptr
Declare Function SIMPLESPLINE_interpolateWithIndex Cdecl Alias "SIMPLESPLINE_interpolateWithIndex" (fromIndex As Integer, t As Single, spline As Zstring Ptr) As Integer Ptr
Declare Sub      SIMPLESPLINE_setAutoCalculate Cdecl Alias "SIMPLESPLINE_setAutoCalculate" (autoCalc As Integer, spline As Zstring Ptr)
Declare Sub      SIMPLESPLINE_recalcTangents Cdecl Alias "SIMPLESPLINE_recalcTangents" (spline As Zstring Ptr)
 

' Static Geometry
Declare Function SGEOMETRY_getName Cdecl Alias "SGEOMETRY_getName" (g As Zstring Ptr) As Zstring Ptr
Declare Sub      SGEOMETRY_addEntity Cdecl Alias "SGEOMETRY_addEntity" (ent As Zstring Ptr, Position As Zstring Ptr, orientation As Zstring Ptr, scale As Zstring Ptr, g As Zstring Ptr)
Declare Sub      SGEOMETRY_addSceneNode Cdecl Alias "SGEOMETRY_addSceneNode" (NODE As Zstring Ptr, g As Zstring Ptr)
Declare Sub      SGEOMETRY_build Cdecl Alias "SGEOMETRY_build" (g As Zstring Ptr)
Declare Sub      SGEOMETRY_destroy Cdecl Alias "SGEOMETRY_destroy" (g As Zstring Ptr)
Declare Sub      SGEOMETRY_reset Cdecl Alias "SGEOMETRY_reset" (g As Zstring Ptr)
Declare Sub      SGEOMETRY_setRenderingDistance Cdecl Alias "SGEOMETRY_setRenderingDistance" (dist As Single, g As Zstring Ptr)
Declare Function SGEOMETRY_getRenderingDistance Cdecl Alias "SGEOMETRY_getRenderingDistance" (g As Zstring Ptr) As Single
Declare Function SGEOMETRY_getSquaredRenderingDistance Cdecl Alias "SGEOMETRY_getSquaredRenderingDistance" (g As Zstring Ptr) As Single
Declare Sub      SGEOMETRY_setVisible Cdecl Alias "SGEOMETRY_setVisible" (visible As Byte, g As Zstring Ptr)
Declare Function SGEOMETRY_isVisible Cdecl Alias "SGEOMETRY_isVisible" (g As Zstring Ptr) As Byte
Declare Sub      SGEOMETRY_setCastShadows Cdecl Alias "SGEOMETRY_setCastShadows" (castShadows As Byte, g As Zstring Ptr)
Declare Function SGEOMETRY_getCastShadows Cdecl Alias "SGEOMETRY_getCastShadows" (g As Zstring Ptr) As Byte
Declare Sub      SGEOMETRY_setRegionDimensions Cdecl Alias "SGEOMETRY_setRegionDimensions" (Size As Zstring Ptr, g As Zstring Ptr)
Declare Function SGEOMETRY_getRegionDimensions Cdecl Alias "SGEOMETRY_getRegionDimensions" (g As Zstring Ptr) As Zstring Ptr
Declare Sub      SGEOMETRY_setOrigin Cdecl Alias "SGEOMETRY_setOrigin" (origin As Zstring Ptr, g As Zstring Ptr)
Declare Function SGEOMETRY_getOrigin Cdecl Alias "SGEOMETRY_getOrigin" (g As Zstring Ptr) As Integer Ptr
Declare Sub      SGEOMETRY_setRenderQueueGroup Cdecl Alias "SGEOMETRY_setRenderQueueGroup" (queueID As Integer, g As Zstring Ptr)
Declare Function SGEOMETRY_getRenderQueueGroup Cdecl Alias "SGEOMETRY_getRenderQueueGroup" (g As Zstring Ptr) As Integer
Declare Sub      SGEOMETRY_dump Cdecl Alias "SGEOMETRY_dump" (filename_ As Zstring Ptr, g As Zstring Ptr)


' Ray
Declare Function OGRERAY_createEmpty Cdecl Alias "OGRERAY_createEmpty" () As Zstring Ptr
Declare Function OGRERAY_create Cdecl Alias "OGRERAY_create" ( origin As Zstring Ptr , direction As Zstring Ptr ) As Zstring Ptr
Declare Sub      OGRERAY_setOrigin Cdecl Alias "OGRERAY_setOrigin" (origin As Zstring Ptr, r As Zstring Ptr)
Declare Function OGRERAY_getOrigin Cdecl Alias "OGRERAY_getOrigin" (r As Zstring Ptr) As Zstring Ptr
Declare Sub      OGRERAY_setDirection Cdecl Alias "OGRERAY_setDirection" ( dir As Zstring Ptr , r As Zstring Ptr )
Declare Function OGRERAY_getDirection Cdecl Alias "OGRERAY_getDirection" (r As Zstring Ptr) As Zstring Ptr
Declare Function OGRERAY_getPoint Cdecl Alias "OGRERAY_getPoint" (t As Single, r As Zstring Ptr) As Zstring Ptr
Declare Function OGRERAY_intersectsPlane Cdecl Alias "OGRERAY_intersectsPlane" (p As Zstring Ptr, r As Zstring Ptr) As Integer Ptr
Declare Function OGRERAY_intersectsPlaneBoundedVolume Cdecl Alias "OGRERAY_intersectsPlaneBoundedVolume" (p As Zstring Ptr, r As Zstring Ptr) As Integer Ptr
Declare Function OGRERAY_intersectsSphere Cdecl Alias "OGRERAY_intersectsSphere" (s As Zstring Ptr, r As Zstring Ptr) As Integer Ptr
Declare Function OGRERAY_intersectsAxisAlignedBox Cdecl Alias "OGRERAY_intersectsAxisAlignedBox" (box As Zstring Ptr, r As Zstring Ptr) As Integer Ptr
Declare Function OGRERAY_toStr Cdecl Alias "OGRERAY_toStr" (r As Zstring Ptr) As Zstring Ptr
Declare Sub      OGRERAY_delete Cdecl Alias "OGRERAY_delete" (r As Zstring Ptr)

' RenderQueue
Declare Function RQ_getQueueGroup Cdecl Alias "RQ_getQueueGroup" ( quid As Integer , rq As Zstring Ptr ) As Zstring Ptr

' RenderQueue
Declare Sub      RQG_setShadowsEnabled Cdecl Alias "RQG_setShadowsEnabled" ( enabled As Integer , rqg As Zstring Ptr )
Declare Function RQG_getShadowsEnabled Cdecl Alias "RQG_getShadowsEnabled" ( rqg As Zstring Ptr ) As Integer

' Matrix3
Declare Function MATRIX3_createEmpty Cdecl Alias "MATRIX3_createEmpty" () As Zstring Ptr
Declare Function MATRIX3_createWithMatrix3 Cdecl Alias "MATRIX3_createWithMatrix3" (mat As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_create Cdecl Alias "MATRIX3_create" (fEntry00 As Single, fEntry01 As Single, fEntry02 As Single, fEntry10 As Single, fEntry11 As Single, fEntry12 As Single, fEntry20 As Single, fEntry21 As Single, fEntry22 As Single) As Zstring Ptr
Declare Function MATRIX3_getValue Cdecl Alias "MATRIX3_getValue" (iRow As Integer, iColumn As Integer, matrix As Zstring Ptr) As Single
Declare Function MATRIX3_GetColumn Cdecl Alias "MATRIX3_GetColumn" (iCol As Integer, matrix As Zstring Ptr) As Zstring Ptr
Declare Sub      MATRIX3_SetColumn Cdecl Alias "MATRIX3_SetColumn" (iCol As Integer, vec As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_FromAxes Cdecl Alias "MATRIX3_FromAxes" (xAxis As Zstring Ptr, yAxis As Zstring Ptr, zAxis As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_eq Cdecl Alias "MATRIX3_eq" (rkMatrix As Zstring Ptr, matrix As Zstring Ptr)
Declare Function MATRIX3_isEqualTo Cdecl Alias "MATRIX3_isEqualTo" (rkMatrix As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_isNotEqualTo Cdecl Alias "MATRIX3_isNotEqualTo" (rkMatrix As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_add Cdecl Alias "MATRIX3_add" (rkMatrix As Zstring Ptr, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_sub Cdecl Alias "MATRIX3_sub" (rkMatrix As Zstring Ptr, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_mul Cdecl Alias "MATRIX3_mul" (rkMatrix As Zstring Ptr, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_neg Cdecl Alias "MATRIX3_neg" (matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_mulWithVector3 Cdecl Alias "MATRIX3_mulWithVector3" (rkVector As Zstring Ptr, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_mulWithScalar Cdecl Alias "MATRIX3_mulWithScalar" (fScalar As Single, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_Transpose Cdecl Alias "MATRIX3_Transpose" (matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_InverseWithMatrix3 Cdecl Alias "MATRIX3_InverseWithMatrix3" (rkInverse As Zstring Ptr, fTolerance As Single, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_Inverse Cdecl Alias "MATRIX3_Inverse" (fTolerance As Single, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX3_Determinant Cdecl Alias "MATRIX3_Determinant" (matrix As Zstring Ptr) As Single
Declare Sub      MATRIX3_SingularValueDecomposition Cdecl Alias "MATRIX3_SingularValueDecomposition" (rkL As Zstring Ptr, rkS As Zstring Ptr, rkR As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_Orthonormalize Cdecl Alias "MATRIX3_Orthonormalize" (matrix As Zstring Ptr)
Declare Sub      MATRIX3_QDUDecomposition Cdecl Alias "MATRIX3_QDUDecomposition" (rkQ As Zstring Ptr, rkD As Zstring Ptr, rkU As Zstring Ptr, matrix As Zstring Ptr)
Declare Function MATRIX3_SpectralNorm Cdecl Alias "MATRIX3_SpectralNorm" (matrix As Zstring Ptr) As Single
Declare Sub      MATRIX3_ToAxisAngle Cdecl Alias "MATRIX3_ToAxisAngle" (rkAxis As Zstring Ptr, rfAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_ToAxisAngleWithDegrees Cdecl Alias "MATRIX3_ToAxisAngleWithDegrees" (rkAxis As Zstring Ptr, rfAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_FromAxisAngle Cdecl Alias "MATRIX3_FromAxisAngle" (rkAxis As Zstring Ptr, fRadians As Zstring Ptr, matrix As Zstring Ptr)
Declare Function MATRIX3_ToEulerAnglesXYZ Cdecl Alias "MATRIX3_ToEulerAnglesXYZ" (rfYAngle As Zstring Ptr, rfPAngle As Zstring Ptr, rfRAngle As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_ToEulerAnglesXZY Cdecl Alias "MATRIX3_ToEulerAnglesXZY" (rfYAngle As Zstring Ptr, rfPAngle As Zstring Ptr, rfRAngle As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_ToEulerAnglesYXZ Cdecl Alias "MATRIX3_ToEulerAnglesYZX" (rfYAngle As Zstring Ptr, rfPAngle As Zstring Ptr, rfRAngle As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_ToEulerAnglesYZX Cdecl Alias "MATRIX3_ToEulerAnglesYZX" (rfYAngle As Zstring Ptr, rfPAngle As Zstring Ptr, rfRAngle As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_ToEulerAnglesZXY Cdecl Alias "MATRIX3_ToEulerAnglesZXY" (rfYAngle As Zstring Ptr, rfPAngle As Zstring Ptr, rfRAngle As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Function MATRIX3_ToEulerAnglesZYX Cdecl Alias "MATRIX3_ToEulerAnglesZYX" (rfYAngle As Zstring Ptr, rfPAngle As Zstring Ptr, rfRAngle As Zstring Ptr, matrix As Zstring Ptr) As Integer
Declare Sub      MATRIX3_FromEulerAnglesXYZ Cdecl Alias "MATRIX3_FromEulerAnglesXYZ" (fYAngle As Zstring Ptr, fPAngle As Zstring Ptr, fRAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_FromEulerAnglesXZY Cdecl Alias "MATRIX3_FromEulerAnglesXYZ" (fYAngle As Zstring Ptr, fPAngle As Zstring Ptr, fRAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_FromEulerAnglesYXZ Cdecl Alias "MATRIX3_FromEulerAnglesXYZ" (fYAngle As Zstring Ptr, fPAngle As Zstring Ptr, fRAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_FromEulerAnglesYZX Cdecl Alias "MATRIX3_FromEulerAnglesXYZ" (fYAngle As Zstring Ptr, fPAngle As Zstring Ptr, fRAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_FromEulerAnglesZXY Cdecl Alias "MATRIX3_FromEulerAnglesXYZ" (fYAngle As Zstring Ptr, fPAngle As Zstring Ptr, fRAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_FromEulerAnglesZYX Cdecl Alias "MATRIX3_FromEulerAnglesXYZ" (fYAngle As Zstring Ptr, fPAngle As Zstring Ptr, fRAngle As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_EigenSolveSymmetric Cdecl Alias "MATRIX3_EigenSolveSymmetric" (k1 As Single, k2 As Single, k3 As Single, v1 As Zstring Ptr, v2 As Zstring Ptr, v3 As Zstring Ptr, matrix As Zstring Ptr)
Declare Sub      MATRIX3_delete Cdecl Alias "MATRIX3_delete" (mat As Zstring Ptr)
Declare Function MATRIX3_toStr Cdecl Alias "MATRIX3_toStr" (mat As Zstring Ptr) As Zstring Ptr
Declare Sub      MATRIX3_TensorProduct Cdecl Alias "MATRIX3_TensorProduct" (rkU As Zstring Ptr, rkV As Zstring Ptr, rkProduct As Zstring Ptr)
Declare Function MATRIX3_EPSILON Cdecl Alias "MATRIX3_EPSILON" () As Single
Declare Function MATRIX3_ZERO Cdecl Alias "MATRIX3_ZERO" () As Zstring Ptr
Declare Function MATRIX3_IDENTITY Cdecl Alias "MATRIX3_IDENTITY" () As Zstring Ptr


' Matrix4
Declare Function MATRIX4_createEmpty Cdecl Alias "MATRIX4_createEmpty" () As Zstring Ptr
Declare Function MATRIX4_create Cdecl Alias "MATRIX4_create" ( m00 As Single , m01 As Single , m02 As Single , m03 As Single , m10 As Single , m11 As Single , m12 As Single , m13 As Single , m20 As Single , m21 As Single , m22 As Single , m23 As Single , m30 As Single , m31 As Single , m32 As Single , m33 As Single ) As Zstring Ptr
Declare Function MATRIX4_createWithMatrix3 Cdecl Alias "MATRIX4_createWithMatrix3" ( m3x3 As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_createWithQuaternion Cdecl Alias "MATRIX4_createWithQuaternion" ( rot As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_getValue Cdecl Alias "MATRIX4_getValue" ( iRow As Integer , iColumn As Integer , matrix As Zstring Ptr ) As Single
Declare Function MATRIX4_concatenate Cdecl Alias "MATRIX4_concatenate" ( m2 As Zstring Ptr , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_mulWithVector3 Cdecl Alias "MATRIX4_mulWithVector3" (v As Zstring Ptr, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX4_mulWithVector4 Cdecl Alias "MATRIX4_mulWithVector4" ( v As Zstring Ptr , matrix As Zstring Ptr ) As Integer Ptr
Declare Function MATRIX4_mulWithPlane Cdecl Alias "MATRIX4_mulWithPlane" ( p As Zstring Ptr , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_add Cdecl Alias "MATRIX4_add" ( m2 As Zstring Ptr , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_sub Cdecl Alias "MATRIX4_sub" ( m2 As Zstring Ptr , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_isEqualTo Cdecl Alias "MATRIX4_isEqualTo" ( m2 As Zstring Ptr , matrix As Zstring Ptr ) As Integer
Declare Function MATRIX4_isNotEqualTo Cdecl Alias "MATRIX4_isNotEqualTo" ( m2 As Zstring Ptr , matrix As Zstring Ptr ) As Integer
Declare Sub      MATRIX4_eq Cdecl Alias "MATRIX4_eq" ( m2 As Zstring Ptr , matrix As Zstring Ptr )
Declare Sub      MATRIX4_eqWithMatrix3 Cdecl Alias "MATRIX4_eqWithMatrix3" ( mat3 As Zstring Ptr , matrix As Zstring Ptr )
Declare Function MATRIX4_transpose Cdecl Alias "MATRIX4_transpose" ( matrix As Zstring Ptr ) As Zstring Ptr
Declare Sub      MATRIX4_setTrans Cdecl Alias "MATRIX4_setTrans" ( v As Zstring Ptr , matrix As Zstring Ptr )
Declare Function MATRIX4_getTrans Cdecl Alias "MATRIX4_getTrans" (matrix As Zstring Ptr) As Zstring Ptr
Declare Sub      MATRIX4_makeTrans Cdecl Alias "MATRIX4_makeTrans" ( v As Zstring Ptr , matrix As Zstring Ptr )
Declare Sub      MATRIX4_makeTransWithFloat Cdecl Alias "MATRIX4_makeTransWithFloat" ( tx As Single , ty As Single , tz As Single , matrix As Zstring Ptr )
Declare Sub      MATRIX4_setScale Cdecl Alias "MATRIX4_setScale" ( v As Zstring Ptr , matrix As Zstring Ptr )
Declare Sub      MATRIX4_extract3x3Matrix Cdecl Alias "MATRIX4_extract3x3Matrix" ( m3x3 As Zstring Ptr , matrix As Zstring Ptr )
Declare Function MATRIX4_extractQuaternion Cdecl Alias "MATRIX4_extractQuaternion" (matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX4_mulWithScalar Cdecl Alias "MATRIX4_mulWithScalar" ( scalar As Single , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_adjoint Cdecl Alias "MATRIX4_adjoint" ( matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_determinant Cdecl Alias "MATRIX4_determinant" ( matrix As Zstring Ptr ) As Single
Declare Function MATRIX4_inverse Cdecl Alias "MATRIX4_inverse" ( matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_makeTransform Cdecl Alias "MATRIX4_makeTransform" ( position As Zstring Ptr , scale As Zstring Ptr , orientation As Zstring Ptr , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_makeInverseTransform Cdecl Alias "MATRIX4_makeInverseTransform" ( position As Zstring Ptr , scale As Zstring Ptr , orientation As Zstring Ptr , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_isAffine Cdecl Alias "MATRIX4_isAffine" ( matrix As Zstring Ptr ) As Integer
Declare Function MATRIX4_inverseAffine Cdecl Alias "MATRIX4_inverseAffine" ( matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_concatenateAffine Cdecl Alias "MATRIX4_concatenateAffine" ( m2 As Zstring Ptr , matrix As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_transformAffine Cdecl Alias "MATRIX4_transformAffine" (v As Zstring Ptr, matrix As Zstring Ptr) As Zstring Ptr
Declare Function MATRIX4_transformAffineWithVector4 Cdecl Alias "MATRIX4_transformAffineWithVector4" ( v As Zstring Ptr , matrix As Zstring Ptr ) As Integer Ptr
Declare Function MATRIX4_getStaticTrans Cdecl Alias "MATRIX4_getStaticTrans" ( v As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_getStaticTransWithFloat Cdecl Alias "MATRIX4_getStaticTransWithFloat" ( t_x As Single , t_y As Single , t_z As Single ) As Zstring Ptr
Declare Function MATRIX4_getStaticScale Cdecl Alias "MATRIX4_getStaticScale" ( v As Zstring Ptr ) As Zstring Ptr
Declare Function MATRIX4_getStaticScaleWithFloat Cdecl Alias "MATRIX4_getStaticScaleWithFloat" ( s_x As Single , s_y As Single , s_z As Single ) As Zstring Ptr
Declare Function MATRIX4_ZERO Cdecl Alias "MATRIX4_ZERO" () As Zstring Ptr
Declare Function MATRIX4_IDENTITY Cdecl Alias "MATRIX4_IDENTITY" () As Zstring Ptr
Declare Function MATRIX4_CLIPSPACE2DTOIMAGESPACE Cdecl Alias "MATRIX4_CLIPSPACE2DTOIMAGESPACE" () As Zstring Ptr
Declare Function MATRIX4_toStr Cdecl Alias "MATRIX4_toStr" ( matrix As Zstring Ptr ) As Zstring Ptr
Declare Sub      MATRIX4_delete Cdecl Alias "MATRIX4_delete" ( matrix As Zstring Ptr )

' Overlay Manager
Declare Function OM_create Cdecl Alias "OM_create" (name_ As Zstring Ptr) As Zstring Ptr
Declare Function OM_getByName Cdecl Alias "OM_getByName" (name_ As Zstring Ptr) As Zstring Ptr
Declare Sub      OM_destroyWithName Cdecl Alias "OM_destroyWithName" (name_ As Zstring Ptr)
Declare Sub      OM_destroyWithInstance Cdecl Alias "OM_destroyWithInstance" (overlay As Zstring Ptr)
Declare Sub      OM_destroyAll Cdecl Alias "OM_destroyAll" ()
Declare Function OM_getOverlayIterator Cdecl Alias "OM_getOverlayIterator" () As Zstring Ptr
Declare Sub      OM_queueOverlaysForRendering Cdecl Alias "OM_queueOverlaysForRendering" (cam As Zstring Ptr, pQueue As Zstring Ptr, vp As Zstring Ptr)
Declare Function OM_hasViewportChanged Cdecl Alias "OM_hasViewportChanged" () As Byte
Declare Function OM_getViewportHeight Cdecl Alias "OM_getViewportHeight" () As Integer
Declare Function OM_getViewportWidth Cdecl Alias "OM_getViewportWidth" () As Integer
Declare Function OM_getViewportAspectRatio Cdecl Alias "OM_getViewportAspectRatio" () As Single
Declare Function OM_createOverlayElement Cdecl Alias "OM_createOverlayElement" (typename_ As Zstring Ptr, instancename_ As Zstring Ptr, isTemplate As Byte) As Zstring Ptr
Declare Function OM_getOverlayElement Cdecl Alias "OM_getOverlayElement" (name_ As Zstring Ptr, isTemplate As Byte) As Zstring Ptr
Declare Sub      OM_destroyOverlayElementWithName Cdecl Alias "OM_destroyOverlayElementWithName" (instancename_ As Zstring Ptr, isTEmplate As Byte)
Declare Sub      OM_destroyOverlayElement Cdecl Alias "OM_destroyOverlayElement" (pInstance As Zstring Ptr, isTemplate As Byte)
Declare Sub      OM_destroyAllOverlayElements Cdecl Alias "OM_destroyAllOverlayElements" (isTEmplate As Byte)
Declare Sub      OM_addOverlayElementFactory Cdecl Alias "OM_addOverlayElementFactory" (elemFactory As Zstring Ptr)
Declare Function OM_createOverlayElementFromTemplate Cdecl Alias "OM_createOverlayElementFromTemplate" (templatename_ As Zstring Ptr, typename_ As Zstring Ptr, instancename_ As Zstring Ptr, isTemplate As Byte) As Zstring Ptr
Declare Function OM_cloneOverlayElementFromTemplate Cdecl Alias "OM_cloneOverlayElementFromTemplate" (templatename_ As Zstring Ptr, instancename_ As Zstring Ptr) As Zstring Ptr
Declare Function OM_createOverlayElementFromFactory Cdecl Alias "OM_createOverlayElementFromFactory" (typename_ As Zstring Ptr, instancename_ As Zstring Ptr) As Zstring Ptr
Declare Function OM_getTemplateIterator Cdecl Alias "OM_getTemplateIterator" () As Zstring Ptr
Declare Function OM_isTemplate Cdecl Alias "OM_isTemplate" (strname_ As Zstring Ptr) As Byte
Declare Function OM_getScriptPatterns Cdecl Alias "OM_getScriptPatterns" () As Zstring Ptr
Declare Sub      OM_parseScript Cdecl Alias "OM_parseScript" (stream As Zstring Ptr, groupname_ As Zstring Ptr)
Declare Function OM_getLoadingOrder Cdecl Alias "OM_getLoadingOrder" () As Single
 

' Overlay
Declare Function OVERLAY_getChild Cdecl Alias "OVERLAY_getChild" (name_ As Zstring Ptr, o As Zstring Ptr) As Zstring Ptr
Declare Function OVERLAY_getName Cdecl Alias "OVERLAY_getName" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAY_setZOrder Cdecl Alias "OVERLAY_setZOrder" (zorder As Integer, o As Zstring Ptr)
Declare Function OVERLAY_getZOrder Cdecl Alias "OVERLAY_getZOrder" (o As Zstring Ptr) As Integer
Declare Function OVERLAY_isVisible Cdecl Alias "OVERLAY_isVisible" (o As Zstring Ptr) As Byte
Declare Function OVERLAY_isInitialised Cdecl Alias "OVERLAY_isInitialised" (o As Zstring Ptr) As Byte
Declare Sub      OVERLAY_show Cdecl Alias "OVERLAY_show" (o As Zstring Ptr)
Declare Sub      OVERLAY_hide Cdecl Alias "OVERLAY_hide" (o As Zstring Ptr)
Declare Sub      OVERLAY_add2D Cdecl Alias "OVERLAY_add2D" (cont As Zstring Ptr, o As Zstring Ptr)
Declare Sub      OVERLAY_remove2D Cdecl Alias "OVERLAY_remove2D" (cont As Zstring Ptr, o As Zstring Ptr)
Declare Sub      OVERLAY_add3D Cdecl Alias "OVERLAY_add3D" (cnode As Zstring Ptr, o As Zstring Ptr)
Declare Sub      OVERLAY_remove3D Cdecl Alias "OVERLAY_remove3D" (node As Zstring Ptr, o As Zstring Ptr)
Declare Sub      OVERLAY_clear Cdecl Alias "OVERLAY_clear" (o As Zstring Ptr)
Declare Sub      OVERLAY_setScroll Cdecl Alias "OVERLAY_setScroll" (x As Single, y As Single, o As Zstring Ptr)
Declare Function OVERLAY_getScrollX Cdecl Alias "OVERLAY_getScrollX" (o As Zstring Ptr) As Single
Declare Function OVERLAY_getScrollY Cdecl Alias "OVERLAY_getScrollY" (o As Zstring Ptr) As Single
Declare Sub      OVERLAY_scroll Cdecl Alias "OVERLAY_scroll" (xoff As Single, yoff As Single, o As Zstring Ptr)
Declare Sub      OVERLAY_setRotate Cdecl Alias "OVERLAY_setRotate" (angle As Zstring Ptr, o As Zstring Ptr)
Declare Function OVERLAY_getRotate Cdecl Alias "OVERLAY_getRotate" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAY_rotate Cdecl Alias "OVERLAY_rotate" (angle As Zstring Ptr, o As Zstring Ptr)
Declare Sub      OVERLAY_setScale Cdecl Alias "OVERLAY_setScale" (x As Single, y As Single, o As Zstring Ptr)
Declare Function OVERLAY_getScaleX Cdecl Alias "OVERLAY_getScaleX" (o As Zstring Ptr) As Single
Declare Function OVERLAY_getScaleY Cdecl Alias "OVERLAY_getScaleY" (o As Zstring Ptr) As Single
Declare Sub      OVERLAY_getWorldTransforms Cdecl Alias "OVERLAY_getWorldTransforms" (xform As Zstring Ptr, o As Zstring Ptr)
Declare Sub      OVERLAY_findVisibleObjects Cdecl Alias "OVERLAY_findVisibleObjects" (cam As Zstring Ptr, queue As Zstring Ptr, o As Zstring Ptr)
Declare Function OVERLAY_findElementAt Cdecl Alias "OVERLAY_findElementAt" (x As Single, y As Single, o As Zstring Ptr) As Zstring Ptr
Declare Function OVERLAY_get2DElementsIterator Cdecl Alias "OVERLAY_get2DElementsIterator" (o As Zstring Ptr) As Zstring Ptr
Declare Function OVERLAY_getOrigin Cdecl Alias "OVERLAY_getOrigin" (o As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAY_notifyOrigin Cdecl Alias "OVERLAY_notifyOrigin" (origin As Zstring Ptr, o As Zstring Ptr)

' Overlay Container
Declare Function OVERLAYCONTAINER_getChild Cdecl Alias "OVERLAYCONTAINER_getChild" (name_ As Zstring Ptr, c As Zstring Ptr) As Zstring Ptr

' Overlay Element
Declare Sub      OVERLAYELEM_initialise Cdecl Alias "OVERLAYELEM_initialise" (e As Zstring Ptr)
Declare Function OVERLAYELEM_getName Cdecl Alias "OVERLAYELEM_getName" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_show Cdecl Alias "OVERLAYELEM_show" (e As Zstring Ptr)
Declare Sub      OVERLAYELEM_hide Cdecl Alias "OVERLAYELEM_hide" (e As Zstring Ptr)
Declare Function OVERLAYELEM_isVisible Cdecl Alias "OVERLAYELEM_isVisible" (e As Zstring Ptr) As Byte
Declare Function OVERLAYELEM_isEnabled Cdecl Alias "OVERLAYELEM_isEnabled" (e As Zstring Ptr) As Byte
Declare Sub      OVERLAYELEM_setEnabled Cdecl Alias "OVERLAYELEM_setEnabled" (b As Byte, e As Zstring Ptr)
Declare Sub      OVERLAYELEM_setDimensions Cdecl Alias "OVERLAYELEM_setDimensions" (width_ As Single, height As Single, e As Zstring Ptr)
Declare Sub      OVERLAYELEM_setPosition Cdecl Alias "OVERLAYELEM_setPosition" (Left As Single, top As Single, e As Zstring Ptr)
Declare Sub      OVERLAYELEM_setWidth Cdecl Alias "OVERLAYELEM_setWidth" (width_ As Single, e As Zstring Ptr)
Declare Function OVERLAYELEM_getWidth Cdecl Alias "OVERLAYELEM_getWidth" (e As Zstring Ptr) As Single
Declare Sub      OVERLAYELEM_setHeight Cdecl Alias "OVERLAYELEM_setHeight" (height As Single, e As Zstring Ptr)
Declare Function OVERLAYELEM_getHeight Cdecl Alias "OVERLAYELEM_getHeight" (e As Zstring Ptr) As Single
Declare Sub      OVERLAYELEM_setLeft Cdecl Alias "OVERLAYELEM_setLeft" (Left As Single, e As Zstring Ptr)
Declare Function OVERLAYELEM_getLeft Cdecl Alias "OVERLAYELEM_getLeft" (e As Zstring Ptr) As Single
Declare Sub      OVERLAYELEM_setTop Cdecl Alias "OVERLAYELEM_setTop" (top As Single, e As Zstring Ptr)
Declare Function OVERLAYELEM_getTop Cdecl Alias "OVERLAYELEM_getTop" (e As Zstring Ptr) As Single
Declare Function OVERLAYELEM_getMaterialName Cdecl Alias "OVERLAYELEM_getMaterialName" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_setMaterialName Cdecl Alias "OVERLAYELEM_setMaterialName" (matname_ As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getMaterial Cdecl Alias "OVERLAYELEM_getMaterial" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_getWorldTransforms Cdecl Alias "OVERLAYELEM_getWorldTransforms" (xform As Zstring Ptr, e As Zstring Ptr)
Declare Sub      OVERLAYELEM_positionsOutOfDate Cdecl Alias "OVERLAYELEM_positionsOutOfDate" (e As Zstring Ptr)
Declare Sub      OVERLAYELEM_update Cdecl Alias "OVERLAYELEM_update" (e As Zstring Ptr)
Declare Sub      OVERLAYELEM_updateFromParent Cdecl Alias "OVERLAYELEM_updateFromParent" (e As Zstring Ptr)
Declare Sub      OVERLAYELEM_notifyParent Cdecl Alias "OVERLAYELEM_notifyParent" (parent As Zstring Ptr, overlay As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getDerivedLeft Cdecl Alias "OVERLAYELEM_getDerivedLeft" (e As Zstring Ptr) As Single
Declare Function OVERLAYELEM_getDerivedTop Cdecl Alias "OVERLAYELEM_getDerivedTop" (e As Zstring Ptr) As Single
Declare Function OVERLAYELEM_getRelativeWidth Cdecl Alias "OVERLAYELEM_getRelativeWidth" (e As Zstring Ptr) As Single
Declare Function OVERLAYELEM_getRelativeHeight Cdecl Alias "OVERLAYELEM_getRelativeHeight" (e As Zstring Ptr) As Single
Declare Sub      OVERLAYELEM_getClippingRegion Cdecl Alias "OVERLAYELEM_getClippingRegion" (clippingRegion As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_notifyZOrder Cdecl Alias "OVERLAYELEM_notifyZOrder" (newZOrder As Integer, e As Zstring Ptr) As Integer
Declare Sub      OVERLAYELEM_notifyWorldTransforms Cdecl Alias "OVERLAYELEM_notifyWorldTransforms" (xform As Zstring Ptr, e As Zstring Ptr)
Declare Sub      OVERLAYELEM_notifyViewport Cdecl Alias "OVERLAYELEM_notifyViewport" (e As Zstring Ptr)
Declare Sub      OVERLAYELEM_updateRenderQueue Cdecl Alias "OVERLAYELEM_updateRenderQueue" (queue As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getTypeName Cdecl Alias "OVERLAYELEM_getTypeName" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_setCaption Cdecl Alias "OVERLAYELEM_setCaption" (text As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getCaption Cdecl Alias "OVERLAYELEM_getCaption" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_setColour Cdecl Alias "OVERLAYELEM_setColour" (col As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getColour Cdecl Alias "OVERLAYELEM_getColour" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_setMetricsMode Cdecl Alias "OVERLAYELEM_setMetricsMode" (gmm As Integer, e As Zstring Ptr)
Declare Function OVERLAYELEM_getMetricsMode Cdecl Alias "OVERLAYELEM_getMetricsMode" (e As Zstring Ptr) As Integer
Declare Sub      OVERLAYELEM_setHorizontalAlignment Cdecl Alias "OVERLAYELEM_setHorizontalAlignment" (gha As Integer, e As Zstring Ptr)
Declare Function OVERLAYELEM_getHorizontalAlignment Cdecl Alias "OVERLAYELEM_getHorizontalAlignment" (e As Zstring Ptr) As Integer
Declare Sub      OVERLAYELEM_setVerticalAlignment Cdecl Alias "OVERLAYELEM_setVerticalAlignment" (gva As Integer, e As Zstring Ptr)
Declare Function OVERLAYELEM_getVerticalAlignment Cdecl Alias "OVERLAYELEM_getVerticalAlignment" (e As Zstring Ptr) As Integer
Declare Function OVERLAYELEM_contains Cdecl Alias "OVERLAYELEM_contains" (x As Single, y As Single, e As Zstring Ptr) As Byte
Declare Function OVERLAYELEM_findElementAt Cdecl Alias "OVERLAYELEM_findElementAt" (x As Single, y As Single, e As Zstring Ptr) As Zstring Ptr
Declare Function OVERLAYELEM_isContainer Cdecl Alias "OVERLAYELEM_isContainer" (e As Zstring Ptr) As Byte
Declare Function OVERLAYELEM_isKeyEnabled Cdecl Alias "OVERLAYELEM_isKeyEnabled" (e As Zstring Ptr) As Byte
Declare Function OVERLAYELEM_isCloneable Cdecl Alias "OVERLAYELEM_isCloneable" (e As Zstring Ptr) As Byte
Declare Sub      OVERLAYELEM_setCloneable Cdecl Alias "OVERLAYELEM_setCloneable" (c As Byte, e As Zstring Ptr)
Declare Function OVERLAYELEM_getParent Cdecl Alias "OVERLAYELEM_getParent" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_setParent Cdecl Alias "OVERLAYELEM_setParent" (parent As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getZOrder Cdecl Alias "OVERLAYELEM_getZOrder" (e As Zstring Ptr) As Integer
Declare Function OVERLAYELEM_getSquaredViewDepth Cdecl Alias "OVERLAYELEM_getSquaredViewDepth" (cam As Zstring Ptr, e As Zstring Ptr) As Single
Declare Function OVERLAYELEM_getLights Cdecl Alias "OVERLAYELEM_getLights" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_copyFromTemplate Cdecl Alias "OVERLAYELEM_copyFromTemplate" (templateOverlay As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_clone Cdecl Alias "OVERLAYELEM_clone" (instancename_ As Zstring Ptr, e As Zstring Ptr) As Zstring Ptr
Declare Function OVERLAYELEM_getSourceTemplate Cdecl Alias "OVERLAYELEM_getSourceTemplate" (e As Zstring Ptr) As Zstring Ptr
Declare Function OVERLAYELEM_getParamDictionary Cdecl Alias "OVERLAYELEM_getParamDictionary" (e As Zstring Ptr) As Zstring Ptr
Declare Function OVERLAYELEM_getParameters Cdecl Alias "OVERLAYELEM_getParameters" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_setParameter Cdecl Alias "OVERLAYELEM_setParameter" (name_ As Zstring Ptr, value As Zstring Ptr, e As Zstring Ptr)
Declare Sub      OVERLAYELEM_setParameterList Cdecl Alias "OVERLAYELEM_setParameterList" (paramList As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getParameter Cdecl Alias "OVERLAYELEM_getParameter" (name_ As Zstring Ptr, e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_copyParametersTo Cdecl Alias "OVERLAYELEM_copyParametersTo" (dest As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getTechnique Cdecl Alias "OVERLAYELEM_getTechnique" (e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_getRenderOperation Cdecl Alias "OVERLAYELEM_getRenderOperation" (op As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getNumWorldTransforms Cdecl Alias "OVERLAYELEM_getNumWorldTransforms" (e As Zstring Ptr) As Integer
Declare Sub      OVERLAYELEM_setUseIdentityProjection Cdecl Alias "OVERLAYELEM_setUseIdentityProjection" (useIdentityProjection As Byte, e As Zstring Ptr)
Declare Function OVERLAYELEM_getUseIdentityProjection Cdecl Alias "OVERLAYELEM_getUseIdentityProjection" (e As Zstring Ptr) As Byte
Declare Sub      OVERLAYELEM_setUseIdentityView Cdecl Alias "OVERLAYELEM_setUseIdentityView" (useIdentityView As Byte, e As Zstring Ptr)
Declare Function OVERLAYELEM_getUseIdentityView Cdecl Alias "OVERLAYELEM_getUseIdentityView" (e As Zstring Ptr) As Byte
Declare Function OVERLAYELEM_getCastsShadows Cdecl Alias "OVERLAYELEM_getCastsShadows" (e As Zstring Ptr) As Byte
Declare Sub      OVERLAYELEM_setCustomParameter Cdecl Alias "OVERLAYELEM_setCustomParameter" (index As Integer, value As Zstring Ptr, e As Zstring Ptr)
Declare Function OVERLAYELEM_getCustomParameter Cdecl Alias "OVERLAYELEM_getCustomParameter" (index As Integer, e As Zstring Ptr) As Zstring Ptr
Declare Sub      OVERLAYELEM_updateCustomGpuParameter Cdecl Alias "OVERLAYELEM_updateCustomGpuParameter" (constantEntry As Zstring Ptr, params As Zstring Ptr, e As Zstring Ptr)
Declare Sub      OVERLAYELEM_setPolygonModeOverrideable Cdecl Alias "OVERLAYELEM_setPolygonModeOverrideable" (overrideable As Byte, e As Zstring Ptr)
Declare Function OVERLAYELEM_getPolygonModeOverrideable Cdecl Alias "OVERLAYELEM_getPolygonModeOverrideable" (e As Zstring Ptr) As Byte
Declare Sub      OVERLAYELEM_cleanupDictionary Cdecl Alias "OVERLAYELEM_cleanupDictionary" ()

' Colour Value
Declare Function COLOURVALUE_create Cdecl Alias "COLOURVALUE_create" (red As Single, green As Single, blue As Single, alpha_ As Single) As Integer Ptr
Declare Sub      COLOURVALUE_delete Cdecl Alias "COLOURVALUE_delete" (c As Zstring Ptr)
Declare Function COLOURVALUE_getR Cdecl Alias "COLOURVALUE_getR" (c As Zstring Ptr) As Single
Declare Sub      COLOURVALUE_setR Cdecl Alias "COLOURVALUE_setR" (r As Single, c As Zstring Ptr)
Declare Function COLOURVALUE_getG Cdecl Alias "COLOURVALUE_getG" (c As Zstring Ptr) As Single
Declare Sub      COLOURVALUE_setG Cdecl Alias "COLOURVALUE_setG" (g As Single, c As Zstring Ptr)
Declare Function COLOURVALUE_getB Cdecl Alias "COLOURVALUE_getB" (c As Zstring Ptr) As Single
Declare Sub      COLOURVALUE_setB Cdecl Alias "COLOURVALUE_setB" (b As Single, c As Zstring Ptr)
Declare Function COLOURVALUE_getA Cdecl Alias "COLOURVALUE_getA" (c As Zstring Ptr) As Single
Declare Sub      COLOURVALUE_setA Cdecl Alias "COLOURVALUE_setA" (a As Single, c As Zstring Ptr)
Declare Sub      COLOURVALUE_setAll Cdecl Alias "COLOURVALUE_setAll" (r As Single, g As Single, b As Single, a As Single, c As Zstring Ptr)
Declare Function COLOURVALUE_toStr Cdecl Alias "COLOURVALUE_toStr" ( c As Zstring Ptr ) As Zstring Ptr


' Technique
Declare Sub      TECHNIQUE_setDiffuse Cdecl Alias "TECHNIQUE_setDiffuse" (diffuse As Zstring Ptr, t As Zstring Ptr)
Declare Sub      TECHNIQUE_setSceneBlending Cdecl Alias "TECHNIQUE_setSceneBlending" (sbt As Integer, t As Zstring Ptr)
Declare Sub      TECHNIQUE_setDepthCheckEnabled Cdecl Alias "TECHNIQUE_setDepthCheckEnabled" ( enabled As Byte , t As Zstring Ptr )
Declare Sub      TECHNIQUE_setShadowReceiverMaterial Cdecl Alias "TECHNIQUE_setShadowReceiverMaterial" (name_ As Zstring Ptr, t As Zstring Ptr)
Declare Function TECHNIQUE_getPassWithIndex Cdecl Alias "TECHNIQUE_getPassWithIndex" (index As Integer, t As Zstring Ptr) As Zstring Ptr

' Pass
Declare Sub      PASS_setSceneBlending Cdecl Alias "PASS_setSceneBlending" ( sbt As Integer , p As Zstring Ptr )
Declare Sub      PASS_setAlphaRejectSettings Cdecl Alias "PASS_setAlphaRejectSettings" (func As Integer, value As Integer, alphaToCoverageEnabled As Byte, p As Zstring Ptr)
Declare Sub      PASS_setCullingMode Cdecl Alias "PASS_setCullingMode" (mode As Integer, p As Zstring Ptr)
Declare Sub      PASS_setManualCullingMode Cdecl Alias "PASS_setManualCullingMode" (mode As Integer, p As Zstring Ptr)
Declare Function PASS_createTextureUnitState Cdecl Alias "PASS_createTextureUnitState" (texturename As Zstring Ptr, texCoordSet As Integer, p As Zstring Ptr) As Zstring Ptr
Declare Sub      PASS_setVertexProgram Cdecl Alias "PASS_setVertexProgram" (name_ As Zstring Ptr, resetParams As Byte, p As Zstring Ptr)
Declare Function PASS_getVertexProgramParameters Cdecl Alias "PASS_getVertexProgramParameters" (p As Zstring Ptr) As Zstring Ptr
Declare Function PASS_getTextureUnitState Cdecl Alias "PASS_createTextureUnitState" (index As Integer, p As Zstring Ptr) As Zstring Ptr
Declare Function PASS_getTextureUnitStateWithName Cdecl Alias "PASS_getTextureUnitStateWithName" (name_ As ZString Ptr, p As Zstring Ptr) As Zstring Ptr
Declare Function PASS_getTextureUnitStateIndex Cdecl Alias "PASS_getTextureUnitStateIndex" (state As ZString Ptr, p As Zstring Ptr) As Integer
Declare Sub      PASS_removeTextureUnitState Cdecl Alias "PASS_removeTextureUnitState" (index As Integer, p As Zstring Ptr)
Declare Function PASS_getNumTextureUnitStates Cdecl Alias "PASS_getNumTextureUnitStates" (p As Zstring Ptr) As Integer

' Texture Unit State
Declare Function TUS_getTextureName   Cdecl Alias "TUS_getTextureName"   (s As ZString Ptr) As ZString Ptr
Declare Sub      TUS_setTextureName   Cdecl Alias "TUS_setTextureName"   (name_ As ZString Ptr, ttype As Integer, s As ZString Ptr)
Declare Sub      TUS_setTextureUScale Cdecl Alias "TUS_setTextureUScale" (value As Single, s As ZString Ptr)
Declare Function TUS_getTextureUScale Cdecl Alias "TUS_getTextureUScale" (s As ZString Ptr) As Single
Declare Sub      TUS_setTextureVScale Cdecl Alias "TUS_setTextureVScale" (value As Single, s As ZString Ptr)
Declare Function TUS_getTextureVScale Cdecl Alias "TUS_getTextureVScale" (s As ZString Ptr) As Single
Declare Sub      TUS_setTextureScale  Cdecl Alias "TUS_setTextureScale"  (uScale As Single, vScale As Single, s As ZString Ptr)

' GPU Program Parameters
Declare Function GPUPP_getAutoConstantCount Cdecl Alias "GPUPP_getAutoConstantCount" (p As Zstring Ptr) As Integer
Declare Sub      GPUPP_setNamedConstantWithFloat Cdecl Alias "GPUPP_setNamedConstantWithFloat" (name_ As Zstring Ptr, val As Single, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedConstantWithInt Cdecl Alias "GPUPP_setNamedConstantWithInt" (name_ As Zstring Ptr, val As Integer, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedConstantWithVec4 Cdecl Alias "GPUPP_setNamedConstantWithVec4" (name_ As Zstring Ptr, vec As Zstring Ptr, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedConstantWithVec3 Cdecl Alias "GPUPP_setNamedConstantWithVec3" (name_ As Zstring Ptr, vec As Zstring Ptr, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedConstantWithMatrix4 Cdecl Alias "GPUPP_setNamedConstantWithMatrix4" (name_ As Zstring Ptr, m As Zstring Ptr, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedConstantWithColourValue Cdecl Alias "GPUPP_setNamedAutoConstant" (name_ As Zstring Ptr, colour As Zstring Ptr, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedAutoConstant Cdecl Alias "GPUPP_setNamedAutoConstant" (name_ As Zstring Ptr, acType As Integer, extraInfo As Integer, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedAutoConstantReal Cdecl Alias "GPUPP_setNamedAutoConstantReal" (name_ As Zstring Ptr, acType As Integer, rData As Single, p As Zstring Ptr)
Declare Sub      GPUPP_setNamedConstantFromTime Cdecl Alias "GPUPP_setNamedConstantFromTime" (name_ As Zstring Ptr, factor As Single, p As Zstring Ptr)

' Text Manager
Declare Sub      TEXTMANAGER_init Cdecl Alias "TEXTMANAGER_init" ()
Declare Sub      TEXTMANAGER_uninit Cdecl Alias "TEXTMANAGER_uninit" ()
Declare Sub      TEXTMANAGER_addTextBox Cdecl Alias "TEXTMANAGER_addTextBox" (ID As Zstring Ptr, text As Zstring Ptr, x As Single, y As Single, width_ As Single, height As Single, colour As Zstring Ptr)
Declare Sub      TEXTMANAGER_removeTextBox Cdecl Alias "TEXTMANAGER_removeTextBox" (ID As Zstring Ptr)
Declare Sub      TEXTMANAGER_setText Cdecl Alias "TEXTMANAGER_setText" (ID As Zstring Ptr, Text As Zstring Ptr)
Declare Sub      TEXTMANAGER_clear Cdecl Alias "TEXTMANAGER_clear" ()
Declare Sub      TEXTMANAGER_setTextColour Cdecl Alias "TEXTMANAGER_setTextColour" (ID As Zstring Ptr, colour As Zstring Ptr)
Declare Function TEXTMANAGER_getTextColour Cdecl Alias "TEXTMANAGER_getTextColour" (ID As Zstring Ptr) As Zstring Ptr
Declare Sub      TEXTMANAGER_setDefaultTextColour Cdecl Alias "TEXTMANAGER_setDefaultTextColour" (colour As Zstring Ptr)
Declare Function TEXTMANAGER_getDefaultTextColour Cdecl Alias "TEXTMANAGER_getDefaultTextColour" () As Zstring Ptr
Declare Sub      TEXTMANAGER_setTextFont Cdecl Alias "TEXTMANAGER_setTextFont" (ID As Zstring Ptr, Fontname_ As Zstring Ptr)
Declare Function TEXTMANAGER_getTextFont Cdecl Alias "TEXTMANAGER_getTextFont" (ID As Zstring Ptr) As Zstring Ptr
Declare Sub      TEXTMANAGER_setDefaultFont Cdecl Alias "TEXTMANAGER_setDefaultFont" (Fontname_ As Zstring Ptr)
Declare Function TEXTMANAGER_getDefaultFont Cdecl Alias "TEXTMANAGER_getDefaultFont" () As Zstring Ptr
Declare Sub      TEXTMANAGER_setTextColourTop Cdecl Alias "TEXTMANAGER_setTextColourTop" (ID As Zstring Ptr, col As Zstring Ptr)
Declare Function TEXTMANAGER_getTextColourTop Cdecl Alias "TEXTMANAGER_getTextColourTop" (ID As Zstring Ptr) As Zstring Ptr
Declare Sub      TEXTMANAGER_setTextColourBottom Cdecl Alias "TEXTMANAGER_setTextColourBottom" (ID As Zstring Ptr, col As Zstring Ptr)
Declare Function TEXTMANAGER_getTextColourBottom Cdecl Alias "TEXTMANAGER_getTextColourBottom" (ID As Zstring Ptr) As Zstring Ptr
Declare Sub      TEXTMANAGER_setDefaultMetricsMode Cdecl Alias "TEXTMANAGER_setDefaultMetricsMode" (mm As Integer)
Declare Function TEXTMANAGER_getDefaultMetricsMode Cdecl Alias "TEXTMANAGER_getDefaultMetricsMode" () As Integer
Declare Sub      TEXTMANAGER_rotateAllText Cdecl Alias "TEXTMANAGER_rotateAllText" ( Degrees As Single )
Declare Function TEXTMANAGER_getTextAngle Cdecl Alias "TEXTMANAGER_getTextAngle" () As Single
Declare Sub      TEXTMANAGER_setDefaultCharacterHeight Cdecl Alias "TEXTMANAGER_setDefaultCharacterHeight" ( height As Integer )
Declare Function TEXTMANAGER_getDefaultCharacterHeight Cdecl Alias "TEXTMANAGER_getDefaultCharacterHeight" () As Integer
Declare Sub      TEXTMANAGER_setTextVisible Cdecl Alias "TEXTMANAGER_setTextVisible" (ID As Zstring Ptr, visible As Byte) 
Declare Function TEXTMANAGER_getTextVisible Cdecl Alias "TEXTMANAGER_getTextVisible" (ID As Zstring Ptr) As Byte
Declare Sub      TEXTMANAGER_setAllTextVisible Cdecl Alias "TEXTMANAGER_setAllTextVisible" (visible As Byte) 
Declare Function TEXTMANAGER_getAllTextVisible Cdecl Alias "TEXTMANAGER_getAllTextVisible" () As Byte
Declare Function TEXTMANAGER_getTextWidth Cdecl Alias "TEXTMANAGER_getTextWidth" (ID As Zstring Ptr) As Single
Declare Function TEXTMANAGER_getTextHeight Cdecl Alias "TEXTMANAGER_getTextHeight" (ID As Zstring Ptr) As Single
Declare Sub      TEXTMANAGER_setTextDimensions Cdecl Alias "TEXTMANAGER_setTextDimensions" (ID As Zstring Ptr, width_ As Single, height As Single)
Declare Function TEXTMANAGER_getTextLeft Cdecl Alias "TEXTMANAGER_getTextLeft" (ID As Zstring Ptr) As Single
Declare Function TEXTMANAGER_getTextTop Cdecl Alias "TEXTMANAGER_getTextTop" (ID As Zstring Ptr) As Single
Declare Sub      TEXTMANAGER_setTextPosition Cdecl Alias "TEXTMANAGER_setTextPosition" (ID As Zstring Ptr, Left_ As Single, top As Single)
Declare Sub      TEXTMANAGER_setTextSpaceWidth Cdecl Alias "TEXTMANAGER_setTextSpaceWidth" (ID As Zstring Ptr, width_ As Single) 
Declare Function TEXTMANAGER_getTextSpaceWidth Cdecl Alias "TEXTMANAGER_getTextSpaceWidth" (ID As Zstring Ptr) As Single

' ???
Declare Function POLYRSQ_run Cdecl Alias "POLYRSQ_run" (rsq As Zstring Ptr, result As Zstring Ptr, normal As Zstring Ptr) As Zstring Ptr

'OSM SCENE
Declare Function OSMSCENE_Create Cdecl Alias "OSMSCENE_Create" ( ogreSceneManager As Zstring Ptr , ogreRenderWindow_ As Zstring Ptr ) As Zstring Ptr
Declare Sub      OSMSCENE_Destroy Cdecl Alias "OSMSCENE_Destroy" ( scene As Zstring Ptr )
Declare Sub      OSMSCENE_initialise Cdecl Alias "OSMSCENE_initialise" ( filename_ As Zstring Ptr , callback As Zstring Ptr , scene As Zstring Ptr )
Declare Sub      OSMSCENE_createScene Cdecl Alias "OSMSCENE_createScene" ( scene As Zstring Ptr , ogreSceneNode As Zstring Ptr )
Declare Function OSMSCENE_getSceneManager Cdecl Alias "OSMSCENE_getSceneManager" ( scene As Zstring Ptr ) As Zstring Ptr 
Declare Function OSMSCENE_createCallback Cdecl Alias "OSMSCENE_createCallback" () As Zstring Ptr 
Declare Sub      OSMSCENE_deleteCallback Cdecl Alias "OSMSCENE_deleteCallback" ( callback As Zstring Ptr )
Declare Sub      OSMSCENE_registerFunctions Cdecl Alias "OSMSCENE_registerFunctions" ( nodeFunc As Zstring Ptr , entityFunc As Zstring Ptr , cameraFunc As Zstring Ptr , lightFunc As Zstring Ptr ,  helperFunc As Zstring Ptr , shapeFunc As Zstring Ptr , staticGeometryFunc As Zstring Ptr , callback As Zstring Ptr )

' OSM Serializer
Declare Function OSMS_create Cdecl Alias "OSMS_create" (sm As Zstring Ptr, rw As Zstring Ptr) As Zstring Ptr
Declare Function OSMS_writeScene Cdecl Alias "OSMS_writeScene" (filename_ As Zstring Ptr, pCallbacks As Zstring Ptr, precision As Integer, osms As Zstring Ptr) As Integer
Declare Sub      OSMS_delete Cdecl Alias "OSMS_delete" (osms As Zstring Ptr)

' OSMCallbacks
Declare Sub      OSMSCallbacks_initialize Cdecl Alias "OSMSCallbacks_initialize" (blitzNodeFunc As Zstring Ptr, blitzMeshFunc As Zstring Ptr, blitzCamFunc As Zstring Ptr, blitzEntityFunc As Zstring Ptr , blitzLightFunc As Zstring Ptr , blitzSkeletonFunc As Zstring Ptr, blitzHelperFunc As Zstring Ptr , s As Zstring Ptr)
Declare Function OSMSCallbacks_create Cdecl Alias "OSMSCallbacks_create" () As Zstring Ptr
Declare Sub      OSMSCallbacks_delete Cdecl Alias "OSMSCallbacks_delete" (s As Zstring Ptr)
Declare Sub      OSMSCallbacks_addProperty Cdecl Alias "OSMSCallbacks_addProperty" ( name_ As Zstring Ptr , value As Zstring Ptr , s As Zstring Ptr )

' Ogre Max Scene
Declare Function OGREMAXSCENE_create Cdecl Alias "OGREMAXSCENE_create" () As Zstring Ptr
Declare Sub      OGREMAXSCENE_delete Cdecl Alias "OGREMAXSCENE_delete" (s As Zstring Ptr)
Declare Function OGREMAXSCENE_GetSceneManager Cdecl Alias "OGREMAXSCENE_GetSceneManager" (s As Zstring Ptr) As Zstring Ptr
Declare Sub      OGREMAXSCENE_SetNamePrefix Cdecl Alias "OGREMAXSCENE_SetNamePrefix" (name_ As Zstring Ptr, prefixes As Integer, s As Zstring Ptr)
Declare Sub      OGREMAXSCENE_load Cdecl Alias "OGREMAXSCENE_load" (fileNameOrContent As Zstring Ptr, renderWindow_ As Zstring Ptr, loadOptions As Integer, sceneManager As Zstring Ptr, rootNode As Zstring Ptr, callback As Zstring Ptr, defaultResourceGroupname_ As Zstring Ptr, s As Zstring Ptr)

' Ogre Max Scene Callback
Declare Function OGREMAXCALLBACK_create Cdecl Alias "OGREMAXCALLBACK_create" () As Zstring Ptr
Declare Sub      OGREMAXCALLBACK_delete Cdecl Alias "OGREMAXCALLBACK_delete" (c As Zstring Ptr)
Declare Sub      OGREMAXCALLBACK_initialize Cdecl Alias "OGREMAXCALLBACK_initialize" (blitzNodeFunc As Zstring Ptr, blitzCamFunc As Zstring Ptr, blitzEntityFunc As Zstring Ptr, blitzLightFunc As Zstring Ptr, blitzMovableObjectFunc As Zstring Ptr, blitzProgressFunc As Zstring Ptr, s As Zstring Ptr)

Declare Function FG_enableFullScreen Cdecl Alias "FG_enableFullScreen" ( width_ As Integer , height As Integer , bits As Integer ) As Byte
