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
# package org.allbinary.media.image

class ImageCopyUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @imageCreationUtil : ImageCreationUtil? = nil

    def jf_imageCreationUtil : ImageCreationUtil?
        @imageCreationUtil
    end

    def jf_imageCreationUtil=(value : ImageCreationUtil?) : ImageCreationUtil?
        @imageCreationUtil = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @gameFeatureFactory : GameFeatureFactory? = nil

    def jf_gameFeatureFactory : GameFeatureFactory?
        @gameFeatureFactory
    end

    def jf_gameFeatureFactory=(value : GameFeatureFactory?) : GameFeatureFactory?
        @gameFeatureFactory = value
    end
    @features : Features? = nil

    def jf_features : Features?
        @features
    end

    def jf_features=(value : Features?) : Features?
        @features = value
    end
    @j_NO_COPY : String = ""

    def jf_NO_COPY : String
        @j_NO_COPY
    end

    def jf_NO_COPY=(value : String) : String
        @j_NO_COPY = value
    end

    @@jst_instance : ImageCopyUtil? = nil

    def self.jst_instance : ImageCopyUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageCopyUtil?) : ImageCopyUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageCopyUtil.new.jinit_ImageCopyUtil()
    end
    

    def self.getInstance : ImageCopyUtil?
        return ImageCopyUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ImageCopyUtil : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @imageCreationUtil = ImageCreationUtil.getInstance()
    @anchor = Anchor.jst_TOP_LEFT
    @gameFeatureFactory = GameFeatureFactory.getInstance()
    @features = Features.getInstance()
    @j_NO_COPY = "J2ME does not need to copy images after initial loading"
    end
    

    def jinit_ImageCopyUtil : self
        jfields_ImageCopyUtil()
        self
    end
    

    def createImageForRotation(originalImage : Image?) : Image?
        return self.createImage(originalImage)
    end
    

    def createImage(originalImage : Image?) : Image?
        if !@features.not_nil!.isFeature(@gameFeatureFactory.not_nil!.jf_POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.not_nil!.put(@j_NO_COPY, self, @commonStrings.not_nil!.jf_CONSTRUCTOR, JException.new.jinit_JException())
            return originalImage
        end
        image : Image? = @imageCreationUtil.not_nil!.createImageWH(originalImage.not_nil!.getWidth(), originalImage.not_nil!.getHeight())
        if image.not_nil!.isMutable()
            image.not_nil!.getGraphics().not_nil!.drawImage(originalImage, 0, 0, @anchor)
            return image
        else
            raise (JException.new.jinit_JException("Not Mutable")).not_nil!
        end
        return nil
    end
    

    def createImageScale(originalImage : Image?, canvasScale : Number, resize : Bool) : Image?
        canvasScale = canvasScale.to_f32
        if !@features.not_nil!.isFeature(@gameFeatureFactory.not_nil!.jf_POST_IMAGE_LOADING_MODIFICATION)
            @logUtil.not_nil!.put(@j_NO_COPY, self, @commonStrings.not_nil!.jf_CONSTRUCTOR, JException.new.jinit_JException())
            return originalImage
        end
        newWidth : Int32 = JR.d2i(((originalImage.not_nil!.getWidth()).to_f32 * canvasScale))
        newHeight : Int32 = JR.d2i(((originalImage.not_nil!.getHeight()).to_f32 * canvasScale))
        if resize
            if newWidth < newHeight
                newWidth = newHeight
            end
            if newHeight < newWidth
                newHeight = newWidth
            end
        end
        image : Image? = @imageCreationUtil.not_nil!.createImageWH(newWidth, newHeight)
        if image.not_nil!.isMutable()
            halfWidthDelta : Int32 = (newWidth &- originalImage.not_nil!.getWidth()).tdiv(2)
            halfHeightDelta : Int32 = (newHeight &- originalImage.not_nil!.getHeight()).tdiv(2)
            graphics : Graphics? = image.not_nil!.getGraphics()
            graphics.not_nil!.drawImage(originalImage, halfWidthDelta, halfHeightDelta, @anchor)
            return image
        else
            raise (JException.new.jinit_JException("Not Mutable")).not_nil!
        end
        return nil
    end
end

