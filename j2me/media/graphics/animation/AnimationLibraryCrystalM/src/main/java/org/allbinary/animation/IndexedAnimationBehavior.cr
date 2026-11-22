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

class IndexedAnimationBehavior < AnimationBehavior
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
    @elapsedTime : Int64 = 0_i64

    def jf_elapsedTime : Int64
        @elapsedTime
    end

    def jf_elapsedTime=(value : Int64) : Int64
        @elapsedTime = value
    end
    @loopIndex : Int32 = 0

    def jf_loopIndex : Int32
        @loopIndex
    end

    def jf_loopIndex=(value : Int32) : Int32
        @loopIndex = value
    end
    

    def jinit_IndexedAnimationBehavior(loopTotal : Int, frameDelayTime : Int) : self
        loopTotal = loopTotal.to_i32!
        frameDelayTime = frameDelayTime.to_i64!
        jinit_AnimationBehavior()
        @loopTotal = loopTotal
        @frameDelayTime = frameDelayTime
        self
    end
    

    def reset : Nil
        @loopIndex = 0
    end
end

