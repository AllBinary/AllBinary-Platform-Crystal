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

class GameConfigurationUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @j_GAUGE_UPDATE : String = ""

    def jf_GAUGE_UPDATE : String
        @j_GAUGE_UPDATE
    end

    def jf_GAUGE_UPDATE=(value : String) : String
        @j_GAUGE_UPDATE = value
    end
    @j_FROM : String = ""

    def jf_FROM : String
        @j_FROM
    end

    def jf_FROM=(value : String) : String
        @j_FROM = value
    end
    @j_TO : String = ""

    def jf_TO : String
        @j_TO
    end

    def jf_TO=(value : String) : String
        @j_TO = value
    end
    @j_COMPETITION_VALUE : Int32 = 0

    def jf_COMPETITION_VALUE : Int32
        @j_COMPETITION_VALUE
    end

    def jf_COMPETITION_VALUE=(value : Int32) : Int32
        @j_COMPETITION_VALUE = value
    end

    @@jst_instance : GameConfigurationUtil? = nil

    def self.jst_instance : GameConfigurationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameConfigurationUtil?) : GameConfigurationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameConfigurationUtil.new.jinit_GameConfigurationUtil()
    end
    

    def self.getInstance : GameConfigurationUtil?
        return GameConfigurationUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameConfigurationUtil : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @j_GAUGE_UPDATE = "Gauge Update: "
    @j_FROM = " from: "
    @j_TO = " to: "
    @j_COMPETITION_VALUE = 1
    end

    def jinit_GameConfigurationUtil : self
        jfields_GameConfigurationUtil()
        self
    end
    

    def change(gameOptionsForm : GameOptionsForm?, gauge : GameConfigurationGauge?) : Nil
        self.update(gauge)
        gameConfigurationSingleton : GameConfigurationSingleton? = GameConfigurationSingleton.getInstance()
        gameConfiguration : GameConfiguration? = gameConfigurationSingleton.not_nil!.getInstanceByName(gauge.not_nil!.getLabel())
        self.updateChallange(gameOptionsForm, gameConfiguration)
    end
    

    def update(gauge : GameConfigurationGauge?) : Nil
        gameConfigurationSingleton : GameConfigurationSingleton? = GameConfigurationSingleton.getInstance()
        gameConfiguration : GameConfiguration? = gameConfigurationSingleton.not_nil!.getInstanceByName(gauge.not_nil!.getLabel())
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        value : JInteger? = smallIntegerSingletonFactory.not_nil!.getAt(gauge.not_nil!.getValue() + gameConfiguration.not_nil!.getMinValue().not_nil!.intValue())
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(@j_GAUGE_UPDATE)
        stringBuffer.not_nil!.append(gameConfiguration.not_nil!.getName())
        stringBuffer.not_nil!.append(@j_FROM)
        stringBuffer.not_nil!.appendint((gameConfiguration.not_nil!.getValue().not_nil!.intValue()).to_i32!)
        stringBuffer.not_nil!.append(@j_TO)
        stringBuffer.not_nil!.appendint((value.not_nil!.intValue()).to_i32!)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
        gameConfiguration.not_nil!.setValue(value)
    end
    

    def setDefault(gauge : GameConfigurationGauge?) : Nil
        gameConfigurationSingleton : GameConfigurationSingleton? = GameConfigurationSingleton.getInstance()
        gameConfiguration : GameConfiguration? = gameConfigurationSingleton.not_nil!.getInstanceByName(gauge.not_nil!.getLabel())
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Gauge Default: ")
        stringBuffer.not_nil!.append(gameConfiguration.not_nil!.getName())
        stringBuffer.not_nil!.append(@j_TO)
        stringBuffer.not_nil!.appendint((gameConfiguration.not_nil!.getDefaultValue().not_nil!.intValue()).to_i32!)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, "setDefault")
        gauge.not_nil!.setValue(gameConfiguration.not_nil!.getDefaultValue().not_nil!.intValue() - gameConfiguration.not_nil!.getMinValue().not_nil!.intValue())
        gameConfiguration.not_nil!.setValue(gameConfiguration.not_nil!.getDefaultValue())
    end
    

    def updateChallange(gameOptionsForm : GameOptionsForm?, gameConfiguration : GameConfiguration?) : Nil
        gameConfigurationSingleton : GameConfigurationSingleton? = GameConfigurationSingleton.getInstance()
        gameConfigurationCentral : GameConfigurationCentral? = GameConfigurationCentral.getInstance()
        if gameConfiguration == gameConfigurationCentral.not_nil!.jf_CHALLENGE_LEVEL
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "updateChallange")
            gameConfigurationCentral.not_nil!.jf_COLLIDE_DAMAGE.not_nil!.setValue(gameConfiguration.not_nil!.getValue())
            gameConfigurationCentral.not_nil!.jf_ATTACK_CHALLENGE_LEVEL.not_nil!.setValue(gameConfiguration.not_nil!.getValue())
            gameConfigurationCentral.not_nil!.jf_DURABILITY_CHALLENGE_LEVEL.not_nil!.setValue(gameConfiguration.not_nil!.getValue())
            gameConfigurationCentral.not_nil!.jf_SPEED_CHALLENGE_LEVEL.not_nil!.setValue(gameConfiguration.not_nil!.getValue())
            size : Int32 = gameOptionsForm.not_nil!.size()
            index : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                item : Item? = gameOptionsForm.not_nil!.get(index)
                if (item).is_a?(GameConfigurationGauge)
                    gauge : GameConfigurationGauge? = JR.cast(item, GameConfigurationGauge)
                    name : String = item.not_nil!.getLabel()
                    nextGameConfiguration : GameConfiguration? = gameConfigurationSingleton.not_nil!.getInstanceByName(name)
                    if nextGameConfiguration == gameConfigurationCentral.not_nil!.jf_COLLIDE_DAMAGE
                        gauge.not_nil!.setValue(gameConfigurationCentral.not_nil!.jf_COLLIDE_DAMAGE.not_nil!.getValue().not_nil!.intValue() - gameConfiguration.not_nil!.getMinValue().not_nil!.intValue())
                    elsif nextGameConfiguration == gameConfigurationCentral.not_nil!.jf_DURABILITY_CHALLENGE_LEVEL
                        gauge.not_nil!.setValue(gameConfigurationCentral.not_nil!.jf_DURABILITY_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue() - gameConfiguration.not_nil!.getMinValue().not_nil!.intValue())
                    elsif nextGameConfiguration == gameConfigurationCentral.not_nil!.jf_ATTACK_CHALLENGE_LEVEL
                        gauge.not_nil!.setValue(gameConfigurationCentral.not_nil!.jf_ATTACK_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue() - gameConfiguration.not_nil!.getMinValue().not_nil!.intValue())
                    elsif nextGameConfiguration == gameConfigurationCentral.not_nil!.jf_SPEED_CHALLENGE_LEVEL
                        gauge.not_nil!.setValue(gameConfigurationCentral.not_nil!.jf_SPEED_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue() - gameConfiguration.not_nil!.getMinValue().not_nil!.intValue())
                    end
                end
            end
        end
    end
    

    def updateCompetitionValue : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "updateCompetitionValue")
        gameConfigurationCentral : GameConfigurationCentral? = GameConfigurationCentral.getInstance()
        @j_COMPETITION_VALUE = gameConfigurationCentral.not_nil!.jf_COLLIDE_DAMAGE.not_nil!.getValue().not_nil!.intValue() + gameConfigurationCentral.not_nil!.jf_ATTACK_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue() + gameConfigurationCentral.not_nil!.jf_DURABILITY_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue() + gameConfigurationCentral.not_nil!.jf_SPEED_CHALLENGE_LEVEL.not_nil!.getValue().not_nil!.intValue()
        @j_COMPETITION_VALUE = (JR.shr(@j_COMPETITION_VALUE, 2))
    end
    

    def getCompetitionValue : Int32
        return @j_COMPETITION_VALUE
    end
end

