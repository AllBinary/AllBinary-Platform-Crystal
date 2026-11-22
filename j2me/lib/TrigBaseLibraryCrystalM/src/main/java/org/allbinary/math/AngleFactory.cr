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

class AngleFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_TOTAL_ANGLE : Int16 = 0_i16

    def jf_TOTAL_ANGLE : Int16
        @j_TOTAL_ANGLE
    end

    def jf_TOTAL_ANGLE=(value : Int16) : Int16
        @j_TOTAL_ANGLE = value
    end
    @j_QUARTER_TOTAL_ANGLE : Int16 = 0_i16

    def jf_QUARTER_TOTAL_ANGLE : Int16
        @j_QUARTER_TOTAL_ANGLE
    end

    def jf_QUARTER_TOTAL_ANGLE=(value : Int16) : Int16
        @j_QUARTER_TOTAL_ANGLE = value
    end
    @angleArray : Array(Angle?)? = nil

    def jf_angleArray : Array(Angle?)?
        @angleArray
    end

    def jf_angleArray=(value : Array(Angle?)?) : Array(Angle?)?
        @angleArray = value
    end
    @j_NEGATIVE_ONE : Int16 = 0_i16

    def jf_NEGATIVE_ONE : Int16
        @j_NEGATIVE_ONE
    end

    def jf_NEGATIVE_ONE=(value : Int16) : Int16
        @j_NEGATIVE_ONE = value
    end
    @j_NOT_ANGLE : NamedAngle? = nil

    def jf_NOT_ANGLE : NamedAngle?
        @j_NOT_ANGLE
    end

    def jf_NOT_ANGLE=(value : NamedAngle?) : NamedAngle?
        @j_NOT_ANGLE = value
    end
    @j_DOWN : NamedAngle? = nil

    def jf_DOWN : NamedAngle?
        @j_DOWN
    end

    def jf_DOWN=(value : NamedAngle?) : NamedAngle?
        @j_DOWN = value
    end
    @j_UP : NamedAngle? = nil

    def jf_UP : NamedAngle?
        @j_UP
    end

    def jf_UP=(value : NamedAngle?) : NamedAngle?
        @j_UP = value
    end
    @j_LEFT : NamedAngle? = nil

    def jf_LEFT : NamedAngle?
        @j_LEFT
    end

    def jf_LEFT=(value : NamedAngle?) : NamedAngle?
        @j_LEFT = value
    end
    @j_RIGHT : NamedAngle? = nil

    def jf_RIGHT : NamedAngle?
        @j_RIGHT
    end

    def jf_RIGHT=(value : NamedAngle?) : NamedAngle?
        @j_RIGHT = value
    end
    @frameUtil : FrameUtil? = nil

    def jf_frameUtil : FrameUtil?
        @frameUtil
    end

    def jf_frameUtil=(value : FrameUtil?) : FrameUtil?
        @frameUtil = value
    end

    @@jst_instance : AngleFactory? = nil

    def self.jst_instance : AngleFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AngleFactory?) : AngleFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AngleFactory.new.jinit_AngleFactory()
    end
    

    def self.getInstance : AngleFactory?
        return AngleFactory.jst_instance
    end
    

    def self.main(args : Array(String)?) : Nil
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        index : Int32 = 0
        jfor5 = false
        while true
            if jfor5
                index &+= 1
            end
            jfor5 = true
            break unless index < 360
            stringMaker.not_nil!.appendint(index).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_FORWARD_SLASH).not_nil!.appendshort(angleFactory.not_nil!.getClosestDirection(index).not_nil!.getValue()).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_NEW_LINE)
        end
        LogUtil.getInstance().not_nil!.putF(stringMaker.not_nil!.toString(), "main", "main")
    end

    # Java field initializers run after the super constructor
    def jfields_AngleFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_TOTAL_ANGLE = 360_i16
    @j_QUARTER_TOTAL_ANGLE = 90_i16
    @angleArray = Array(Angle?).new((@j_TOTAL_ANGLE).to_i32!, nil)
    @j_NEGATIVE_ONE = (-1).to_i16!
    @j_NOT_ANGLE = NamedAngle.new.jinit_NamedAngle(@j_NEGATIVE_ONE, CommonStrings.getInstance().not_nil!.jf_EMPTY)
    
    
    
    
    @frameUtil = FrameUtil.getInstance()
    end
    

    def jinit_AngleFactory : self
        jfields_AngleFactory()
        commonPhoneStrings : CommonPhoneStrings? = CommonPhoneStrings.getInstance()
        total : Int16 = (@angleArray.not_nil!.size).to_i16!
        @j_UP = NamedAngle.new.jinit_NamedAngle(0_i16, commonPhoneStrings.not_nil!.jf_UP)
        @angleArray.not_nil![0] = @j_UP
        index = 1
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < 90
            @angleArray.not_nil![index] = Angle.new.jinit_Angle((index).to_i16!)
        end
        @j_RIGHT = NamedAngle.new.jinit_NamedAngle(90_i16, commonPhoneStrings.not_nil!.jf_RIGHT)
        @angleArray.not_nil![90] = @j_RIGHT
        index = 91
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < 180
            @angleArray.not_nil![index] = Angle.new.jinit_Angle((index).to_i16!)
        end
        @j_DOWN = NamedAngle.new.jinit_NamedAngle(180_i16, commonPhoneStrings.not_nil!.jf_DOWN)
        @angleArray.not_nil![180] = @j_DOWN
        index = 181
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < 270
            @angleArray.not_nil![index] = Angle.new.jinit_Angle((index).to_i16!)
        end
        @j_LEFT = NamedAngle.new.jinit_NamedAngle(270_i16, commonPhoneStrings.not_nil!.jf_LEFT)
        @angleArray.not_nil![270] = @j_LEFT
        index = 271
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < (total).to_i32!
            @angleArray.not_nil![index] = Angle.new.jinit_Angle((index).to_i16!)
        end
        self
    end
    

    def getAt(index : Int) : Angle?
        index = index.to_i32!
        adjustedIndex : Int32 = @frameUtil.not_nil!.adjustAngleToFrameAngle(index)
        return @angleArray.not_nil![adjustedIndex]
    end
    

    def getClosestDirection(angle : Int) : Angle?
        angle = angle.to_i32!
        if (angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)
            return @j_UP
        elsif angle >= 45 && angle < 135
            return @j_RIGHT
        elsif angle >= 135 && angle < 225
            return @j_DOWN
        elsif angle >= 225 && angle < 315
            return @j_LEFT
        end
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getGeneralDirection : Angle?
        return @j_NOT_ANGLE
    end
end

