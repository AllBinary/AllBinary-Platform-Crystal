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
# package org.allbinary.game.configuration.event

class BaseChangedGameFeatureListener < JObject
    include GameFeatureListenerInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @gameFeatureUtil : GameFeatureUtil? = nil

    def jf_gameFeatureUtil : GameFeatureUtil?
        @gameFeatureUtil
    end

    def jf_gameFeatureUtil=(value : GameFeatureUtil?) : GameFeatureUtil?
        @gameFeatureUtil = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @changed : Bool = false

    def jf_changed : Bool
        @changed
    end

    def jf_changed=(value : Bool) : Bool
        @changed = value
    end

    # Java field initializers run after the super constructor
    def jfields_BaseChangedGameFeatureListener : Nil
    @logUtil = LogUtil.getInstance()
    @gameFeatureUtil = GameFeatureUtil.getInstance()
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @changed = true
    end

    def jinit_BaseChangedGameFeatureListener : self
        jfields_BaseChangedGameFeatureListener()
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(CommonStrings.getInstance().not_nil!.jf_NOT_IMPLEMENTED, self)
    end
    

    def onGameFeatureChange(gameFeatureEvent : GameFeatureEvent?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameFeatureUtil.not_nil!.jf_GAME_FEATURE_CHANGED).not_nil!.append(gameFeatureEvent.not_nil!.getWhatChanged()).not_nil!.toString(), self, @gameFeatureUtil.not_nil!.jf_ON_GAME_FEATURE_CHANGE)
        @list.not_nil!.add(gameFeatureEvent.not_nil!.getGameOption())
        self.setChanged(true)
    end
    

    def add(gameFeature : Feature?) : Nil
        @list.not_nil!.add(gameFeature)
    end
    

    def remove(gameFeature : Feature?) : Nil
        @list.not_nil!.remove(gameFeature)
    end
    

    def setChanged(initialized : Bool) : Nil
        @changed = initialized
        if !self.isChanged()
            @list.not_nil!.clear()
        end
    end
    

    def isChangedFeature(gameFeature : Feature?) : Bool
        isChanged : Bool = @list.not_nil!.contains(gameFeature)
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("GameFeature: ")
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(gameFeature))
        stringBuffer.not_nil!.append(" isFeature: ")
        stringBuffer.not_nil!.appendboolean(Features.getInstance().not_nil!.isFeature(gameFeature))
        stringBuffer.not_nil!.append(" isChanged: ")
        stringBuffer.not_nil!.appendboolean(isChanged)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, "isChanged")
        return isChanged
    end
    

    def isChanged : Bool
        return @changed
    end
end

