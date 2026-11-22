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
# package org.allbinary.game.configuration.feature

class GameFeatureItemStateListener < JObject
    include ItemStateListener
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @gameOptionsForm : GameOptionsForm? = nil

    def jf_gameOptionsForm : GameOptionsForm?
        @gameOptionsForm
    end

    def jf_gameOptionsForm=(value : GameOptionsForm?) : GameOptionsForm?
        @gameOptionsForm = value
    end

    @@jst_toggleList : BasicArrayList? = nil

    def self.jst_toggleList : BasicArrayList?
        jclinit
        @@jst_toggleList
    end

    def self.jst_toggleList=(value : BasicArrayList?) : BasicArrayList?
        jclinit
        @@jst_toggleList = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_toggleList = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def self.add(gameFeature : GameFeature?) : Nil
        if !GameFeatureItemStateListener.jst_toggleList.not_nil!.contains(gameFeature)
            GameFeatureItemStateListener.jst_toggleList.not_nil!.add(gameFeature)
        end
    end

    # Java field initializers run after the super constructor
    def jfields_GameFeatureItemStateListener : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_GameFeatureItemStateListener(gameOptionsForm : GameOptionsForm?) : self
        jfields_GameFeatureItemStateListener()
        @gameOptionsForm = gameOptionsForm
        gameFeatureFactory : GameFeatureFactory? = GameFeatureFactory.getInstance()
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_ARTIFICIAL_INTELLEGENCE_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_DAMAGE_FLOATERS)
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_DROPPED_ITEMS)
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_GAME_INPUT_LAYER_PROCESSOR)
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_HEALTH_BARS)
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_SOUND)
        GameFeatureItemStateListener.add(gameFeatureFactory.not_nil!.jf_TICKABLE_LAYER_PROCESSOR)
        self
    end
    

    def itemStateChanged(item : Item?) : Nil
        begin
            itemLabel : String = item.not_nil!.getLabel()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_ITEM_LABEL).not_nil!.append(itemLabel).not_nil!.toString(), self, "itemStateChanged")
            if (item).is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().not_nil!.change(@gameOptionsForm, JR.cast(item, GameConfigurationGauge))
            elsif (item).is_a?(ChoiceGroup)
                gameFeatureUtil : GameFeatureUtil? = GameFeatureUtil.getInstance()
                if gameFeatureUtil.not_nil!.isExclusive(itemLabel)
                    gameFeatureUtil.not_nil!.updateExclusiveForChoiceGroup(JR.cast(item, ChoiceGroup))
                else
                    gameFeatureUtil.not_nil!.updateMultiple(JR.cast(item, ChoiceGroup))
                end
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "itemStateChanged", e)
            else
                raise jex1
            end
        end
    end
end

