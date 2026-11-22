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
# package org.allbinary.game.configuration.feature

class GraphicsFeatureFactory < JObject
    @j_NONE : GraphicsFeature? = nil

    def jf_NONE : GraphicsFeature?
        @j_NONE
    end

    def jf_NONE=(value : GraphicsFeature?) : GraphicsFeature?
        @j_NONE = value
    end
    @j_TRANSPARENT_IMAGE_CREATION : GraphicsFeature? = nil

    def jf_TRANSPARENT_IMAGE_CREATION : GraphicsFeature?
        @j_TRANSPARENT_IMAGE_CREATION
    end

    def jf_TRANSPARENT_IMAGE_CREATION=(value : GraphicsFeature?) : GraphicsFeature?
        @j_TRANSPARENT_IMAGE_CREATION = value
    end
    @j_IMAGE_GRAPHICS : GraphicsFeature? = nil

    def jf_IMAGE_GRAPHICS : GraphicsFeature?
        @j_IMAGE_GRAPHICS
    end

    def jf_IMAGE_GRAPHICS=(value : GraphicsFeature?) : GraphicsFeature?
        @j_IMAGE_GRAPHICS = value
    end
    @j_IMAGE_ROTATION_ON_THE_FLY : GraphicsFeature? = nil

    def jf_IMAGE_ROTATION_ON_THE_FLY : GraphicsFeature?
        @j_IMAGE_ROTATION_ON_THE_FLY
    end

    def jf_IMAGE_ROTATION_ON_THE_FLY=(value : GraphicsFeature?) : GraphicsFeature?
        @j_IMAGE_ROTATION_ON_THE_FLY = value
    end
    @j_IMAGE_TO_ARRAY_GRAPHICS : GraphicsFeature? = nil

    def jf_IMAGE_TO_ARRAY_GRAPHICS : GraphicsFeature?
        @j_IMAGE_TO_ARRAY_GRAPHICS
    end

    def jf_IMAGE_TO_ARRAY_GRAPHICS=(value : GraphicsFeature?) : GraphicsFeature?
        @j_IMAGE_TO_ARRAY_GRAPHICS = value
    end
    @j_SPRITE_QUARTER_ROTATION_GRAPHICS : GraphicsFeature? = nil

    def jf_SPRITE_QUARTER_ROTATION_GRAPHICS : GraphicsFeature?
        @j_SPRITE_QUARTER_ROTATION_GRAPHICS
    end

    def jf_SPRITE_QUARTER_ROTATION_GRAPHICS=(value : GraphicsFeature?) : GraphicsFeature?
        @j_SPRITE_QUARTER_ROTATION_GRAPHICS = value
    end
    @j_SPRITE_FULL_GRAPHICS : GraphicsFeature? = nil

    def jf_SPRITE_FULL_GRAPHICS : GraphicsFeature?
        @j_SPRITE_FULL_GRAPHICS
    end

    def jf_SPRITE_FULL_GRAPHICS=(value : GraphicsFeature?) : GraphicsFeature?
        @j_SPRITE_FULL_GRAPHICS = value
    end
    @j_VECTOR_GRAPHICS : GraphicsFeature? = nil

    def jf_VECTOR_GRAPHICS : GraphicsFeature?
        @j_VECTOR_GRAPHICS
    end

    def jf_VECTOR_GRAPHICS=(value : GraphicsFeature?) : GraphicsFeature?
        @j_VECTOR_GRAPHICS = value
    end
    @j_VECTOR_TO_IMAGE_GRAPHICS : GraphicsFeature? = nil

    def jf_VECTOR_TO_IMAGE_GRAPHICS : GraphicsFeature?
        @j_VECTOR_TO_IMAGE_GRAPHICS
    end

    def jf_VECTOR_TO_IMAGE_GRAPHICS=(value : GraphicsFeature?) : GraphicsFeature?
        @j_VECTOR_TO_IMAGE_GRAPHICS = value
    end

    @@jst_instance : GraphicsFeatureFactory? = nil

    def self.jst_instance : GraphicsFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GraphicsFeatureFactory?) : GraphicsFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GraphicsFeatureFactory.new.jinit_GraphicsFeatureFactory()
    end
    

    def self.getInstance : GraphicsFeatureFactory?
        return GraphicsFeatureFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GraphicsFeatureFactory : Nil
    @j_NONE = GraphicsFeature.new.jinit_GraphicsFeature(StringUtil.getInstance().not_nil!.jf_NULL_STRING)
    @j_TRANSPARENT_IMAGE_CREATION = GraphicsFeature.new.jinit_GraphicsFeature("Transparent Image Creation")
    @j_IMAGE_GRAPHICS = GraphicsFeature.new.jinit_GraphicsFeature("Image Graphics")
    @j_IMAGE_ROTATION_ON_THE_FLY = GraphicsFeature.new.jinit_GraphicsFeature("Image Rotated On The Fly")
    @j_IMAGE_TO_ARRAY_GRAPHICS = GraphicsFeature.new.jinit_GraphicsFeature("Image To Array Graphics")
    @j_SPRITE_QUARTER_ROTATION_GRAPHICS = GraphicsFeature.new.jinit_GraphicsFeature("Sprite Quarter Rotation Graphics")
    @j_SPRITE_FULL_GRAPHICS = GraphicsFeature.new.jinit_GraphicsFeature("Sprite Full Rotation Graphics")
    @j_VECTOR_GRAPHICS = GraphicsFeature.new.jinit_GraphicsFeature("BasicArrayList Graphics")
    @j_VECTOR_TO_IMAGE_GRAPHICS = GraphicsFeature.new.jinit_GraphicsFeature("BasicArrayList To Image Graphics")
    end
    

    def jinit_GraphicsFeatureFactory : self
        jfields_GraphicsFeatureFactory()
        self
    end
end

