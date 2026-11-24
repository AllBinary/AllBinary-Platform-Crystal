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
# package org.allbinary.game.resource

class FeaturedResourceFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @j_ANIMATION_FEATURES : String = ""

    def jf_ANIMATION_FEATURES : String
        @j_ANIMATION_FEATURES
    end

    def jf_ANIMATION_FEATURES=(value : String) : String
        @j_ANIMATION_FEATURES = value
    end
    @j_IMAGE_LABEL : String = ""

    def jf_IMAGE_LABEL : String
        @j_IMAGE_LABEL
    end

    def jf_IMAGE_LABEL=(value : String) : String
        @j_IMAGE_LABEL = value
    end
    @j_IMAGE_GRAPHICS_ARRAY : String = ""

    def jf_IMAGE_GRAPHICS_ARRAY : String
        @j_IMAGE_GRAPHICS_ARRAY
    end

    def jf_IMAGE_GRAPHICS_ARRAY=(value : String) : String
        @j_IMAGE_GRAPHICS_ARRAY = value
    end
    @j_IMAGE_GRAPHICS_ROTATION : String = ""

    def jf_IMAGE_GRAPHICS_ROTATION : String
        @j_IMAGE_GRAPHICS_ROTATION
    end

    def jf_IMAGE_GRAPHICS_ROTATION=(value : String) : String
        @j_IMAGE_GRAPHICS_ROTATION = value
    end
    @j_SPRITE_QUARTER : String = ""

    def jf_SPRITE_QUARTER : String
        @j_SPRITE_QUARTER
    end

    def jf_SPRITE_QUARTER=(value : String) : String
        @j_SPRITE_QUARTER = value
    end
    @j_SPRITE_FULL : String = ""

    def jf_SPRITE_FULL : String
        @j_SPRITE_FULL
    end

    def jf_SPRITE_FULL=(value : String) : String
        @j_SPRITE_FULL = value
    end
    @j_IS_LOADING_LEVEL_LABEL : String = ""

    def jf_IS_LOADING_LEVEL_LABEL : String
        @j_IS_LOADING_LEVEL_LABEL
    end

    def jf_IS_LOADING_LEVEL_LABEL=(value : String) : String
        @j_IS_LOADING_LEVEL_LABEL = value
    end
    @j_IS_FEATURE : String = ""

    def jf_IS_FEATURE : String
        @j_IS_FEATURE
    end

    def jf_IS_FEATURE=(value : String) : String
        @j_IS_FEATURE = value
    end
    @j_GAME_FEATURE_CONTROLLED : String = ""

    def jf_GAME_FEATURE_CONTROLLED : String
        @j_GAME_FEATURE_CONTROLLED
    end

    def jf_GAME_FEATURE_CONTROLLED=(value : String) : String
        @j_GAME_FEATURE_CONTROLLED = value
    end

    # Java field initializers run after the super constructor
    def jfields_FeaturedResourceFactory : Nil
    @logUtil = LogUtil.getInstance()
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @commonStrings = CommonStrings.getInstance()
    @j_ANIMATION_FEATURES = "Animation Features: Vector: "
    @j_IMAGE_LABEL = " Image: "
    @j_IMAGE_GRAPHICS_ARRAY = "Image Array: "
    @j_IMAGE_GRAPHICS_ROTATION = "Image Rotate: "
    @j_SPRITE_QUARTER = " Sprite Quarter: "
    @j_SPRITE_FULL = " Sprite Full: "
    @j_IS_LOADING_LEVEL_LABEL = " isLoadingLevel "
    @j_IS_FEATURE = " isFeature: "
    @j_GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: "
    end
    

    def jinit_FeaturedResourceFactory : self
        jfields_FeaturedResourceFactory()
        self
    end
    

    def init(level : Int) : Nil
        level = level.to_i32!
        size : Int32 = @list.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            featureInterface : GameFeatureControlledInterface? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], GameFeatureControlledInterface)
            isLoadingLevel : Bool = (featureInterface.not_nil!.isLoadingLevel(level)).as(Bool)
            isFeature : Bool = (featureInterface.not_nil!.isFeature()).as(Bool)
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_GAME_FEATURE_CONTROLLED).not_nil!.append(featureInterface.not_nil!.toString()).not_nil!.append(@j_IS_LOADING_LEVEL_LABEL).not_nil!.append(ResourceLoadingLevelFactory.getInstance().not_nil!.getLevelString(level)).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COLON_SEP).not_nil!.appendboolean(isLoadingLevel).not_nil!.append(@j_IS_FEATURE).not_nil!.appendboolean(isFeature).not_nil!.toString(), self, @commonStrings.not_nil!.jf_INIT)
            if isLoadingLevel && isFeature
                featureInterface.not_nil!.init(level)
            end
        end
        features : Features? = Features.getInstance()
        graphicsFeatureFactory : GraphicsFeatureFactory? = GraphicsFeatureFactory.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(@j_ANIMATION_FEATURES)
        stringBuffer.not_nil!.appendboolean(features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_VECTOR_GRAPHICS))
        stringBuffer.not_nil!.append(@j_IMAGE_LABEL)
        stringBuffer.not_nil!.appendboolean(features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_IMAGE_GRAPHICS))
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, @commonStrings.not_nil!.jf_INIT)
        if features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_IMAGE_GRAPHICS)
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            stringBuffer.not_nil!.append(@j_IMAGE_GRAPHICS_ARRAY)
            stringBuffer.not_nil!.appendboolean(features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.not_nil!.append(@j_IMAGE_GRAPHICS_ROTATION)
            stringBuffer.not_nil!.appendboolean(features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_IMAGE_TO_ARRAY_GRAPHICS))
            stringBuffer.not_nil!.append(@j_SPRITE_QUARTER)
            stringBuffer.not_nil!.appendboolean(features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_SPRITE_QUARTER_ROTATION_GRAPHICS))
            stringBuffer.not_nil!.append(@j_SPRITE_FULL)
            stringBuffer.not_nil!.appendboolean(features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_SPRITE_FULL_GRAPHICS))
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, @commonStrings.not_nil!.jf_INIT)
        end
    end
    

    def clear : Nil
        @list.not_nil!.clear()
    end
    

    def add(featureInterface : GameFeatureControlledInterface?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(StringUtil.getInstance().not_nil!.toString(featureInterface)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_ADD)
        @list.not_nil!.add(featureInterface)
    end
    

    def getList : BasicArrayList?
        return @list
    end
end

