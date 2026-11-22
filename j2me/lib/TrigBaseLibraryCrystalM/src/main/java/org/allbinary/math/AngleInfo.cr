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
# package org.allbinary.math

class AngleInfo < JObject
    @angleIncrementInfo : AngleIncrementInfo? = nil

    def jf_angleIncrementInfo : AngleIncrementInfo?
        @angleIncrementInfo
    end

    def jf_angleIncrementInfo=(value : AngleIncrementInfo?) : AngleIncrementInfo?
        @angleIncrementInfo = value
    end
    @angle : Int16 = 0_i16

    def jf_angle : Int16
        @angle
    end

    def jf_angle=(value : Int16) : Int16
        @angle = value
    end
    @frameUtil : FrameUtil? = nil

    def jf_frameUtil : FrameUtil?
        @frameUtil
    end

    def jf_frameUtil=(value : FrameUtil?) : FrameUtil?
        @frameUtil = value
    end

    def self.jst_ANGLE : String
        "Angle: "
    end
    

    def self.getInstance(angleIncrement : Int) : AngleInfo?
        angleIncrement = angleIncrement.to_i16!
        return AngleInfo.new.jinit_AngleInfo(AngleIncrementInfoFactory.getInstance().not_nil!.getAt(angleIncrement))
    end

    # Java field initializers run after the super constructor
    def jfields_AngleInfo : Nil
    
    @angle = 0_i16
    @frameUtil = FrameUtil.getInstance()
    end
    

    def jinit_AngleInfo(angleIncrementInfo : AngleIncrementInfo?) : self
        jfields_AngleInfo()
        @angleIncrementInfo = angleIncrementInfo
        self
    end
    

    def adjustAngle(frame : Int) : Nil
        frame = frame.to_i32!
        newAngle : Int32 = ((@angleIncrementInfo.not_nil!.getAngleIncrement()).to_i32!).to_i32 &* frame &- 90
        self.setAngle((@frameUtil.not_nil!.adjustAngleToFrameAngle(newAngle)).to_i16!)
    end
    

    def getAngle : Int16
        return @angle
    end
    

    def setAngle(angle : Int) : Nil
        angle = angle.to_i16!
        @angle = angle
    end
    

    def getAngleIncrementInfo : AngleIncrementInfo?
        return @angleIncrementInfo
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(AngleInfo.jst_ANGLE)
        stringBuffer.not_nil!.appendshort(@angle)
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(self.getAngleIncrementInfo()))
        return stringBuffer.not_nil!.toString()
    end
end

