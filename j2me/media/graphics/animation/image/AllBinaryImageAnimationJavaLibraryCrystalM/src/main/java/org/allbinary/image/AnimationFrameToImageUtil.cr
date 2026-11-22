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
# package org.allbinary.image

class AnimationFrameToImageUtil < JObject

    @@jst_instance : AnimationFrameToImageUtil? = nil

    def self.jst_instance : AnimationFrameToImageUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnimationFrameToImageUtil?) : AnimationFrameToImageUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnimationFrameToImageUtil.new.jinit_AnimationFrameToImageUtil()
    end
    

    def self.getInstance : AnimationFrameToImageUtil?
        return AnimationFrameToImageUtil.jst_instance
    end

    def jinit_AnimationFrameToImageUtil : self
        self
    end
    

    def getInstanceTranslate(width : Int, height : Int, animationInterface : Animation?) : Image?
        width = width.to_i32!
        height = height.to_i32!
        image : Image? = GameFeatureImageCacheFactory.getInstance().not_nil!.get(JR.jclass(AnimationFrameToImageUtil.jst_instance), (JR.shr((width &* 3), 1)), (JR.shr((height &* 3), 1)))
        graphics : Graphics? = image.not_nil!.getGraphics()
        tranlateX : Int32 = (JR.shr(width, 2))
        tranlateY : Int32 = (JR.shr(height, 2))
        graphics.not_nil!.translate(tranlateX, tranlateY)
        animationInterface.not_nil!.paintXY(graphics, 0, 0)
        graphics.not_nil!.translate(JR.neg(tranlateX), JR.neg(tranlateY))
        return image
    end
    

    def getInstanceWH(width : Int, height : Int, animationInterface : Animation?) : Image?
        width = width.to_i32!
        height = height.to_i32!
        image : Image? = GameFeatureImageCacheFactory.getInstance().not_nil!.get(JR.jclass(AnimationFrameToImageUtil.jst_instance), width, height)
        graphics : Graphics? = image.not_nil!.getGraphics()
        animationInterface.not_nil!.paintXY(graphics, 0, 0)
        return image
    end
end

