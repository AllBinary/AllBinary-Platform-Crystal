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
# package org.allbinary.media

class AllBinaryVisualDebugVibration < AllBinaryVibrationME
    include UpdateMyFontInterface
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @j_VIBRATING : String = ""

    def jf_VIBRATING : String
        @j_VIBRATING
    end

    def jf_VIBRATING=(value : String) : String
        @j_VIBRATING = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryVisualDebugVibration : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(JInteger.jst_MAX_VALUE)
    @j_VIBRATING = "Vibrating"
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @anchor = Anchor.jst_TOP_LEFT
    
    end

    def jinit_AllBinaryVisualDebugVibration : self
        jinit_AllBinaryVibrationME()
        jfields_AllBinaryVisualDebugVibration()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @width = font.not_nil!.stringWidth(@j_VIBRATING)
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def vibrate(duration : Int, type_ : Int, volume : Int) : Nil
        duration = duration.to_i32!
        type_ = type_.to_i32!
        volume = volume.to_i32!
        @timeDelayHelper.not_nil!.jf_delay = duration
    end
    

    def paint(graphics : Graphics?) : Nil
        if @timeDelayHelper.not_nil!.isTimeTNT()
            @timeDelayHelper.not_nil!.jf_delay = JInteger.jst_MAX_VALUE
            @myFontProcessor.not_nil!.process(graphics)
            graphics.not_nil!.drawString(@j_VIBRATING, @displayInfoSingleton.not_nil!.getLastHalfWidth() &- (JR.shr(@width, 1)), 0, @anchor)
        end
    end
end

