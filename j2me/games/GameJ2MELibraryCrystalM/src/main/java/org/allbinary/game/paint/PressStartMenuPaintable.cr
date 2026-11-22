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
# package org.allbinary.game.paint

class PressStartMenuPaintable < Paintable
    include UpdateMyFontInterface
    @displayInfo : DisplayInfoSingleton? = nil

    def jf_displayInfo : DisplayInfoSingleton?
        @displayInfo
    end

    def jf_displayInfo=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfo = value
    end
    @j_PRESS_START : String = ""

    def jf_PRESS_START : String
        @j_PRESS_START
    end

    def jf_PRESS_START=(value : String) : String
        @j_PRESS_START = value
    end
    @j_KEY_START : String = ""

    def jf_KEY_START : String
        @j_KEY_START
    end

    def jf_KEY_START=(value : String) : String
        @j_KEY_START = value
    end
    @j_MENU_START : String = ""

    def jf_MENU_START : String
        @j_MENU_START
    end

    def jf_MENU_START=(value : String) : String
        @j_MENU_START = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @startString : String = ""

    def jf_startString : String
        @startString
    end

    def jf_startString=(value : String) : String
        @startString = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @flash : Bool = false

    def jf_flash : Bool
        @flash
    end

    def jf_flash=(value : Bool) : Bool
        @flash = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @beginWidth : Int32 = 0

    def jf_beginWidth : Int32
        @beginWidth
    end

    def jf_beginWidth=(value : Int32) : Int32
        @beginWidth = value
    end
    @line : Int32 = 0

    def jf_line : Int32
        @line
    end

    def jf_line=(value : Int32) : Int32
        @line = value
    end

    # Java field initializers run after the super constructor
    def jfields_PressStartMenuPaintable : Nil
    @displayInfo = DisplayInfoSingleton.getInstance()
    @j_PRESS_START = "Press Screen To Start"
    @j_KEY_START = "Press or Click F2 To Begin"
    @j_MENU_START = "Press Start From The Menu To Begin"
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @startString = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(1100)
    
    @anchor = Anchor.jst_TOP_LEFT
    
    
    end
    

    def jinit_PressStartMenuPaintable : self
        jinit_Paintable()
        jfields_PressStartMenuPaintable()
        if TouchScreenFactory.getInstance().not_nil!.isTouch()
            @startString = @j_PRESS_START
        elsif AppletUtil.isAppletLoader(self)
            @startString = @j_KEY_START
        else
            @startString = @j_MENU_START
        end
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @beginWidth = (JR.shr(graphics.not_nil!.getFont().not_nil!.stringWidth(@startString), 1))
        @line = (4 &* MyFontProcessor.defaultCharWidth(font)) &+ (JR.shr(font.not_nil!.getHeight(), 1))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics : Graphics?) : Nil
        if @timeDelayHelper.not_nil!.isTimeTNT()
            if self.isFlash()
                self.setFlash(false)
            else
                self.setFlash(true)
            end
        end
        if self.isFlash()
            @myFontProcessor.not_nil!.process(graphics)
            graphics.not_nil!.drawString(@startString, @displayInfo.not_nil!.getLastHalfWidth() &- @beginWidth, @displayInfo.not_nil!.getLastHeight() &- @line, @anchor)
        end
    end
    

    def setFlash(flash : Bool) : Nil
        @flash = flash
    end
    

    def isFlash : Bool
        return @flash
    end
end

