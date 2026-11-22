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
# package org.allbinary.animation.special

class TitleAnimation < SpecialAnimation
    @systemWrapper : ABSystemWrapper? = nil

    def jf_systemWrapper : ABSystemWrapper?
        @systemWrapper
    end

    def jf_systemWrapper=(value : ABSystemWrapper?) : ABSystemWrapper?
        @systemWrapper = value
    end
    @deltaX : Float32 = 0_f32

    def jf_deltaX : Float32
        @deltaX
    end

    def jf_deltaX=(value : Float32) : Float32
        @deltaX = value
    end
    @deltaY : Float32 = 0_f32

    def jf_deltaY : Float32
        @deltaY
    end

    def jf_deltaY=(value : Float32) : Float32
        @deltaY = value
    end
    @deltaZ : Float32 = 0_f32

    def jf_deltaZ : Float32
        @deltaZ
    end

    def jf_deltaZ=(value : Float32) : Float32
        @deltaZ = value
    end
    @basicColorArray : Array(BasicColor?)? = nil

    def jf_basicColorArray : Array(BasicColor?)?
        @basicColorArray
    end

    def jf_basicColorArray=(value : Array(BasicColor?)?) : Array(BasicColor?)?
        @basicColorArray = value
    end
    @dxArray : Array(Int32)? = nil

    def jf_dxArray : Array(Int32)?
        @dxArray
    end

    def jf_dxArray=(value : Array(Int32)?) : Array(Int32)?
        @dxArray = value
    end
    @dyArray : Array(Int32)? = nil

    def jf_dyArray : Array(Int32)?
        @dyArray
    end

    def jf_dyArray=(value : Array(Int32)?) : Array(Int32)?
        @dyArray = value
    end
    @widthP : Int32 = 0

    def jf_widthP : Int32
        @widthP
    end

    def jf_widthP=(value : Int32) : Int32
        @widthP = value
    end
    @animationInterfaceArray : Array(IndexedAnimation?)? = nil

    def jf_animationInterfaceArray : Array(IndexedAnimation?)?
        @animationInterfaceArray
    end

    def jf_animationInterfaceArray=(value : Array(IndexedAnimation?)?) : Array(IndexedAnimation?)?
        @animationInterfaceArray = value
    end
    @sizeP : Int32 = 0

    def jf_sizeP : Int32
        @sizeP
    end

    def jf_sizeP=(value : Int32) : Int32
        @sizeP = value
    end
    @y : Int32 = 0

    def jf_y : Int32
        @y
    end

    def jf_y=(value : Int32) : Int32
        @y = value
    end
    @lastFrameStartTime : Int64 = 0_i64

    def jf_lastFrameStartTime : Int64
        @lastFrameStartTime
    end

    def jf_lastFrameStartTime=(value : Int64) : Int64
        @lastFrameStartTime = value
    end
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @j_CLEAR_COLOR : BasicColor? = nil

    def jf_CLEAR_COLOR : BasicColor?
        @j_CLEAR_COLOR
    end

    def jf_CLEAR_COLOR=(value : BasicColor?) : BasicColor?
        @j_CLEAR_COLOR = value
    end
    

    def self.createAnimation(animationInterfaceArray : Array(IndexedAnimation?)?, basicColorArray : Array(BasicColor?)?, dxArray : Array(Int32)?, dyArray : Array(Int32)?, y : Int, width : Int) : TitleAnimation?
        y = y.to_i32!
        width = width.to_i32!
        return TitleAnimation.new.jinit_TitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, IndexedAnimationBehavior.new.jinit_IndexedAnimationBehavior(1, 250))
    end

    # Java field initializers run after the super constructor
    def jfields_TitleAnimation : Nil
    @systemWrapper = ABSystemWrapper.getInstance()
    
    
    
    
    
    
    
    
    
    
    
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @j_CLEAR_COLOR = BasicColorFactory.getInstance().not_nil!.jf_CLEAR_COLOR
    end
    

    def jinit_TitleAnimation(animationInterfaceArray : Array(IndexedAnimation?)?, basicColorArray : Array(BasicColor?)?, dxArray : Array(Int32)?, dyArray : Array(Int32)?, y : Int, width : Int, animationBehavior : AnimationBehavior?) : self
        y = y.to_i32!
        width = width.to_i32!
        jinit_SpecialAnimation(animationBehavior)
        jfields_TitleAnimation()
        @lastFrameStartTime = @systemWrapper.not_nil!.currentTimeMillis()
        @animationInterfaceArray = animationInterfaceArray
        @sizeP = @animationInterfaceArray.not_nil!.size
        @basicColorArray = basicColorArray
        @dxArray = dxArray
        @dyArray = dyArray
        @y = y
        @widthP = width
        self.reset()
        self
    end
    

    def nextFrame : Nil
        currentTime : Int64 = @systemWrapper.not_nil!.currentTimeMillis()
        totalTimeElapsed : Int64 = currentTime &- @lastFrameStartTime
        indexedAnimationBehavior : IndexedAnimationBehavior? = JR.cast(self.getAnimationBehavior(), IndexedAnimationBehavior)
        if totalTimeElapsed > indexedAnimationBehavior.not_nil!.jf_frameDelayTime
            self.previousFrame()
            @lastFrameStartTime = currentTime
        end
        if @animationInterfaceArray.not_nil![0].not_nil!.getFrame() == 0
            indexedAnimationBehavior.not_nil!.jf_loopIndex &+= 1
        end
    end
    

    def isComplete : Bool
        indexedAnimationBehavior : IndexedAnimationBehavior? = JR.cast(self.getAnimationBehavior(), IndexedAnimationBehavior)
        if indexedAnimationBehavior.not_nil!.jf_loopTotal == -1 || indexedAnimationBehavior.not_nil!.jf_loopIndex < indexedAnimationBehavior.not_nil!.jf_loopTotal || self.getFrame() != 0
            return false
        else
            return true
        end
        return false
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def getSize : Int32
        return @animationInterfaceArray.not_nil![0].not_nil!.getSize()
    end
    

    def getFrame : Int32
        return @animationInterfaceArray.not_nil![0].not_nil!.getFrame()
    end
    

    def setFrame(frame : Int) : Nil
        frame = frame.to_i32!
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @sizeP
            @animationInterfaceArray.not_nil![index].not_nil!.setFrame(frame)
        end
    end
    

    def setLastFrame : Nil
        self.setFrame(self.getSize() &- 1)
    end
    

    def reset : Nil
        self.setLastFrame()
        indexedAnimationBehavior : IndexedAnimationBehavior? = (JR.cast(self.getAnimationBehavior(), IndexedAnimationBehavior))
        indexedAnimationBehavior.not_nil!.reset()
    end
    

    def previousFrame : Nil
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < @sizeP
            @animationInterfaceArray.not_nil![index].not_nil!.previousFrame()
        end
    end
    

    def paintFrameXY(graphics : Graphics?, frame : Int, x : Int, y : Int) : Nil
        frame = frame.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        self.setFrame(frame)
        self.paintXY(graphics, x, y)
    end
    

    def paintXY(graphics : Graphics?, ax : Int, ay : Int) : Nil
        ax = ax.to_i32!
        ay = ay.to_i32!
        x : Int32 = 0
        if @widthP != JInteger.jst_MIN_VALUE
            x = ((@displayInfoSingleton.not_nil!.getLastWidth() &- @widthP).tdiv(2))
        end
        deltaX : Int32 = 0
        deltaY : Int32 = 0
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < @sizeP
            deltaX = @dxArray.not_nil![index] &+ x
            deltaY = @dyArray.not_nil![index] &+ @y
            if @basicColorArray.not_nil![index] != @j_CLEAR_COLOR
                @basicSetColorUtil.not_nil!.setBasicColorP(graphics, @basicColorArray.not_nil![index])
            end
            @animationInterfaceArray.not_nil![index].not_nil!.paintXY(graphics, deltaX, deltaY)
        end
    end
end

