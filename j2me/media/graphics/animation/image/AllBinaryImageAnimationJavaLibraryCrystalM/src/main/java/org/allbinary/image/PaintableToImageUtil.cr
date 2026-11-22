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

class PaintableToImageUtil < JObject

    @@jst_instance : PaintableToImageUtil? = nil

    def self.jst_instance : PaintableToImageUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PaintableToImageUtil?) : PaintableToImageUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PaintableToImageUtil.new.jinit_PaintableToImageUtil()
    end
    

    def self.getImage(paintableInterface : PaintableInterface?, width : Int, height : Int) : Image?
        width = width.to_i32!
        height = height.to_i32!
        image : Image? = GameFeatureImageCacheFactory.getInstance().not_nil!.get(JR.jclass(PaintableToImageUtil.jst_instance), width, height)
        graphics : Graphics? = image.not_nil!.getGraphics()
        paintableInterface.not_nil!.paint(graphics)
        return image
    end

    def jinit_PaintableToImageUtil : self
        self
    end
end

