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
# package org.allbinary.animation.image.sprite

class AllBinarySpriteRotationAnimation < HackRotationSpriteIndexedAnimation
    

    def jinit_AllBinarySpriteRotationAnimation(sprite : Sprite?, image : Image?, animationBehavior : AnimationBehavior?) : self
        jinit_HackRotationSpriteIndexedAnimation(sprite, image, AngleInfo.getInstance(((((AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32.tdiv(sprite.not_nil!.getRawFrameCount()))).to_i16!), animationBehavior)
        @angleInfo.not_nil!.adjustAngle(@sprite.not_nil!.getFrame())
        self
    end
    

    def nextRotation : Nil
        @sprite.not_nil!.nextFrame()
        @angleInfo.not_nil!.adjustAngle(@sprite.not_nil!.getFrame())
    end
    

    def previousRotation : Nil
        @sprite.not_nil!.prevFrame()
        @angleInfo.not_nil!.adjustAngle(@sprite.not_nil!.getFrame())
    end
    

    def setFrameByDirection(direction : Direction?) : Nil
        angle : Angle? = @directionUtil.not_nil!.getFrameAngle(direction)
        self.adjustFrameToAngle(angle)
    end
    

    def setFrameToAngle(angle : Angle?) : Nil
        self.adjustFrameToAngle(angle)
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
        @sprite.not_nil!.setFrame(index)
        @angleInfo.not_nil!.adjustAngle(self.getFrame())
    end
    

    def adjustFrameToAngle(angle : Angle?) : Nil
        self.adjustFrame(angle.not_nil!.getValue())
    end
    

    def adjustFrame(angle : Int) : Nil
        angle = angle.to_i16!
        self.setFrame(@frameUtil.not_nil!.getFrameForAngle(angle, (@angleInfo.not_nil!.getAngleIncrementInfo().not_nil!.getAngleIncrement()).to_i32!))
    end
end

