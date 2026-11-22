# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation

class IndexedAnimationBehaviorFactory < AnimationBehaviorFactory
    @frameDelayTime : Int64 = 0_i64

    def jf_frameDelayTime : Int64
        @frameDelayTime
    end

    def jf_frameDelayTime=(value : Int64) : Int64
        @frameDelayTime = value
    end
    @loopTotal : Int32 = 0

    def jf_loopTotal : Int32
        @loopTotal
    end

    def jf_loopTotal=(value : Int32) : Int32
        @loopTotal = value
    end
    

    def jinit_IndexedAnimationBehaviorFactory(loopTotal : Int, frameDelayTime : Int) : self
        loopTotal = loopTotal.to_i32!
        frameDelayTime = frameDelayTime.to_i64!
        jinit_AnimationBehaviorFactory()
        @loopTotal = loopTotal
        @frameDelayTime = frameDelayTime
        self
    end
    

    def getOrCreateInstance : AnimationBehavior?
        return IndexedAnimationBehavior.new.jinit_IndexedAnimationBehavior(@loopTotal, @frameDelayTime)
    end
end

