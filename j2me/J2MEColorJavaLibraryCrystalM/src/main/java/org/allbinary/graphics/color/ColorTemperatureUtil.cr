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
# package org.allbinary.graphics.color

class ColorTemperatureUtil < JObject
    @basicColorFactory : BasicColorFactory? = nil

    def jf_basicColorFactory : BasicColorFactory?
        @basicColorFactory
    end

    def jf_basicColorFactory=(value : BasicColorFactory?) : BasicColorFactory?
        @basicColorFactory = value
    end

    @@jst_instance : ColorTemperatureUtil? = nil

    def self.jst_instance : ColorTemperatureUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ColorTemperatureUtil?) : ColorTemperatureUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ColorTemperatureUtil.new.jinit_ColorTemperatureUtil()
    end
    

    def self.getInstance : ColorTemperatureUtil?
        return ColorTemperatureUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ColorTemperatureUtil : Nil
    @basicColorFactory = BasicColorFactory.getInstance()
    end

    def jinit_ColorTemperatureUtil : self
        jfields_ColorTemperatureUtil()
        self
    end
    

    def getBasicColor(thirdTemp : Int) : BasicColor?
        thirdTemp = thirdTemp.to_i32!
        basicColor : BasicColor? = @basicColorFactory.not_nil!.jf_RED
        if thirdTemp > 3700
            basicColor = @basicColorFactory.not_nil!.jf_PURPLE
        elsif thirdTemp > 3200
            basicColor = @basicColorFactory.not_nil!.jf_BLUE
        elsif thirdTemp > 2700
            basicColor = @basicColorFactory.not_nil!.jf_PUCE
        elsif thirdTemp > 2200
            basicColor = @basicColorFactory.not_nil!.jf_WHITE
        elsif thirdTemp > 1700
            basicColor = @basicColorFactory.not_nil!.jf_GREEN
        elsif thirdTemp > 1200
            basicColor = @basicColorFactory.not_nil!.jf_YELLOW
        elsif thirdTemp > 700
            basicColor = @basicColorFactory.not_nil!.jf_ORANGE
        end
        return basicColor
    end
end

