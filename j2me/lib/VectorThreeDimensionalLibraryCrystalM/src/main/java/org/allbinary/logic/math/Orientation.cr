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
# package org.allbinary.logic.math

class Orientation < JObject
    @yaw : BasicDecimal? = nil

    def jf_yaw : BasicDecimal?
        @yaw
    end

    def jf_yaw=(value : BasicDecimal?) : BasicDecimal?
        @yaw = value
    end
    @pitch : BasicDecimal? = nil

    def jf_pitch : BasicDecimal?
        @pitch
    end

    def jf_pitch=(value : BasicDecimal?) : BasicDecimal?
        @pitch = value
    end
    @roll : BasicDecimal? = nil

    def jf_roll : BasicDecimal?
        @roll
    end

    def jf_roll=(value : BasicDecimal?) : BasicDecimal?
        @roll = value
    end

    @@jst_NONE : Orientation? = nil

    def self.jst_NONE : Orientation?
        jclinit
        @@jst_NONE
    end

    def self.jst_NONE=(value : Orientation?) : Orientation?
        jclinit
        @@jst_NONE = value
    end

    @@jst_SINGLETON : Orientation? = nil

    def self.jst_SINGLETON : Orientation?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : Orientation?) : Orientation?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NONE = Orientation.new.jinit_Orientation(0, 0, 0)
        @@jst_SINGLETON = Orientation.new.jinit_Orientation(0, 0, 0)
    end
    

    def self.getInstance(yaw : Int, pitch : Int, roll : Int) : Orientation?
        yaw = yaw.to_i32!
        pitch = pitch.to_i32!
        roll = roll.to_i32!
        Orientation.jst_SINGLETON.not_nil!.jf_yaw.not_nil!.setint(yaw)
        Orientation.jst_SINGLETON.not_nil!.jf_pitch.not_nil!.setint(pitch)
        Orientation.jst_SINGLETON.not_nil!.jf_roll.not_nil!.setint(roll)
        return Orientation.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_Orientation : Nil
    @yaw = BasicDecimal.new.jinit_BasicDecimal(0)
    @pitch = BasicDecimal.new.jinit_BasicDecimal(0)
    @roll = BasicDecimal.new.jinit_BasicDecimal(0)
    end
    

    def jinit_Orientation(yaw : Int, pitch : Int, roll : Int) : self
        yaw = yaw.to_i32!
        pitch = pitch.to_i32!
        roll = roll.to_i32!
        jfields_Orientation()
        @yaw.not_nil!.setint(yaw)
        @pitch.not_nil!.setint(pitch)
        @roll.not_nil!.setint(roll)
        self
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Y: ")
        stringBuffer.not_nil!.append(@yaw.not_nil!.toString())
        stringBuffer.not_nil!.append(" P: ")
        stringBuffer.not_nil!.append(@pitch.not_nil!.toString())
        stringBuffer.not_nil!.append(" R: ")
        stringBuffer.not_nil!.append(@roll.not_nil!.toString())
        return stringBuffer.not_nil!.toString()
    end
end

