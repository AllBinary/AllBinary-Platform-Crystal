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

class MotionGestureReceiveInterfaceFactory < JObject
    

    def self.getInstance : CompleteMotionGestureListenerInterface?
        configuration : MotionGestureConfiguration? = MotionGestureConfigurationFactory.getInstance()
        if !configuration.not_nil!.isExecutingActionsAllowed()
            return NullCompleteMotionGestureReceiver.new.jinit_NullCompleteMotionGestureReceiver()
        else
            return ResolveCompleteMotionGestureListener.new.jinit_ResolveCompleteMotionGestureListener()
        end
        return nil
    end

    def jinit_MotionGestureReceiveInterfaceFactory : self
        self
    end
end

