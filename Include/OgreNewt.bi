
' This file is part of the Flow3D software package (www.flow3d.org) and its use is governed by the Flow3D software package EULA. 
' (c)2009 BoxSnap Studios

'Load the DLL-----------------------------------------------'
'-----------------------------------------------------------'
#inclib "OgreNewt"


'TOgreNewtWorld
Declare Function OGRENEWTWORLD_create Cdecl Alias "OGRENEWTWORLD_create" () As Byte Ptr
Declare Sub      OGRENEWTWORLD_destroy Cdecl Alias "OGRENEWTWORLD_destroy" (w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_update Cdecl Alias "OGRENEWTWORLD_update" (t_step As Single, w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_invalidateCache Cdecl Alias "OGRENEWTWORLD_invalidateCache" (w As Byte Ptr)
Declare Function OGRENEWTWORLD_getNewtonWorld Cdecl Alias "OGRENEWTWORLD_getNewtonWorld" (w As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTWORLD_getDefaultMaterialID Cdecl Alias "OGRENEWTWORLD_getDefaultMaterialID" (w As Byte Ptr) As Byte Ptr
Declare Sub      OGRENEWTWORLD_destroyAllBodies Cdecl Alias "OGRENEWTWORLD_destroyAllBodies" (w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_setSolverModel Cdecl Alias "OGRENEWTWORLD_setSolverModel" (model As Integer, w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_setFrictionModel Cdecl Alias "OGRENEWTWORLD_setFrictionModel" (model As Integer, w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_setPlatformArchitecture Cdecl Alias "OGRENEWTWORLD_setPlatformArchitecture" (mode As Integer, w As Byte Ptr)
Declare Function OGRENEWTWORLD_getBodyCount Cdecl Alias "OGRENEWTWORLD_getBodyCount" (w As Byte Ptr) As Integer
Declare Sub      OGRENEWTWORLD_setMultithreadSolverOnSingleIsland Cdecl Alias "OGRENEWTWORLD_setMultithreadSolverOnSingleIsland" (mode As Integer, w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_setThreadCount Cdecl Alias "OGRENEWTWORLD_setThreadCount" (threads As Integer, w As Byte Ptr)
Declare Function OGRENEWTWORLD_getThreadCount Cdecl Alias "OGRENEWTWORLD_getThreadCount" (w As Byte Ptr) As Integer
Declare Sub      OGRENEWTWORLD_criticalSectionLock Cdecl Alias "OGRENEWTWORLD_criticalSectionLock" (w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_criticalSectionUnlock Cdecl Alias "OGRENEWTWORLD_criticalSectionUnlock" (w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_setMinimumFrameRate Cdecl Alias "OGRENEWTWORLD_setMinimumFrameRate" (rate As Integer, ogreNewtWorld As Byte Ptr)
Declare Sub      OGRENEWTWORLD_setWorldSize Cdecl Alias "OGRENEWTWORLD_setWorldSize" (minSize As Byte Ptr, maxSize As Byte Ptr, w As Byte Ptr)
Declare Sub      OGRENEWTWORLD_setWorldSizeWithAAB Cdecl Alias "OGRENEWTWORLD_setWorldSizeWithAAB" (box As Byte Ptr, w As Byte Ptr)
Declare Function OGRENEWTWORLD_getWorldSize Cdecl Alias "OGRENEWTWORLD_getWorldSize" (w As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTWORLD_getVersion Cdecl Alias "OGRENEWTWORLD_getVersion" (ogreNewtWorld As Byte Ptr) As Single
Declare Sub      OGRENEWTWORLD_setLeaveWorldCallback Cdecl Alias "OGRENEWTWORLD_setLeaveWorldCallback" (callback As Byte Ptr, w As Byte Ptr)

'TBasicRaycast
Declare Function OGRENEWTBR_create Cdecl Alias "OGRENEWTBR_create" ( world As Byte Ptr , startpt As Byte Ptr , endpt As Byte Ptr ) As Byte Ptr
Declare Sub      OGRENEWTBR_delete Cdecl Alias "OGRENEWTBR_delete" ( BasicRaycast As Byte Ptr )
Declare Function OGRENEWTBR_getFirstHit Cdecl Alias "OGRENEWTBR_getFirstHit" (BasicRayCast As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTBR_getHitCount Cdecl Alias "OGRENEWTBR_getHitCount" ( BasicRaycast As Byte Ptr ) As Integer
Declare Function OGRENEWTBR_getInfoAt Cdecl Alias "OGRENEWTBR_getInfoAt" (pos_ As Integer, BasicRaycast As Byte Ptr) As Byte Ptr

'TBasicRaycastInfo
Declare Function OGRENEWTBRINFO_create Cdecl Alias "OGRENEWTBRINFO_create" () As Byte Ptr
Declare Sub      OGRENEWTBRINFO_delete Cdecl Alias "OGRENEWTBRINFO_delete" (i As Byte Ptr)
Declare Function OGRENEWTBRINFO_getDistance Cdecl Alias "OGRENEWTBRINFO_getDistance" (i As Byte Ptr) As Single
Declare Function OGRENEWTBRINFO_getBody Cdecl Alias "OGRENEWTBRINFO_getBody" (i As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTBRINFO_getCollisionID Cdecl Alias "OGRENEWTBRINFO_getCollisionID" (i As Byte Ptr) As Integer
Declare Function OGRENEWTBRINFO_getNormal Cdecl Alias "OGRENEWTBRINFO_getNormal" (i As Byte Ptr) As Byte Ptr

'TOgreNewtDebugger
Declare Sub      OGRENEWTDEBUGGER_init Cdecl Alias "OGRENEWTDEBUGGER_init" ( smgr As Byte Ptr )
Declare Sub      OGRENEWTDEBUGGER_deInit Cdecl Alias "OGRENEWTDEBUGGER_deInit" ()
Declare Sub      OGRENEWTDEBUGGER_showLines Cdecl Alias "OGRENEWTDEBUGGER_showLines" ( world As Byte Ptr )
Declare Sub      OGRENEWTDEBUGGER_hideLines Cdecl Alias "OGRENEWTDEBUGGER_hideLines" ()

'TMaterialPair
Declare Function OGRENEWTMP_create Cdecl Alias "OGRENEWTMP_create" ( world As Byte Ptr , mat1 As Byte Ptr , mat2 As Byte Ptr ) As Byte Ptr
Declare Sub      OGRENEWTMP_delete Cdecl Alias "OGRENEWTMP_delete" ( mp As Byte Ptr )
Declare Sub      OGRENEWTMP_setDefaultSoftness Cdecl Alias "OGRENEWTMP_setDefaultSoftness" ( softness As Single , mp As Byte Ptr )
Declare Sub      OGRENEWTMP_setDefaultElasticity Cdecl Alias "OGRENEWTMP_setDefaultElasticity" ( elasticity As Single , mp As Byte Ptr )
Declare Sub      OGRENEWTMP_setDefaultCollidable Cdecl Alias "OGRENEWTMP_setDefaultCollidable" ( state As Integer , mp As Byte Ptr )
Declare Sub      OGRENEWTMP_setDefaultFriction Cdecl Alias "OGRENEWTMP_setDefaultFriction" ( stat As Single , kinetic As Single , mp As Byte Ptr )
Declare Sub      OGRENEWTMP_setContinuousCollisionMode Cdecl Alias "OGRENEWTMP_setContinuousCollisionMode" ( state As Integer , mp As Byte Ptr )
Declare Sub      OGRENEWTMP_setContactCallback Cdecl Alias "OGRENEWTMP_setContactCallback" ( callback As Byte Ptr , mp As Byte Ptr )

'TMaterialID
Declare Function OGRENEWTMID_create Cdecl Alias "OGRENEWTMID_create" ( world As Byte Ptr ) As Byte Ptr
Declare Sub      OGRENEWTMID_delete Cdecl Alias "OGRENEWTMID_delete" ( ID As Byte Ptr )
Declare Function OGRENEWTMID_getID Cdecl Alias "OGRENEWTMID_getID" ( ID As Byte Ptr ) As Integer

'TCollision
Declare Function OGRENEWTCOL_createBox Cdecl Alias "OGRENEWTCOL_createBox" ( world As Byte Ptr , size As Byte Ptr , orient As Byte Ptr , Pos_ As Byte Ptr ) As Byte Ptr
Declare Function OGRENEWTCOL_createConvexHull Cdecl Alias "OGRENEWTCOL_createConvexHull" ( world As Byte Ptr , sn As Byte Ptr , x As Single , y As Single , z As Single ) As Byte Ptr
Declare Function OGRENEWTCOL_createEllipsoid Cdecl Alias "OGRENEWTCOL_createEllipsoid" ( world As Byte Ptr , size As Byte Ptr ,orient As Byte Ptr , Pos_ As Byte Ptr ) As Byte Ptr
Declare Function OGRENEWTCOL_createCylinder Cdecl Alias "OGRENEWTCOL_createCylinder" ( world As Byte Ptr ,  radius As Single , height As Single , orient As Byte Ptr , Pos_ As Byte Ptr ) As Byte Ptr
Declare Sub      OGRENEWTCOL_destroy Cdecl Alias "OGRENEWTCOL_destroy" ( greNewtCollision As Byte Ptr )
Declare Sub      OGRENEWTCOL_calculateInertialMatrix Cdecl Alias "OGRENEWTCOL_calculateInertialMatrix" ( inertia As Byte Ptr , offset As Byte Ptr , c As Byte Ptr )

'TTreeCollision
Declare Function OGRENEWTTC_create Cdecl Alias "OGRENEWTTC_create" ( world As Byte Ptr ) As Byte Ptr
Declare Function OGRENEWTTC_createWithSceneNode Cdecl Alias "OGRENEWTTC_createWithSceneNode" ( world As Byte Ptr , sn As Byte Ptr , optimize As Integer , fw As Integer ) As Byte Ptr
Declare Sub      OGRENEWTTC_start Cdecl Alias "OGRENEWTTC_start" ( tc As Byte Ptr )
Declare Sub      OGRENEWTTC_addPoly Cdecl Alias "OGRENEWTTC_addPoly" ( polys As Byte Ptr , ID As Integer , tc As Byte Ptr )
Declare Sub      OGRENEWTTC_finish Cdecl Alias "OGRENEWTTC_finish" ( tc As Byte Ptr )

'TBody
Declare Function BODY_create Cdecl Alias "BODY_create" ( W As Byte Ptr , col As Byte Ptr , bodytype As Integer ) As Byte Ptr
Declare Sub      BODY_destroy Cdecl Alias "BODY_destroy" (b As Byte Ptr)
Declare Sub      BODY_setUserData Cdecl Alias "BODY_setUserData" (data_ As Object, b As Byte Ptr)
Declare Function BODY_getUserData Cdecl Alias "BODY_getUserData" (b As Byte Ptr) As Object
Declare Function BODY_hasUserData Cdecl Alias "BODY_hasUserData" (b As Byte Ptr) As Byte
Declare Sub      BODY_clearUserData Cdecl Alias "BODY_clearUserData" (b As Byte Ptr)
Declare Function BODY_getOgreNode Cdecl Alias "BODY_getOgreNode" (b As Byte Ptr) As Byte Ptr
Declare Function BODY_getWorld Cdecl Alias "BODY_getWorld" (b As Byte Ptr) As Byte Ptr
Declare Sub      BODY_setType Cdecl Alias "BODY_setType" (bodytype As Integer, b As Byte Ptr)
Declare Function BODY_getType Cdecl Alias "BODY_getType" (b As Byte Ptr) As Integer
Declare Sub      BODY_attachNode Cdecl Alias "BODY_attachNode" (node As Byte Ptr, b As Byte Ptr)
Declare Sub      BODY_setStandardForceCallback Cdecl Alias "BODY_setStandardForceCallBack" (b As Byte Ptr)
Declare Sub      BODY_setCustomForceAndTorqueCallback Cdecl Alias "BODY_setCustomForceAndTorqueCallback" (callback As Byte Ptr, b As Byte Ptr)
Declare Sub      BODY_removeForceAndTorqueCallback Cdecl Alias "BODY_removeForceAndTorqueCallback" (b As Byte Ptr)
Declare Sub      BODY_setCustomTransformCallback Cdecl Alias "BODY_setCustomTransformCallback" (callback As Byte Ptr, b As Byte Ptr)
Declare Sub      BODY_removeTransformCallback Cdecl Alias "BODY_removeTransformCallback" (b As Byte Ptr)
Declare Sub      BODY_setPositionOrientation Cdecl Alias "BODY_setPositionOrientation" (pos_ As Byte Ptr, orient As Byte Ptr, b As Byte Ptr)
Declare Sub      BODY_setMassMatrix Cdecl Alias "BODY_setMassMatrix" (mass As Single, inertia As Byte Ptr, b As Byte Ptr)
Declare Sub      BODY_setCenterOfMass Cdecl Alias "BODY_setCenterOfMass" ( centerOfMass As Byte Ptr , b As Byte Ptr)
Declare Sub      BODY_setContinuousCollisionMode Cdecl Alias "BODY_setContinuousCollisionMode" (state As Integer, b As Byte Ptr)
Declare Sub      BODY_setJointRecursiveCollision Cdecl Alias "BODY_setJointRecursiveCollision" (state As Integer, b As Byte Ptr)
Declare Sub      BODY_setAutoSleep Cdecl Alias "BODY_setAutoSleep" (flag As Integer, b As Byte Ptr)
Declare Function BODY_getAutoSleep Cdecl Alias "BODY_getAutoSleep" (b As Byte Ptr) As Integer
Declare Sub      BODY_setSleepState Cdecl Alias "BODY_setSleepState" (state As Integer, b As Byte Ptr)
Declare Function BODY_getSleepState Cdecl Alias "BODY_getSleepState" (b As Byte Ptr) As Integer
Declare Sub      BODY_addForce Cdecl Alias "BODY_addForce" (force As Byte Ptr, ogreNewtBody As Byte Ptr)
Declare Sub      BODY_addLocalForce Cdecl Alias "BODY_addLocalForce" (force As Byte Ptr, Pos_ As Byte Ptr, b As Byte Ptr)
Declare Sub      BODY_addTorque Cdecl Alias "BODY_addTorque" (torque As Byte Ptr, ogreNewtBody As Byte Ptr)
Declare Sub      BODY_setTorque Cdecl Alias "BODY_setTorque" (torque As Byte Ptr, b As Byte Ptr)
Declare Function BODY_getTorque Cdecl Alias "BODY_getTorque" ( b As Byte Ptr ) As Byte Ptr
Declare Sub      BODY_setVelocity Cdecl Alias "BODY_setVelocity" ( vel As Byte Ptr , ogreNewtBody As Byte Ptr )
Declare Sub      BODY_getMassMatrix Cdecl Alias "BODY_getMassMatrix" (mass As Single, inertia As Byte Ptr, ogreNewtBody As Byte Ptr)
Declare Sub      BODY_setOmega Cdecl Alias "BODY_setOmega" ( omega As Byte Ptr , ogreNewtBody As Byte Ptr )
Declare Function BODY_getOmega Cdecl Alias "BODY_getOmega" (b As Byte Ptr) As Byte Ptr
Declare Sub      BODY_getPositionOrientation Cdecl Alias "BODY_getPositionOrientation" ( Pos_ As Byte Ptr , orientation As Byte Ptr , ogreNewtBody As Byte Ptr )
Declare Function BODY_getVelocity Cdecl Alias "BODY_getVelocity" (body As Byte Ptr) As Byte Ptr
Declare Function BODY_getMaterialGroupID Cdecl Alias "BODY_getMaterialGroupID" (body As Byte Ptr) As Byte Ptr
Declare Sub      BODY_setMaterialGroupID Cdecl Alias "BODY_setMaterialGroupID" (ID As Byte Ptr, body As Byte Ptr)
Declare Sub      BODY_addImpulse Cdecl Alias "BODY_addImpulse" (deltav As Byte Ptr, posit As Byte Ptr, b As Byte Ptr)
Declare Function BODY_getPosition Cdecl Alias "BODY_getPosition" (b As Byte Ptr) As Byte Ptr
Declare Function BODY_calculateGravity Cdecl Alias "BODY_calculateGravity" ( b As Byte Ptr ) As Byte Ptr
Declare Sub      BODY_addBuoyancyForce Cdecl Alias "BODY_addBuoyancyForce" (fluidDensity As Single, fluidLinearViscosity As Single, fluidAngularViscosity As Single, gravity As Byte Ptr, callback As Byte Ptr, b As Byte Ptr)

'TContactCallback
Declare Function CONTACTCALLBACK_create Cdecl Alias "CONTACTCALLBACK_create" (userBeginMaxFunc As Byte Ptr, userProcessMaxFunc As Byte Ptr) As Byte Ptr
Declare Sub      CONTACTCALLBACK_delete Cdecl Alias "CONTACTCALLBACK_delete" (c As Byte Ptr)
Declare Function CONTACTCALLBACK_getBody0 Cdecl Alias "CONTACTCALLBACK_getBody0" (c As Byte Ptr) As Byte Ptr
Declare Function CONTACTCALLBACK_getBody1 Cdecl Alias "CONTACTCALLBACK_getBody1" (c As Byte Ptr) As Byte Ptr

'TContactIterator
Declare Function CI_getCurrent Cdecl Alias "CI_getCurrent" (c As Byte Ptr) As Byte Ptr
Declare Function CI_moveNext Cdecl Alias "CI_moveNext" (c As Byte Ptr) As Byte
Declare Sub      CI_reset Cdecl Alias "CI_reset" (c As Byte Ptr)
Declare Function CI_hasMoreElements Cdecl Alias "CI_hasMoreElements" (c As Byte Ptr) As Byte
Declare Function CI_getContactCount Cdecl Alias "CI_getContactCount" (c As Byte Ptr) As Integer

'TContact
Declare Sub      CONTACT_removeContact Cdecl Alias "CONTACT_removeContact" (c As Byte Ptr)
Declare Function CONTACT_getContactFaceAttribute Cdecl Alias "CONTACT_getContactFaceAttribute" (c As Byte Ptr) As Integer
Declare Function CONTACT_getBodyCollisionID Cdecl Alias "CONTACT_getBodyCollisionID" (body As Byte Ptr, c As Byte Ptr) As Integer
Declare Function CONTACT_getContactNormalSpeed Cdecl Alias "CONTACT_getContactNormalSpeed" (c As Byte Ptr) As Single
Declare Function CONTACT_getContactForce Cdecl Alias "CONTACT_getContactForce" (c As Byte Ptr) As Byte Ptr
Declare Sub      CONTACT_getContactPositionAndNormal Cdecl Alias "CONTACT_getContactPositionAndNormal" (pos_ As Byte Ptr, norm As Byte Ptr, c As Byte Ptr)
Declare Sub      CONTACT_getContactTangentDirections Cdecl Alias "CONTACT_getContactTangentDirections" (dir0 As Byte Ptr, dir1 As Byte Ptr, c As Byte Ptr)
Declare Function CONTACT_getContactTangentSpeed Cdecl Alias "CONTACT_getContactTangentSpeed" (index As Integer, c As Byte Ptr) As Single
Declare Sub      CONTACT_setContactSoftness Cdecl Alias "CONTACT_setContactSoftness" (softness As Single, c As Byte Ptr)
Declare Sub      CONTACT_setContactElasticity Cdecl Alias "CONTACT_setContactElasticity" (elasticity As Single, c As Byte Ptr)
Declare Sub      CONTACT_setContactFrictionState Cdecl Alias "CONTACT_setContactFrictionState" (state As Integer, index As Integer, c As Byte Ptr)
Declare Sub      CONTACT_setContactFrictionCoef Cdecl Alias "CONTACT_setContactFrictionCoef" (stat As Single, kinetic As Single, index As Integer, c As Byte Ptr)
Declare Sub      CONTACT_setContactTangentAcceleration Cdecl Alias "CONTACT_setContactTangentAcceleration" (accel As Single, index As Integer, c As Byte Ptr)
Declare Sub      CONTACT_rotateTangentDirections Cdecl Alias "CONTACT_rotateTangentDirections" (dir_ As Byte Ptr, c As Byte Ptr)
Declare Sub      CONTACT_setContactNormalDirection Cdecl Alias "CONTACT_setContactNormalDirection" (dir_ As Byte Ptr, c As Byte Ptr)
Declare Sub      CONTACT_setContactNormalAcceleration Cdecl Alias "CONTACT_setContactNormalAcceleration" (accel As Single, c As Byte Ptr)

'TJoint
Declare Function OGRENEWTJOINT_create Cdecl Alias "OGRENEWTJOINT_create" () As Byte Ptr
Declare Sub      OGRENEWTJOINT_delete Cdecl Alias "OGRENEWTJOINT_delete" (j As Byte Ptr)
Declare Function OGRENEWTJOINT_getCollisionState Cdecl Alias "OGRENEWTJOINT_getCollisionState" (j As Byte Ptr) As Integer
Declare Sub      OGRENEWTJOINT_setCollisionState Cdecl Alias "OGRENEWTJOINT_setCollisionState" (State As Integer, j As Byte Ptr)
Declare Function OGRENEWTJOINT_getStiffness Cdecl Alias "OGRENEWTJOINT_getStiffness" (j As Byte Ptr) As Single
Declare Sub      OGRENEWTJOINT_setStiffness Cdecl Alias "OGRENEWTJOINT_setStiffness" (stiffness As Single, j As Byte Ptr)
Declare Sub      OGRENEWTJOINT_setUserData Cdecl Alias "OGRENEWTJOINT_setUserData" (userObject As Object, j As Byte Ptr)
Declare Function OGRENEWTJOINT_getUserData Cdecl Alias "OGRENEWTJOINT_getUserData" (j As Byte Ptr) As Object
Declare Sub      OGRENEWTJOINT_clearUserData Cdecl Alias "OGRENEWTJOINT_clearUserData" (j As Byte Ptr)
Declare Function OGRENEWTJOINT_hasUserData Cdecl Alias "OGRENEWTJOINT_hasUserData" (j As Byte Ptr) As Byte

'TBallAndSocket
Declare Function OGRENEWTBAS_create Cdecl Alias "OGRENEWTBAS_create" (world As Byte Ptr, child As Byte Ptr, parent As Byte Ptr, Pos_ As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTBAS_getJointAngle Cdecl Alias "OGRENEWTBAS_getJointAngle" (b As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTBAS_getJointOmega Cdecl Alias "OGRENEWTBAS_getJointAngle" (b As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTBAS_getJointForce Cdecl Alias "OGRENEWTBAS_getJointAngle" (b As Byte Ptr) As Byte Ptr
Declare Sub      OGRENEWTBAS_setLimits Cdecl Alias "OGRENEWTBAS_setLimits" ( pin As Byte Ptr , maxCone As Byte Ptr , maxTwist As Byte Ptr , b As Byte Ptr )

'THingeJoint
Declare Function OGRENEWTHINGE_create Cdecl Alias "OGRENEWTHINGE_create" (world As Byte Ptr, child As Byte Ptr, parent As Byte Ptr, Pos_ As Byte Ptr, pin As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTHINGE_getJointAngle Cdecl Alias "OGRENEWTHINGE_getJointAngle" (h As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTHINGE_getJointOmega Cdecl Alias "OGRENEWTHINGE_getJointOmega" (h As Byte Ptr) As Single
Declare Function OGRENEWTHINGE_getJointForce Cdecl Alias "OGRENEWTHINGE_getJointForce" (h As Byte Ptr) As Byte Ptr
Declare Sub      OGRENEWTHINGE_setCallback Cdecl Alias "OGRENEWTHINGE_setCallback" (HingeCallback As Byte Ptr, h As Byte Ptr)
Declare Sub      OGRENEWTHINGE_setCallbackAccel Cdecl Alias "OGRENEWTHINGE_setCallbackAccel" (accel As Single, h As Byte Ptr)
Declare Sub      OGRENEWTHINGE_setCallbackFrictionMin Cdecl Alias "OGRENEWTHINGE_setCallbackFrictionMin" (minValue As Single, h As Byte Ptr)
Declare Sub      OGRENEWTHINGE_setCallbackFrictionMax Cdecl Alias "OGRENEWTHINGE_setCallbackFrictionMax" (maxValue As Single, h As Byte Ptr)
Declare Function OGRENEWTHINGE_getCallbackTimestep Cdecl Alias "OGRENEWTHINGE_getCallbackTimestep" (h As Byte Ptr) As Single
Declare Function OGRENEWTHINGE_calculateStopAlpha Cdecl Alias "OGRENEWTHINGE_calculateStopAlpha" (angle As Byte Ptr, h As Byte Ptr) As Single

'TSliderJoint
Declare Function OGRENEWTSLIDER_create Cdecl Alias "OGRENEWTSLIDER_create" (world As Byte Ptr, child As Byte Ptr, parent As Byte Ptr, Pos_ As Byte Ptr, pin As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTSLIDER_getJointPosit Cdecl Alias "OGRENEWTSLIDER_getJointPosit" (h As Byte Ptr) As Single
Declare Function OGRENEWTSLIDER_getJointVeloc Cdecl Alias "OGRENEWTSLIDER_getJointVeloc" (h As Byte Ptr) As Single
Declare Function OGRENEWTSLIDER_getJointForce Cdecl Alias "OGRENEWTSLIDER_getJointForce" (h As Byte Ptr) As Byte Ptr
Declare Sub      OGRENEWTSLIDER_setCallback Cdecl Alias "OGRENEWTSLIDER_setCallback" (HingeCallback As Byte Ptr, h As Byte Ptr)
Declare Sub      OGRENEWTSLIDER_setCallbackAccel Cdecl Alias "OGRENEWTSLIDER_setCallbackAccel" (accel As Single, h As Byte Ptr)
Declare Sub      OGRENEWTSLIDER_setCallbackFrictionMin Cdecl Alias "OGRENEWTSLIDER_setCallbackFrictionMin" (minValue As Single, h As Byte Ptr)
Declare Sub      OGRENEWTSLIDER_setCallbackFrictionMax Cdecl Alias "OGRENEWTSLIDER_setCallbackFrictionMax" (maxValue As Single, h As Byte Ptr)
Declare Function OGRENEWTSLIDER_getCallbackTimestep Cdecl Alias "OGRENEWTSLIDER_getCallbackTimestep" (h As Byte Ptr) As Single
Declare Function OGRENEWTSLIDER_calculateStopAccel Cdecl Alias "OGRENEWTSLIDER_calculateStopAccel" (dist As Single, h As Byte Ptr) As Single
 
'TUniversalJoint
Declare Function OGRENEWTUNIVERSAL_create Cdecl Alias "OGRENEWTUNIVERSAL_create" (world As Byte Ptr, child As Byte Ptr, parent As Byte Ptr, Pos_ As Byte Ptr, pin0 As Byte Ptr, pin1 As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTUNIVERSAL_getJointAngle0 Cdecl Alias "OGRENEWTUNIVERSAL_getJointAngle0" (u As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTUNIVERSAL_getJointAngle1 Cdecl Alias "OGRENEWTUNIVERSAL_getJointAngle1" (u As Byte Ptr) As Byte Ptr
Declare Function OGRENEWTUNIVERSAL_getJointOmega0 Cdecl Alias "OGRENEWTUNIVERSAL_getJointOmega0" (u As Byte Ptr) As Single
Declare Function OGRENEWTUNIVERSAL_getJointOmega1 Cdecl Alias "OGRENEWTUNIVERSAL_getJointOmega1" (u As Byte Ptr) As Single
Declare Function OGRENEWTUNIVERSAL_getJointForce Cdecl Alias "OGRENEWTUNIVERSAL_getJointForce" (u As Byte Ptr) As Byte Ptr
Declare Sub      OGRENEWTUNIVERSAL_setCallback Cdecl Alias "OGRENEWTUNIVERSAL_setCallback" (me As Byte Ptr, u As Byte Ptr)
Declare Sub      OGRENEWTUNIVERSAL_setCallbackAccel Cdecl Alias "OGRENEWTUNIVERSAL_setCallbackAccel" (accel As Single, axis As Integer, u As Byte Ptr)
Declare Sub      OGRENEWTUNIVERSAL_setCallbackFrictionMin Cdecl Alias "OGRENEWTUNIVERSAL_setCallbackFrictionMin" (minValue As Single, axis As Integer, u As Byte Ptr)
Declare Sub      OGRENEWTUNIVERSAL_setCallbackFrictionMax Cdecl Alias "OGRENEWTUNIVERSAL_setCallbackFrictionMax" (maxValue As Single, axis As Integer, u As Byte Ptr)
Declare Function OGRENEWTUNIVERSAL_getCallbackTimestep Cdecl Alias "OGRENEWTUNIVERSAL_getCallbackTimestep" (u As Byte Ptr) As Single
Declare Function OGRENEWTUNIVERSAL_calculateStopAlpha0 Cdecl Alias "OGRENEWTUNIVERSAL_calculateStopAlpha0" (angle As Single, u As Byte Ptr) As Single
Declare Function OGRENEWTUNIVERSAL_calculateStopAlpha1 Cdecl Alias "OGRENEWTUNIVERSAL_calculateStopAlpha1" (angle As Single, u As Byte Ptr) As Single

'TUpVectorJoint
Declare Function OGRENEWTUV_create Cdecl Alias "OGRENEWTUV_create" (world As Byte Ptr, body As Byte Ptr, pin As Byte Ptr) As Byte Ptr
Declare Sub      OGRENEWTUV_setPin Cdecl Alias "OGRENEWTUV_setPin" (pin As Byte Ptr, u As Byte Ptr)
Declare Function OGRENEWTUV_getPin Cdecl Alias "OGRENEWTUV_getPin" ( u As Byte Ptr ) As Byte Ptr




