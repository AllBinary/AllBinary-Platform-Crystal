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
# package org.allbinary.game.displayable.canvas

class MyFormUtil < JObject
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
    @popupMenuRectangle : Rectangle? = nil

    def jf_popupMenuRectangle : Rectangle?
        @popupMenuRectangle
    end

    def jf_popupMenuRectangle=(value : Rectangle?) : Rectangle?
        @popupMenuRectangle = value
    end

    @@jst_instance : MyFormUtil? = nil

    def self.jst_instance : MyFormUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MyFormUtil?) : MyFormUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MyFormUtil.new.jinit_MyFormUtil()
    end
    

    def self.getInstance : MyFormUtil?
        return MyFormUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_MyFormUtil : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @popupMenuRectangle = RectangleFactory.jst_SINGLETON
    end

    def jinit_MyFormUtil : self
        jfields_MyFormUtil()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        features : Features? = Features.getInstance()
        isOpenGL : Bool = features.not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL)
        j_TOTAL_CHAR_WIDTH : Int32 = (SWTJOGLProcessor.getInstance().not_nil!.isJOGL() && isOpenGL ? 2 : 3)
        width : Int32 = MyFontProcessor.defaultStringWidth(font, j_TOTAL_CHAR_WIDTH)
        pointFactory : PointFactory? = PointFactory.getInstance()
        if displayInfo.not_nil!.getLastHeight() < 320
            @popupMenuRectangle = Rectangle.new.jinit_Rectangle(pointFactory.not_nil!.createXY(0, 25), width, (font.not_nil!.getHeight() &* 4) &+ 2)
        else
            @popupMenuRectangle = Rectangle.new.jinit_Rectangle(pointFactory.not_nil!.createXY(0, displayInfo.not_nil!.getLastHalfHeight() &- 70), width, (font.not_nil!.getHeight() &* 5))
        end
    end
    

    def getPopupMenuRectangle : Rectangle?
        return @popupMenuRectangle
    end
end

