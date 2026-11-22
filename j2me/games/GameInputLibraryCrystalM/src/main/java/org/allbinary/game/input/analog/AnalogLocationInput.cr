# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

class AnalogLocationInput < JObject
    @playerId : Int32 = 0

    def jf_playerId : Int32
        @playerId
    end

    def jf_playerId=(value : Int32) : Int32
        @playerId = value
    end
    @customGPoint : CustomGPoint? = nil

    def jf_customGPoint : CustomGPoint?
        @customGPoint
    end

    def jf_customGPoint=(value : CustomGPoint?) : CustomGPoint?
        @customGPoint = value
    end
    @rz : Int32 = 0

    def jf_rz : Int32
        @rz
    end

    def jf_rz=(value : Int32) : Int32
        @rz = value
    end
    @rightTrigger : Int32 = 0

    def jf_rightTrigger : Int32
        @rightTrigger
    end

    def jf_rightTrigger=(value : Int32) : Int32
        @rightTrigger = value
    end
    @leftTrigger : Int32 = 0

    def jf_leftTrigger : Int32
        @leftTrigger
    end

    def jf_leftTrigger=(value : Int32) : Int32
        @leftTrigger = value
    end

    @@jst_NULL_ANALOG_LOCATION_INPUT : AnalogLocationInput? = nil

    def self.jst_NULL_ANALOG_LOCATION_INPUT : AnalogLocationInput?
        jclinit
        @@jst_NULL_ANALOG_LOCATION_INPUT
    end

    def self.jst_NULL_ANALOG_LOCATION_INPUT=(value : AnalogLocationInput?) : AnalogLocationInput?
        jclinit
        @@jst_NULL_ANALOG_LOCATION_INPUT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ANALOG_LOCATION_INPUT = AnalogLocationInput.new.jinit_AnalogLocationInput(-1)
    end
    

    def jinit_AnalogLocationInput(playerId : Int) : self
        playerId = playerId.to_i32!
        @playerId = playerId
        @customGPoint = CustomGPoint.new.jinit_CustomGPoint(0, 0, 0)
        self
    end
    

    def getPlayerId : Int32
        return @playerId
    end
    

    def getCustomGPoint : CustomGPoint?
        return @customGPoint
    end
    

    def getRz : Int32
        return @rz
    end
    

    def setRz(rz : Int) : Nil
        rz = rz.to_i32!
        @rz = rz
    end
    

    def getRightTrigger : Int32
        return @rightTrigger
    end
    

    def setRightTrigger(rightTrigger : Int) : Nil
        rightTrigger = rightTrigger.to_i32!
        @rightTrigger = rightTrigger
    end
    

    def getLeftTrigger : Int32
        return @leftTrigger
    end
    

    def setLeftTrigger(leftTrigger : Int) : Nil
        leftTrigger = leftTrigger.to_i32!
        @leftTrigger = leftTrigger
    end
end

