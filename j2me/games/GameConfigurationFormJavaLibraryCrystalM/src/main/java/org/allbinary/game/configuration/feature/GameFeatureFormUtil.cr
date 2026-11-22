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

class GameFeatureFormUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @meUtil : MIDPUtil? = nil

    def jf_meUtil : MIDPUtil?
        @meUtil
    end

    def jf_meUtil=(value : MIDPUtil?) : MIDPUtil?
        @meUtil = value
    end

    @@jst_instance : GameFeatureFormUtil? = nil

    def self.jst_instance : GameFeatureFormUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameFeatureFormUtil?) : GameFeatureFormUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameFeatureFormUtil.new.jinit_GameFeatureFormUtil()
    end
    

    def self.getInstance : GameFeatureFormUtil?
        return GameFeatureFormUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameFeatureFormUtil : Nil
    @logUtil = LogUtil.getInstance()
    @meUtil = MIDPUtil.getInstance()
    end

    def jinit_GameFeatureFormUtil : self
        jfields_GameFeatureFormUtil()
        self
    end
    

    def getChoiceGroup(hashtable : ABHashtable?, name : String, option : Int) : ChoiceGroup?
        option = option.to_i32!
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        choiceGroup : ChoiceGroup? = ChoiceGroup.new.jinit_ChoiceGroup(name, option, StringUtil.getInstance().not_nil!.getArrayInstance(), NullImage.jst_NULL_IMAGE_ARRAY)
        list : BasicArrayList? = JR.cast(hashtable.not_nil!.get(name), BasicArrayList)
        features : Features? = Features.getInstance()
        j_ADD_CHOICE : String = ": Adding Choice: "
        j_GET_CHOICE_GROUP : String = "getChoiceGroup"
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            gameFeature : Feature? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], Feature)
            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
            @logUtil.not_nil!.putF(stringMaker.not_nil!.append(name).not_nil!.append(j_ADD_CHOICE).not_nil!.append(gameFeature.not_nil!.toString()).not_nil!.toString(), self, j_GET_CHOICE_GROUP)
            choiceGroup.not_nil!.append(gameFeature.not_nil!.toString(), NullImage.jst_NULL_IMAGE)
            if features.not_nil!.isFeature(gameFeature)
                choiceGroup.not_nil!.setSelectedIndex(index, true)
            end
        end
        return choiceGroup
    end
    

    def addChoiceGroup(form : CommandForm?, hashtable : ABHashtable?, option : Int) : Nil
        option = option.to_i32!
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        j_ADDING_CHOICE_GROUP : String = "Adding Choice Group: "
        j_ADD_CHOICE_GROUP : String = "addChoiceGroup"
        size : Int32 = hashtable.not_nil!.size()
        objectArray : Array(JAny)? = HashtableUtil.getInstance().not_nil!.getKeysAsArray(hashtable)
        name : String = ""
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            name = JR.castString(objectArray.not_nil![index])
            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
            @logUtil.not_nil!.putF(stringMaker.not_nil!.append(j_ADDING_CHOICE_GROUP).not_nil!.append(name).not_nil!.toString(), self, j_ADD_CHOICE_GROUP)
            @meUtil.not_nil!.appendItem(form, self.getChoiceGroup(hashtable, name, option))
        end
    end
    

    def setDefault(form : CommandForm?) : Nil
        size : Int32 = form.not_nil!.size()
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            item : Item? = form.not_nil!.get(index)
            if (item).is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().not_nil!.setDefault(JR.cast(item, GameConfigurationGauge))
            elsif (item).is_a?(ChoiceGroup)
                GameFeatureUtil.getInstance().not_nil!.setDefault(JR.cast(item, ChoiceGroup))
            end
        end
    end
end

