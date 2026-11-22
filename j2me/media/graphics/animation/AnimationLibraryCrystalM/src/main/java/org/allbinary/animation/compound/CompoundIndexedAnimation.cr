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

class CompoundIndexedAnimation < IndexedAnimation
    include CompoundAnimationInterface
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @animationInterfaceArray : Array(Animation?)? = nil

    def jf_animationInterfaceArray : Array(Animation?)?
        @animationInterfaceArray
    end

    def jf_animationInterfaceArray=(value : Array(Animation?)?) : Array(Animation?)?
        @animationInterfaceArray = value
    end
    

    def jinit_CompoundIndexedAnimation(animationInterfaceArray : Array(Animation?)?, animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        @animationInterfaceArray = animationInterfaceArray
        @circularIndexUtil = CircularIndexUtil.createInstance(@animationInterfaceArray.not_nil!.size)
        self
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        indexedAnimation : IndexedAnimation? = JR.cast(@animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()], IndexedAnimation)
        indexedAnimation.not_nil!.setFrame(index)
    end
    

    def getFrame : Int32
        indexedAnimation : IndexedAnimation? = JR.cast(@animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()], IndexedAnimation)
        return indexedAnimation.not_nil!.getFrame()
    end
    

    def getSize : Int32
        indexedAnimation : IndexedAnimation? = JR.cast(@animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()], IndexedAnimation)
        return indexedAnimation.not_nil!.getSize()
    end
    

    def previousFrame : Nil
        indexedAnimation : IndexedAnimation? = JR.cast(@animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()], IndexedAnimation)
        indexedAnimation.not_nil!.previousFrame()
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def nextFrame : Nil
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.nextFrame()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.paintXY(graphics, x, y)
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()].not_nil!.paintThreedXYZ(graphics, x, y, z)
    end
    

    def getCurrentAnimation : IndexedAnimation?
        return JR.cast(@animationInterfaceArray.not_nil![@circularIndexUtil.not_nil!.getIndex()], IndexedAnimation)
    end
    

    def nextAnimation : Nil
        frame : Int32 = self.getFrame()
        @circularIndexUtil.not_nil!.next_()
        self.setFrame(frame)
    end
    

    def previousAnimation : Nil
        frame : Int32 = self.getFrame()
        @circularIndexUtil.not_nil!.previous()
        self.setFrame(frame)
    end
    

    def setAnimation(index : Int) : Nil
        index = index.to_i32!
        frame : Int32 = self.getFrame()
        @circularIndexUtil.not_nil!.setIndex(index)
        self.setFrame(frame)
    end
    

    def getAnimationInterfaceArray : Array(Animation?)?
        return @animationInterfaceArray
    end
    

    def setAnimationInterfaceArray(animationInterfaceArray : Array(Animation?)?) : Nil
        @animationInterfaceArray = animationInterfaceArray
    end
    

    def set(gl : GL?) : Nil
        index : Int32 = @animationInterfaceArray.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.set(gl)
        end
    end
end

