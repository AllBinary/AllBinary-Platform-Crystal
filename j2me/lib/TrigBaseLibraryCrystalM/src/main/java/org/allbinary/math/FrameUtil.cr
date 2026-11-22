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

class FrameUtil < JObject

    @@jst_instance : FrameUtil? = nil

    def self.jst_instance : FrameUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FrameUtil?) : FrameUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FrameUtil.new.jinit_FrameUtil()
    end
    

    def self.getInstance : FrameUtil?
        return FrameUtil.jst_instance
    end
    

    def jinit_FrameUtil : self
        self
    end
    

    def getFrameForAngle(angle : Int, angleIncrement : Int) : Int32
        angle = angle.to_i16!
        angleIncrement = angleIncrement.to_i32!
        return self.adjustAngleToFrameAngle((angle).to_i32!).tdiv(angleIncrement)
    end
    

    def getFrameAngle(frame : Int, angleIncrement : Int) : Int32
        frame = frame.to_i32!
        angleIncrement = angleIncrement.to_i32!
        frameAngle : Int32 = angleIncrement &* frame &- 90
        return self.adjustAngleToFrameAngle(frameAngle)
    end
    

    def adjustAngleToFrameAngle(currentAngle : Int) : Int32
        currentAngle = currentAngle.to_i32!
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        if currentAngle > 359
            currentAngle = (currentAngle &- ((angleFactory.not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32)
            while currentAngle > 359
                currentAngle = (currentAngle &- ((angleFactory.not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32)
            end
        end
        if currentAngle < 0
            currentAngle = (currentAngle &+ ((angleFactory.not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32)
            while currentAngle < 0
                currentAngle = (currentAngle &+ ((angleFactory.not_nil!.jf_TOTAL_ANGLE).to_i32!).to_i32)
            end
        end
        return currentAngle
    end
end

