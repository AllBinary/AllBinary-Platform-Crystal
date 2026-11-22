# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

class AnalogLocationInputFactory < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : AnalogLocationInputFactory? = nil

    def self.jst_instance : AnalogLocationInputFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnalogLocationInputFactory?) : AnalogLocationInputFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnalogLocationInputFactory.new.jinit_AnalogLocationInputFactory()
    end
    

    def self.getInstance : AnalogLocationInputFactory?
        return AnalogLocationInputFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AnalogLocationInputFactory : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_AnalogLocationInputFactory : self
        jfields_AnalogLocationInputFactory()
        self
    end
    

    def addPlayer(playerInputId : Int) : Nil
        playerInputId = playerInputId.to_i32!
        analogLocationInput : AnalogLocationInput? = AnalogLocationInput.jst_NULL_ANALOG_LOCATION_INPUT
        if playerInputId < @list.not_nil!.size()
            analogLocationInput = JR.cast(@list.not_nil!.get(playerInputId), AnalogLocationInput)
        end
        if analogLocationInput == AnalogLocationInput.jst_NULL_ANALOG_LOCATION_INPUT
            analogLocationInput = AnalogLocationInput.new.jinit_AnalogLocationInput(playerInputId)
            @list.not_nil!.add(analogLocationInput)
        end
    end
    

    def getInstanceForPlayer(playerInputId : Int) : AnalogLocationInput?
        playerInputId = playerInputId.to_i32!
        return JR.cast(@list.not_nil!.get(playerInputId), AnalogLocationInput)
    end
    

    def getList : BasicArrayList?
        return @list
    end
end

