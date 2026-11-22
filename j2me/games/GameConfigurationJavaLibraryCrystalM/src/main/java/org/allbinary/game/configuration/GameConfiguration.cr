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
# package org.allbinary.game.configuration

class GameConfiguration < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @defaultValue : JInteger? = nil

    def jf_defaultValue : JInteger?
        @defaultValue
    end

    def jf_defaultValue=(value : JInteger?) : JInteger?
        @defaultValue = value
    end
    @value : JInteger? = nil

    def jf_value : JInteger?
        @value
    end

    def jf_value=(value : JInteger?) : JInteger?
        @value = value
    end
    @minValue : JInteger? = nil

    def jf_minValue : JInteger?
        @minValue
    end

    def jf_minValue=(value : JInteger?) : JInteger?
        @minValue = value
    end
    @maxValue : JInteger? = nil

    def jf_maxValue : JInteger?
        @maxValue
    end

    def jf_maxValue=(value : JInteger?) : JInteger?
        @maxValue = value
    end
    @modifiable : JBoolean? = nil

    def jf_modifiable : JBoolean?
        @modifiable
    end

    def jf_modifiable=(value : JBoolean?) : JBoolean?
        @modifiable = value
    end

    @@jst_MIN_VALUE : JInteger? = nil

    def self.jst_MIN_VALUE : JInteger?
        jclinit
        @@jst_MIN_VALUE
    end

    def self.jst_MIN_VALUE=(value : JInteger?) : JInteger?
        jclinit
        @@jst_MIN_VALUE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_MIN_VALUE = JInteger.new.jinit_JInteger(JInteger.jst_MIN_VALUE)
    end

    # Java field initializers run after the super constructor
    def jfields_GameConfiguration : Nil
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @defaultValue = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(0)
    @value = GameConfiguration.jst_MIN_VALUE
    @minValue = @defaultValue
    @maxValue = @defaultValue
    @modifiable = BooleanFactory.getInstance().not_nil!.jf_TRUE
    end
    

    def jinit_GameConfiguration(name : String, defaultValue : JInteger?, minValue : JInteger?, maxValue : JInteger?) : self
        jfields_GameConfiguration()
        self.setName(name)
        self.setDefaultValue(defaultValue)
        @value = self.getDefaultValue()
        self.setMinValue(minValue)
        self.setMaxValue(maxValue)
        GameConfigurationSingleton.getInstance().not_nil!.getHashtable().not_nil!.put(self.getName(), self)
        self
    end
    

    def setValue(value : JInteger?) : Nil
        if @value != value
            oldValue : JInteger? = @value
            @value = value
            GameFeatureEventHandler.getInstance().not_nil!.fireEvent(GameFeatureEvent.new.jinit_GameFeatureEvent(self, StringMaker.new.jinit_StringMaker().not_nil!.append(@name).not_nil!.append(" value: from: ").not_nil!.appendint((oldValue.not_nil!.intValue()).to_i32!).not_nil!.append(" to ").not_nil!.appendint((@value.not_nil!.intValue()).to_i32!).not_nil!.toString()))
        end
    end
    

    def getValue : JInteger?
        return @value
    end
    

    def setMaxValue(maxValue : JInteger?) : Nil
        @maxValue = maxValue
    end
    

    def getMaxValue : JInteger?
        return @maxValue
    end
    

    def setMinValue(minValue : JInteger?) : Nil
        @minValue = minValue
    end
    

    def getMinValue : JInteger?
        return @minValue
    end
    

    def setName(name : String) : Nil
        @name = name
    end
    

    def getName : String
        return @name
    end
    

    def setDefaultValue(defaultValue : JInteger?) : Nil
        @defaultValue = defaultValue
    end
    

    def getDefaultValue : JInteger?
        return @defaultValue
    end
    

    def setDefault : Nil
        self.setValue(self.getDefaultValue())
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Name: ")
        stringBuffer.not_nil!.append(@name)
        stringBuffer.not_nil!.append(" Min: ")
        stringBuffer.not_nil!.appendint((self.getMinValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(" Max: ")
        stringBuffer.not_nil!.appendint((self.getMaxValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(" Value: ")
        stringBuffer.not_nil!.appendint((self.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(" Default: ")
        stringBuffer.not_nil!.appendint((self.getDefaultValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(" Modifiable: ")
        stringBuffer.not_nil!.appendboolean(self.isModifiable().not_nil!.booleanValue())
        return stringBuffer.not_nil!.toString()
    end
    

    def setModifiable(modifiable : JBoolean?) : Nil
        @modifiable = modifiable
    end
    

    def isModifiable : JBoolean?
        return @modifiable
    end
end

