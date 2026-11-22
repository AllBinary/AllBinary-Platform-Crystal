#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.input.motion.gesture.observer

module MotionGestureEventListener
    include JObjectI
    include BaseMotionGestureEventListener
end

module JObjectI
    def onPressedMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onPressedMotionGestureEvent")
    end
    def onUpMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onUpMotionGestureEvent")
    end
    def onDownMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onDownMotionGestureEvent")
    end
    def onLeftMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onLeftMotionGestureEvent")
    end
    def onRightMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onRightMotionGestureEvent")
    end
    def onDiagonalDownRightMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onDiagonalDownRightMotionGestureEvent")
    end
    def onDiagonalDownLeftMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onDiagonalDownLeftMotionGestureEvent")
    end
    def onDiagonalUpRightMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onDiagonalUpRightMotionGestureEvent")
    end
    def onDiagonalUpLeftMotionGestureEvent(*jargs) : NoReturn
        raise JR.abstractMethod("onDiagonalUpLeftMotionGestureEvent")
    end
    def released(*jargs) : NoReturn
        raise JR.abstractMethod("released")
    end
end

