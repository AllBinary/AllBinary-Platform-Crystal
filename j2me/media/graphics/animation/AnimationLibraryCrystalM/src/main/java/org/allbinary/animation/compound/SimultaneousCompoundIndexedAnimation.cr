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

class SimultaneousCompoundIndexedAnimation < IndexedAnimation
    @animationInterfaceArray : Array(Animation?)? = nil

    def jf_animationInterfaceArray : Array(Animation?)?
        @animationInterfaceArray
    end

    def jf_animationInterfaceArray=(value : Array(Animation?)?) : Array(Animation?)?
        @animationInterfaceArray = value
    end
    

    def jinit_SimultaneousCompoundIndexedAnimation(animationInterfaceArray : Array(Animation?)?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        @animationInterfaceArray = animationInterfaceArray
        self
    end
    

    def setFrame(frameIndex : Int) : Nil
        frameIndex = frameIndex.to_i32!
        indexedAnimation : IndexedAnimation? = nil
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            indexedAnimation = JR.cast(@animationInterfaceArray.not_nil![index], IndexedAnimation)
            indexedAnimation.not_nil!.setFrame(frameIndex)
        end
    end
    

    def getFrame : Int32
        indexedAnimation : IndexedAnimation? = JR.cast(@animationInterfaceArray.not_nil![0], IndexedAnimation)
        return indexedAnimation.not_nil!.getFrame()
    end
    

    def getSize : Int32
        indexedAnimation : IndexedAnimation? = JR.cast(@animationInterfaceArray.not_nil![0], IndexedAnimation)
        return indexedAnimation.not_nil!.getSize()
    end
    

    def previousFrame : Nil
        indexedAnimation : IndexedAnimation? = nil
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            indexedAnimation = JR.cast(@animationInterfaceArray.not_nil![index], IndexedAnimation)
            indexedAnimation.not_nil!.previousFrame()
        end
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
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
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        size : Int32 = @animationInterfaceArray.not_nil!.size
        index : Int32 = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size
            @animationInterfaceArray.not_nil![index].not_nil!.paintXY(graphics, x, y)
        end
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        size : Int32 = @animationInterfaceArray.not_nil!.size
        index : Int32 = 0
        jfor5 = false
        while true
            if jfor5
                index &+= 1
            end
            jfor5 = true
            break unless index < size
            @animationInterfaceArray.not_nil![index].not_nil!.paintThreedXYZ(graphics, x, y, z)
        end
    end
    

    def getAnimationInterfaceArray : Array(Animation?)?
        return @animationInterfaceArray
    end
    

    def setAnimationInterfaceArray(animationInterfaceArray : Array(Animation?)?) : Nil
        @animationInterfaceArray = animationInterfaceArray
    end
end

