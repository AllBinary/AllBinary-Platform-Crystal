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
# package org.allbinary.game.ag.ai

class KeyPressesAI < BasicAI
    @on : Bool = false

    def jf_on : Bool
        @on
    end

    def jf_on=(value : Bool) : Bool
        @on = value
    end
    @keys : Array(JInteger?)? = nil

    def jf_keys : Array(JInteger?)?
        @keys
    end

    def jf_keys=(value : Array(JInteger?)?) : Array(JInteger?)?
        @keys = value
    end

    # Java field initializers run after the super constructor
    def jfields_KeyPressesAI : Nil
    @on = true
    
    end
    

    def jinit_KeyPressesAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_KeyPressesAI()
        @keys = Array(JInteger?).new(hashtable.not_nil!.size(), nil)
        objectArray : Array(JAny)? = HashtableUtil.getInstance().not_nil!.getKeysAsArray(hashtable)
        size : Int32 = objectArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            @keys.not_nil![index] = JR.cast(hashtable.not_nil!.get(objectArray.not_nil![index]), JInteger)
        end
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if @on
            index : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index &+= 1
                end
                jfor2 = true
                break unless index < @keys.not_nil!.size
                processKeyAI(@keys.not_nil![index].not_nil!.intValue())
            end
        end
    end
    

    def toggle : Nil
        if self.isOn()
            self.setOn(false)
        else
            self.setOn(true)
        end
    end
    

    def disable : Nil
        self.setOn(false)
    end
    

    def enable : Nil
        self.setOn(true)
    end
    

    def setOn(on : Bool) : Nil
        @on = on
    end
    

    def isOn : Bool
        return @on
    end
end

