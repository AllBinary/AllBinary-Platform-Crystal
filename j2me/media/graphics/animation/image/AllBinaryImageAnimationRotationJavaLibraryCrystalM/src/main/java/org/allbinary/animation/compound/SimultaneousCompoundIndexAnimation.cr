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
# package org.allbinary.animation.compound

class SimultaneousCompoundIndexAnimation < IndexedAnimation
    @animationInterfaceArray : Array(IndexedAnimation?)? = nil

    def jf_animationInterfaceArray : Array(IndexedAnimation?)?
        @animationInterfaceArray
    end

    def jf_animationInterfaceArray=(value : Array(IndexedAnimation?)?) : Array(IndexedAnimation?)?
        @animationInterfaceArray = value
    end
    

    def jinit_SimultaneousCompoundIndexAnimation(animationInterfaceArray : Array(IndexedAnimation?)?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        @animationInterfaceArray = animationInterfaceArray
        self
    end
    

    def setFrame(frameIndex : Int) : Nil
        frameIndex = frameIndex.to_i32!
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.setFrame(frameIndex)
        end
    end
    

    def getFrame : Int32
        return @animationInterfaceArray.not_nil![0].not_nil!.getFrame()
    end
    

    def getAnimationSize : Int32
        return @animationInterfaceArray.not_nil![0].not_nil!.getAnimationSize()
    end
    

    def getSize : Int32
        return @animationInterfaceArray.not_nil![0].not_nil!.getSize()
    end
    

    def previousFrame : Nil
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.previousFrame()
        end
    end
    

    def nextFrame : Nil
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor3 = false
        while true
            jfor3 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.nextFrame()
        end
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor4 = false
        while true
            jfor4 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.paintXY(graphics, x, y)
        end
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor5 = false
        while true
            jfor5 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.paintThreedXYZ(graphics, x, y, z)
        end
    end
    

    def set(gl : GL?) : Nil
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor6 = false
        while true
            jfor6 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.set(gl)
        end
    end
    

    def getAnimationInterfaceArray : Array(IndexedAnimation?)?
        return @animationInterfaceArray
    end
    

    def setAnimationInterfaceArray(animationInterfaceArray : Array(IndexedAnimation?)?) : Nil
        @animationInterfaceArray = animationInterfaceArray
    end
end

