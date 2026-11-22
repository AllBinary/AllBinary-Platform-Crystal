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

class GameConfigurationCentral < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_SCALE : GameConfiguration? = nil

    def jf_SCALE : GameConfiguration?
        @j_SCALE
    end

    def jf_SCALE=(value : GameConfiguration?) : GameConfiguration?
        @j_SCALE = value
    end
    @j_ORIENTATION : GameConfiguration? = nil

    def jf_ORIENTATION : GameConfiguration?
        @j_ORIENTATION
    end

    def jf_ORIENTATION=(value : GameConfiguration?) : GameConfiguration?
        @j_ORIENTATION = value
    end
    @j_SENSOR_UPDATE_RATE : GameConfiguration? = nil

    def jf_SENSOR_UPDATE_RATE : GameConfiguration?
        @j_SENSOR_UPDATE_RATE
    end

    def jf_SENSOR_UPDATE_RATE=(value : GameConfiguration?) : GameConfiguration?
        @j_SENSOR_UPDATE_RATE = value
    end
    @j_VIBRATION : GameConfiguration? = nil

    def jf_VIBRATION : GameConfiguration?
        @j_VIBRATION
    end

    def jf_VIBRATION=(value : GameConfiguration?) : GameConfiguration?
        @j_VIBRATION = value
    end
    @j_CHALLENGE_LEVEL : GameConfiguration? = nil

    def jf_CHALLENGE_LEVEL : GameConfiguration?
        @j_CHALLENGE_LEVEL
    end

    def jf_CHALLENGE_LEVEL=(value : GameConfiguration?) : GameConfiguration?
        @j_CHALLENGE_LEVEL = value
    end
    @j_COLLIDE_DAMAGE : GameConfiguration? = nil

    def jf_COLLIDE_DAMAGE : GameConfiguration?
        @j_COLLIDE_DAMAGE
    end

    def jf_COLLIDE_DAMAGE=(value : GameConfiguration?) : GameConfiguration?
        @j_COLLIDE_DAMAGE = value
    end
    @j_DURABILITY_CHALLENGE_LEVEL : GameConfiguration? = nil

    def jf_DURABILITY_CHALLENGE_LEVEL : GameConfiguration?
        @j_DURABILITY_CHALLENGE_LEVEL
    end

    def jf_DURABILITY_CHALLENGE_LEVEL=(value : GameConfiguration?) : GameConfiguration?
        @j_DURABILITY_CHALLENGE_LEVEL = value
    end
    @j_SPEED_CHALLENGE_LEVEL : GameConfiguration? = nil

    def jf_SPEED_CHALLENGE_LEVEL : GameConfiguration?
        @j_SPEED_CHALLENGE_LEVEL
    end

    def jf_SPEED_CHALLENGE_LEVEL=(value : GameConfiguration?) : GameConfiguration?
        @j_SPEED_CHALLENGE_LEVEL = value
    end
    @j_ATTACK_CHALLENGE_LEVEL : GameConfiguration? = nil

    def jf_ATTACK_CHALLENGE_LEVEL : GameConfiguration?
        @j_ATTACK_CHALLENGE_LEVEL
    end

    def jf_ATTACK_CHALLENGE_LEVEL=(value : GameConfiguration?) : GameConfiguration?
        @j_ATTACK_CHALLENGE_LEVEL = value
    end
    @j_CONTROL_LEVEL : GameConfiguration? = nil

    def jf_CONTROL_LEVEL : GameConfiguration?
        @j_CONTROL_LEVEL
    end

    def jf_CONTROL_LEVEL=(value : GameConfiguration?) : GameConfiguration?
        @j_CONTROL_LEVEL = value
    end
    @j_PLAYER_INPUT_WAIT : GameConfiguration? = nil

    def jf_PLAYER_INPUT_WAIT : GameConfiguration?
        @j_PLAYER_INPUT_WAIT
    end

    def jf_PLAYER_INPUT_WAIT=(value : GameConfiguration?) : GameConfiguration?
        @j_PLAYER_INPUT_WAIT = value
    end
    @j_SPEED : GameConfiguration? = nil

    def jf_SPEED : GameConfiguration?
        @j_SPEED
    end

    def jf_SPEED=(value : GameConfiguration?) : GameConfiguration?
        @j_SPEED = value
    end
    @j_SOUND_VOLUME : GameConfiguration? = nil

    def jf_SOUND_VOLUME : GameConfiguration?
        @j_SOUND_VOLUME
    end

    def jf_SOUND_VOLUME=(value : GameConfiguration?) : GameConfiguration?
        @j_SOUND_VOLUME = value
    end
    @j_MAX_GAME_OBJECTS : GameConfiguration? = nil

    def jf_MAX_GAME_OBJECTS : GameConfiguration?
        @j_MAX_GAME_OBJECTS
    end

    def jf_MAX_GAME_OBJECTS=(value : GameConfiguration?) : GameConfiguration?
        @j_MAX_GAME_OBJECTS = value
    end
    @j_MAX_LAYERS : GameConfiguration? = nil

    def jf_MAX_LAYERS : GameConfiguration?
        @j_MAX_LAYERS
    end

    def jf_MAX_LAYERS=(value : GameConfiguration?) : GameConfiguration?
        @j_MAX_LAYERS = value
    end
    @gameControlFidelity : Int32 = 0

    def jf_gameControlFidelity : Int32
        @gameControlFidelity
    end

    def jf_gameControlFidelity=(value : Int32) : Int32
        @gameControlFidelity = value
    end

    @@jst_SINGLETON : JAny = nil

    def self.jst_SINGLETON : JAny
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : JAny) : JAny
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : GameConfigurationCentral?
        if GameConfigurationCentral.jst_SINGLETON == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            GameConfigurationCentral.jst_SINGLETON = GameConfigurationCentral.new.jinit_GameConfigurationCentral()
        end
        return JR.cast(GameConfigurationCentral.jst_SINGLETON, GameConfigurationCentral)
    end

    # Java field initializers run after the super constructor
    def jfields_GameConfigurationCentral : Nil
    @logUtil = LogUtil.getInstance()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @gameControlFidelity = 36
    end
    

    def jinit_GameConfigurationCentral : self
        jfields_GameConfigurationCentral()
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        @j_SCALE = GameConfiguration.new.jinit_GameConfiguration("Scale", smallIntegerSingletonFactory.not_nil!.getAt(2), smallIntegerSingletonFactory.not_nil!.getAt(2), smallIntegerSingletonFactory.not_nil!.getAt(3))
        @j_ORIENTATION = GameConfiguration.new.jinit_GameConfiguration("Orientation", smallIntegerSingletonFactory.not_nil!.getAt(0), smallIntegerSingletonFactory.not_nil!.getAt(0), smallIntegerSingletonFactory.not_nil!.getAt(8))
        @j_SENSOR_UPDATE_RATE = GameConfiguration.new.jinit_GameConfiguration("Sensor Update Rate", smallIntegerSingletonFactory.not_nil!.getAt(0), smallIntegerSingletonFactory.not_nil!.getAt(0), smallIntegerSingletonFactory.not_nil!.getAt(3))
        @j_VIBRATION = GameConfiguration.new.jinit_GameConfiguration("Vibration", smallIntegerSingletonFactory.not_nil!.getAt(0), smallIntegerSingletonFactory.not_nil!.getAt(0), smallIntegerSingletonFactory.not_nil!.getAt(3))
        @j_CHALLENGE_LEVEL = GameConfiguration.new.jinit_GameConfiguration("Global Challenge Level", smallIntegerSingletonFactory.not_nil!.getAt(3), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_COLLIDE_DAMAGE = GameConfiguration.new.jinit_GameConfiguration("Collide Damage Challenge Level", smallIntegerSingletonFactory.not_nil!.getAt(3), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_DURABILITY_CHALLENGE_LEVEL = GameConfiguration.new.jinit_GameConfiguration("Enemy Durability Challenge Level", smallIntegerSingletonFactory.not_nil!.getAt(3), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_SPEED_CHALLENGE_LEVEL = GameConfiguration.new.jinit_GameConfiguration("Enemy Speed Challenge Level", smallIntegerSingletonFactory.not_nil!.getAt(3), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_ATTACK_CHALLENGE_LEVEL = GameConfiguration.new.jinit_GameConfiguration("Enemy Attack Challenge Level", smallIntegerSingletonFactory.not_nil!.getAt(3), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_CONTROL_LEVEL = GameConfiguration.new.jinit_GameConfiguration("Control Fidelity", smallIntegerSingletonFactory.not_nil!.getAt(5), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_PLAYER_INPUT_WAIT = GameConfiguration.new.jinit_GameConfiguration("Input Wait", smallIntegerSingletonFactory.not_nil!.getAt(5), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_SPEED = GameConfiguration.new.jinit_GameConfiguration("Game Speed (Device Specific)", smallIntegerSingletonFactory.not_nil!.getAt(5), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_SOUND_VOLUME = GameConfiguration.new.jinit_GameConfiguration("Sound Volume", smallIntegerSingletonFactory.not_nil!.getAt(6), smallIntegerSingletonFactory.not_nil!.getAt(0), smallIntegerSingletonFactory.not_nil!.getAt(10))
        @j_MAX_GAME_OBJECTS = GameConfiguration.new.jinit_GameConfiguration("Max Game Objects", smallIntegerSingletonFactory.not_nil!.getAt(20), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(50))
        @j_MAX_LAYERS = GameConfiguration.new.jinit_GameConfiguration("Max Layers", smallIntegerSingletonFactory.not_nil!.getAt(20), smallIntegerSingletonFactory.not_nil!.getAt(1), smallIntegerSingletonFactory.not_nil!.getAt(50))
        self
    end
    

    def load(abeClientInformation : AbeClientInformationInterface?) : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        begin
            smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
            keyValuePersistance : KeyValuePersistance? = GameConfigurationPersistanceSingleton.getInstance()
            keyValuePersistance.not_nil!.clear()
            keyValuePersistance.not_nil!.loadAll(abeClientInformation)
            list : BasicArrayList? = keyValuePersistance.not_nil!.getIds()
            if list.not_nil!.size() > 0
                hashtable : ABHashtable? = keyValuePersistance.not_nil!.get(0)
                anyType : JAny = @j_SCALE.not_nil!.getName()
                value : String = JR.castString(hashtable.not_nil!.get(anyType))
                @j_SCALE.not_nil!.setValue(smallIntegerSingletonFactory.not_nil!.getAt(JInteger.valueOf(value).not_nil!.intValue()))
            else
                @logUtil.not_nil!.putF("No Game Configuration To Load", self, commonStrings.not_nil!.jf_LOAD)
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_LOAD, e)
            else
                raise jex1
            end
        end
    end
    

    def setGameControlFidelity(gameControlFidelity : Int) : Nil
        gameControlFidelity = gameControlFidelity.to_i32!
        @gameControlFidelity = gameControlFidelity
    end
    

    def getGameControlFidelity : Int32
        return @gameControlFidelity
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonStrings : CommonSeps? = CommonSeps.getInstance()
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_SCALE.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_SCALE.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_ORIENTATION.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_ORIENTATION.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_SENSOR_UPDATE_RATE.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_SENSOR_UPDATE_RATE.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_VIBRATION.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_VIBRATION.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_CHALLENGE_LEVEL.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_COLLIDE_DAMAGE.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_COLLIDE_DAMAGE.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_DURABILITY_CHALLENGE_LEVEL.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_DURABILITY_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_SPEED_CHALLENGE_LEVEL.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_SPEED_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_ATTACK_CHALLENGE_LEVEL.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_ATTACK_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_CONTROL_LEVEL.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_CONTROL_LEVEL.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_SPEED.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_SPEED.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_MAX_GAME_OBJECTS.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_MAX_GAME_OBJECTS.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@j_MAX_LAYERS.not_nil!.getName())
        stringBuffer.not_nil!.append(commonStrings.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint((@j_MAX_LAYERS.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        return stringBuffer.not_nil!.toString()
    end
end

