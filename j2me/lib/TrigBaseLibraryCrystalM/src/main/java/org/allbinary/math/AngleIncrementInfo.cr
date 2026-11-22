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

class AngleIncrementInfo < JObject
    @angleIncrement : Int16 = 0_i16

    def jf_angleIncrement : Int16
        @angleIncrement
    end

    def jf_angleIncrement=(value : Int16) : Int16
        @angleIncrement = value
    end
    @j_DOWN_FRAME : JInteger? = nil

    def jf_DOWN_FRAME : JInteger?
        @j_DOWN_FRAME
    end

    def jf_DOWN_FRAME=(value : JInteger?) : JInteger?
        @j_DOWN_FRAME = value
    end
    @j_UP_FRAME : JInteger? = nil

    def jf_UP_FRAME : JInteger?
        @j_UP_FRAME
    end

    def jf_UP_FRAME=(value : JInteger?) : JInteger?
        @j_UP_FRAME = value
    end
    @j_LEFT_FRAME : JInteger? = nil

    def jf_LEFT_FRAME : JInteger?
        @j_LEFT_FRAME
    end

    def jf_LEFT_FRAME=(value : JInteger?) : JInteger?
        @j_LEFT_FRAME = value
    end
    @j_RIGHT_FRAME : JInteger? = nil

    def jf_RIGHT_FRAME : JInteger?
        @j_RIGHT_FRAME
    end

    def jf_RIGHT_FRAME=(value : JInteger?) : JInteger?
        @j_RIGHT_FRAME = value
    end
    @frameUtil : FrameUtil? = nil

    def jf_frameUtil : FrameUtil?
        @frameUtil
    end

    def jf_frameUtil=(value : FrameUtil?) : FrameUtil?
        @frameUtil = value
    end

    def self.jst_INCREMENT : String
        "Inc: "
    end

    # Java field initializers run after the super constructor
    def jfields_AngleIncrementInfo : Nil
    
    
    
    
    
    @frameUtil = FrameUtil.getInstance()
    end
    

    def jinit_AngleIncrementInfo(angleIncrement : Int) : self
        angleIncrement = angleIncrement.to_i16!
        jfields_AngleIncrementInfo()
        @angleIncrement = angleIncrement
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        @j_DOWN_FRAME = smallIntegerSingletonFactory.not_nil!.getAt((angleFactory.not_nil!.jf_DOWN.not_nil!.getValue()).to_i32.tdiv((@angleIncrement).to_i32))
        @j_UP_FRAME = smallIntegerSingletonFactory.not_nil!.getAt((angleFactory.not_nil!.jf_UP.not_nil!.getValue()).to_i32!)
        @j_LEFT_FRAME = smallIntegerSingletonFactory.not_nil!.getAt((angleFactory.not_nil!.jf_LEFT.not_nil!.getValue()).to_i32.tdiv((@angleIncrement).to_i32))
        @j_RIGHT_FRAME = smallIntegerSingletonFactory.not_nil!.getAt((angleFactory.not_nil!.jf_RIGHT.not_nil!.getValue()).to_i32.tdiv((@angleIncrement).to_i32))
        self
    end
    

    def getFrameAngle(frame : Int) : Int32
        frame = frame.to_i32!
        return @frameUtil.not_nil!.getFrameAngle(frame, (@angleIncrement).to_i32!)
    end
    

    def getAngleIncrement : Int16
        return @angleIncrement
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(AngleIncrementInfo.jst_INCREMENT).not_nil!.appendshort(@angleIncrement).not_nil!.toString()
    end
    

    def getClosestGeneralDirection(angle : Int) : Int32
        angle = angle.to_i16!
        closestDirection : JInteger? = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(360)
        if @j_UP_FRAME.not_nil!.intValue() - (angle).to_i32 < closestDirection.not_nil!.intValue() - (angle).to_i32
            closestDirection = @j_UP_FRAME
        end
        if @j_DOWN_FRAME.not_nil!.intValue() - (angle).to_i32 < closestDirection.not_nil!.intValue() - (angle).to_i32
            closestDirection = @j_DOWN_FRAME
        end
        if @j_LEFT_FRAME.not_nil!.intValue() - (angle).to_i32 < closestDirection.not_nil!.intValue() - (angle).to_i32
            closestDirection = @j_LEFT_FRAME
        end
        if @j_RIGHT_FRAME.not_nil!.intValue() - (angle).to_i32 < closestDirection.not_nil!.intValue() - (angle).to_i32
            closestDirection = @j_RIGHT_FRAME
        end
        return closestDirection.not_nil!.intValue()
    end
end

