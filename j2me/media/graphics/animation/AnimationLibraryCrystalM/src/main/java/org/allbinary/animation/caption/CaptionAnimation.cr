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

class CaptionAnimation < Animation
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    @overlayAnimationInterface : Animation? = nil

    def jf_overlayAnimationInterface : Animation?
        @overlayAnimationInterface
    end

    def jf_overlayAnimationInterface=(value : Animation?) : Animation?
        @overlayAnimationInterface = value
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
    

    def jinit_CaptionAnimation(animationInterface : Animation?, overlayAnimationInterface : Animation?, captionDx : Int, captionDy : Int, dx : Int, dy : Int) : self
        captionDx = captionDx.to_i32!
        captionDy = captionDy.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_Animation()
        @animationInterface = animationInterface
        @overlayAnimationInterface = overlayAnimationInterface
        @captionDx = captionDx
        @captionDy = captionDy
        @dx = dx
        @dy = dy
        self
    end
    

    def nextFrame : Nil
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @animationInterface.not_nil!.paintXY(graphics, x &+ @captionDx, y &+ @captionDy)
        @overlayAnimationInterface.not_nil!.paintXY(graphics, x &+ @captionDx &+ @dx, y &+ @captionDy &+ @dy)
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @animationInterface.not_nil!.paintThreedXYZ(graphics, x &+ @captionDx, y &+ @captionDy, z)
        @overlayAnimationInterface.not_nil!.paintThreedXYZ(graphics, x &+ @captionDx &+ @dx, y &+ @captionDy &+ @dy, z)
    end
end

