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
# package org.allbinary.animation.caption

class CaptionIndexedAnimation < IndexedAnimation
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    @movieIndexedAnimationInterface : IndexedAnimation? = nil

    def jf_movieIndexedAnimationInterface : IndexedAnimation?
        @movieIndexedAnimationInterface
    end

    def jf_movieIndexedAnimationInterface=(value : IndexedAnimation?) : IndexedAnimation?
        @movieIndexedAnimationInterface = value
    end
    @captionDx : Int32 = 0

    def jf_captionDx : Int32
        @captionDx
    end

    def jf_captionDx=(value : Int32) : Int32
        @captionDx = value
    end
    @captionDy : Int32 = 0

    def jf_captionDy : Int32
        @captionDy
    end

    def jf_captionDy=(value : Int32) : Int32
        @captionDy = value
    end
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    @time : Int32 = 0

    def jf_time : Int32
        @time
    end

    def jf_time=(value : Int32) : Int32
        @time = value
    end
    @j_END_EVENT : AllBinaryEventObject? = nil

    def jf_END_EVENT : AllBinaryEventObject?
        @j_END_EVENT
    end

    def jf_END_EVENT=(value : AllBinaryEventObject?) : AllBinaryEventObject?
        @j_END_EVENT = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @player : Player? = nil

    def jf_player : Player?
        @player
    end

    def jf_player=(value : Player?) : Player?
        @player = value
    end
    

    def jinit_CaptionIndexedAnimation(animationInterface : Animation?, movieIndexedAnimationInterface : IndexedAnimation?, player : Player?, captionDx : Int, captionDy : Int, dx : Int, dy : Int, time : Int, animationBehavior : AnimationBehavior?) : self
        captionDx = captionDx.to_i32!
        captionDy = captionDy.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        time = time.to_i32!
        jinit_IndexedAnimation(animationBehavior)
        @animationInterface = animationInterface
        @movieIndexedAnimationInterface = movieIndexedAnimationInterface
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
        @time = time
        @j_END_EVENT = AllBinaryEventObject.new.jinit_AllBinaryEventObject(self)
        timePerFrame : Int32 = @time.tdiv(self.getSize())
        @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(timePerFrame)
        @player = player
        @player.not_nil!.start()
        self
    end
    

    def nextFrame : Nil
        if @timeDelayHelper.not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime)
            @movieIndexedAnimationInterface.not_nil!.nextFrame()
        end
        if self.isLastFrame()
            AnimationEventHandler.getInstance().not_nil!.fireEvent(@j_END_EVENT)
        end
    end
    

    def isLastFrame : Bool
        if @movieIndexedAnimationInterface.not_nil!.getFrame() == self.getSize() &- 1
            return true
        else
            return false
        end
        return false
    end
    

    def previousFrame : Nil
        @movieIndexedAnimationInterface.not_nil!.previousFrame()
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @movieIndexedAnimationInterface.not_nil!.setFrame(index)
    end
    

    def getFrame : Int32
        return @movieIndexedAnimationInterface.not_nil!.getFrame()
    end
    

    def getSize : Int32
        return @movieIndexedAnimationInterface.not_nil!.getSize()
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @animationInterface.not_nil!.paintXY(graphics, x &+ @captionDx, y &+ @captionDy)
        @movieIndexedAnimationInterface.not_nil!.paintXY(graphics, x &+ @captionDx &+ @dx, y &+ @captionDy &+ @dy)
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @animationInterface.not_nil!.paintThreedXYZ(graphics, x &+ @captionDx, y &+ @captionDy, z)
        @movieIndexedAnimationInterface.not_nil!.paintThreedXYZ(graphics, x &+ @captionDx &+ @dx, y &+ @captionDy &+ @dy, z)
    end
end

