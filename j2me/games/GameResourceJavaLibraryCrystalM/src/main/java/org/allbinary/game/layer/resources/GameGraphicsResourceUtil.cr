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
# package org.allbinary.game.layer.resources

class GameGraphicsResourceUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_SPRITE : String = ""

    def jf_SPRITE : String
        @j_SPRITE
    end

    def jf_SPRITE=(value : String) : String
        @j_SPRITE = value
    end
    @j_QUARTER : String = ""

    def jf_QUARTER : String
        @j_QUARTER
    end

    def jf_QUARTER=(value : String) : String
        @j_QUARTER = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : GameGraphicsResourceUtil?
        if GameGraphicsResourceUtil.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            GameGraphicsResourceUtil.jst_instance = GameGraphicsResourceUtil.new.jinit_GameGraphicsResourceUtil()
        end
        return JR.cast(GameGraphicsResourceUtil.jst_instance, GameGraphicsResourceUtil)
    end

    # Java field initializers run after the super constructor
    def jfields_GameGraphicsResourceUtil : Nil
    @logUtil = LogUtil.getInstance()
    @j_SPRITE = "_sprite"
    @j_QUARTER = "_quarter"
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_GameGraphicsResourceUtil : self
        jfields_GameGraphicsResourceUtil()
        begin
            @name = self.getString()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
        self
    end
    

    def getString : String
        graphicsFeatureFactory : GraphicsFeatureFactory? = GraphicsFeatureFactory.getInstance()
        graphicsFeature : GraphicsFeature? = graphicsFeatureFactory.not_nil!.jf_NONE
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_IMAGE_TO_ARRAY_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.not_nil!.jf_IMAGE_TO_ARRAY_GRAPHICS
        elsif features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_SPRITE_FULL_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.not_nil!.jf_SPRITE_FULL_GRAPHICS
        elsif features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_SPRITE_QUARTER_ROTATION_GRAPHICS)
            graphicsFeature = graphicsFeatureFactory.not_nil!.jf_SPRITE_QUARTER_ROTATION_GRAPHICS
        elsif features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_IMAGE_ROTATION_ON_THE_FLY)
            graphicsFeature = graphicsFeatureFactory.not_nil!.jf_IMAGE_ROTATION_ON_THE_FLY
        end
        return self.getStringForFeature(graphicsFeature)
    end
    

    def getStringForFeature(graphicsFeature : GraphicsFeature?) : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        graphicsFeatureFactory : GraphicsFeatureFactory? = GraphicsFeatureFactory.getInstance()
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_VECTOR_GRAPHICS)
        elsif features.not_nil!.isFeature(graphicsFeatureFactory.not_nil!.jf_IMAGE_GRAPHICS)
            if graphicsFeature == graphicsFeatureFactory.not_nil!.jf_IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature == graphicsFeatureFactory.not_nil!.jf_IMAGE_ROTATION_ON_THE_FLY
            elsif graphicsFeature == graphicsFeatureFactory.not_nil!.jf_SPRITE_FULL_GRAPHICS
                stringBuffer.not_nil!.append(@j_SPRITE)
            elsif graphicsFeature == graphicsFeatureFactory.not_nil!.jf_SPRITE_QUARTER_ROTATION_GRAPHICS
                stringBuffer.not_nil!.append(@j_QUARTER)
                stringBuffer.not_nil!.append(@j_SPRITE)
            else
                raise (JException.new.jinit_JException("None/Unknown Sub Image Resource Type Specified")).not_nil!
            end
        elsif OpenGLFeatureUtil.getInstance().not_nil!.isAnyThreed()
            stringBuffer.not_nil!.append(CanvasStrings.getInstance().not_nil!.jf_OBJ_MODEL)
        else
            raise (JException.new.jinit_JException("None/Unknown Main Image Resource Type Specified")).not_nil!
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def getName : String
        return @name
    end
end

