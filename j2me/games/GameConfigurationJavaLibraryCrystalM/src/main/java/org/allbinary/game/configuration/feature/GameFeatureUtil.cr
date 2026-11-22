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

class GameFeatureUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @enumerationUtil : EnumerationUtil? = nil

    def jf_enumerationUtil : EnumerationUtil?
        @enumerationUtil
    end

    def jf_enumerationUtil=(value : EnumerationUtil?) : EnumerationUtil?
        @enumerationUtil = value
    end
    @j_ON_GAME_FEATURE_CHANGE : String = ""

    def jf_ON_GAME_FEATURE_CHANGE : String
        @j_ON_GAME_FEATURE_CHANGE
    end

    def jf_ON_GAME_FEATURE_CHANGE=(value : String) : String
        @j_ON_GAME_FEATURE_CHANGE = value
    end
    @j_GAME_FEATURE_CHANGED : String = ""

    def jf_GAME_FEATURE_CHANGED : String
        @j_GAME_FEATURE_CHANGED
    end

    def jf_GAME_FEATURE_CHANGED=(value : String) : String
        @j_GAME_FEATURE_CHANGED = value
    end

    @@jst_instance : GameFeatureUtil? = nil

    def self.jst_instance : GameFeatureUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameFeatureUtil?) : GameFeatureUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameFeatureUtil.new.jinit_GameFeatureUtil()
    end
    

    def self.getInstance : GameFeatureUtil?
        return GameFeatureUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameFeatureUtil : Nil
    @logUtil = LogUtil.getInstance()
    @tsUtil = TsUtil.getInstance()
    @enumerationUtil = EnumerationUtil.getInstance()
    @j_ON_GAME_FEATURE_CHANGE = "onGameFeatureChange"
    @j_GAME_FEATURE_CHANGED = "Game Feature Changed: "
    end

    def jinit_GameFeatureUtil : self
        jfields_GameFeatureUtil()
        self
    end
    

    def setDefault(choiceGroup : ChoiceGroup?) : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        j_METHOD_NAME : String = "setDefault"
        j_SELECTED_ARRAY_RETURN : String = "selectedArray_return["
        j_SELECTED_SEP : String = "] = "
        selectedArray_return : Array(Bool)? = Array(Bool).new(choiceGroup.not_nil!.size(), false)
        total : Int32 = choiceGroup.not_nil!.getSelectedFlags(selectedArray_return)
        stringBuffer.not_nil!.append("Multiple Total Choices: ")
        stringBuffer.not_nil!.appendint(total)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
        features : Features? = Features.getInstance()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < selectedArray_return.not_nil!.size
            isSelected : Bool = selectedArray_return.not_nil![index]
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            stringBuffer.not_nil!.append(j_SELECTED_ARRAY_RETURN)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(j_SELECTED_SEP)
            stringBuffer.not_nil!.appendboolean(isSelected)
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
            selectedChoiceLabel : String = choiceGroup.not_nil!.getString(index)
            gameFeature : Feature? = Feature.getInstance(selectedChoiceLabel)
            if features.not_nil!.isDefault(gameFeature)
                features.not_nil!.add(gameFeature)
                choiceGroup.not_nil!.setSelectedIndex(index, true)
            else
                features.not_nil!.remove(gameFeature)
                choiceGroup.not_nil!.setSelectedIndex(index, false)
            end
        end
    end
    

    def updateMultiple(choiceGroup : ChoiceGroup?) : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        j_METHOD_NAME : String = "updateMultiple"
        j_SELECTED_ARRAY_RETURN : String = "selectedArray_return["
        j_SELECTED_SEP : String = "] = "
        selectedArray_return : Array(Bool)? = Array(Bool).new(choiceGroup.not_nil!.size(), false)
        total : Int32 = choiceGroup.not_nil!.getSelectedFlags(selectedArray_return)
        stringBuffer.not_nil!.append("Multiple Total Choices: ")
        stringBuffer.not_nil!.appendint(total)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
        features : Features? = Features.getInstance()
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < selectedArray_return.not_nil!.size
            isSelected : Bool = selectedArray_return.not_nil![index]
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            stringBuffer.not_nil!.append(j_SELECTED_ARRAY_RETURN)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(j_SELECTED_SEP)
            stringBuffer.not_nil!.appendboolean(isSelected)
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
            selectedChoiceLabel : String = choiceGroup.not_nil!.getString(index)
            gameFeature : Feature? = Feature.getInstance(selectedChoiceLabel)
            if !isSelected && features.not_nil!.isFeature(gameFeature)
                features.not_nil!.remove(gameFeature)
            elsif isSelected && !features.not_nil!.isFeature(gameFeature)
                features.not_nil!.add(gameFeature)
            end
        end
    end
    

    def updateExclusiveForChoiceGroup(choiceGroup : ChoiceGroup?) : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        j_METHOD_NAME : String = "updateExclusive"
        j_SELECTED_ARRAY_RETURN : String = "selectedArray_return["
        j_SELECTED_SEP : String = "] = "
        selectedArray_return : Array(Bool)? = Array(Bool).new(choiceGroup.not_nil!.size(), false)
        total : Int32 = choiceGroup.not_nil!.getSelectedFlags(selectedArray_return)
        stringBuffer.not_nil!.append("Exclusive Total Choices: 1==")
        stringBuffer.not_nil!.appendint(total)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < selectedArray_return.not_nil!.size
            isSelected : Bool = selectedArray_return.not_nil![index]
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            stringBuffer.not_nil!.append(j_SELECTED_ARRAY_RETURN)
            stringBuffer.not_nil!.appendint(index)
            stringBuffer.not_nil!.append(j_SELECTED_SEP)
            stringBuffer.not_nil!.appendboolean(isSelected)
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
            if isSelected
                selectedChoiceLabel : String = choiceGroup.not_nil!.getString(index)
                self.updateExclusive(selectedChoiceLabel)
            end
        end
    end
    

    def isExclusive(itemLabel : String) : Bool
        enumeration : JEnumeration? = GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.get().not_nil!.keys()
        name : String = ""
        while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
            name = JR.castString(@enumerationUtil.not_nil!.nextElement(enumeration))
            if @tsUtil.not_nil!.compareTo(itemLabel, name) == 0
                return true
            end
        end
        return false
    end
    

    def updateExclusive(selectedChoiceLabel : String) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_ITEM_LABEL).not_nil!.append(selectedChoiceLabel).not_nil!.toString(), self, "updateExclusive")
        gameFeature : Feature? = Feature.getInstance(selectedChoiceLabel)
        hashtable : ABHashtable? = GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.get()
        objectArray : Array(JAny)? = HashtableUtil.getInstance().not_nil!.getKeysAsArray(hashtable)
        basicArrayList : BasicArrayList? = nil
        anyType : JAny = nil
        size : Int32 = objectArray.not_nil!.size
        index : Int32 = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size
            anyType = objectArray.not_nil![index]
            basicArrayList = JR.cast(hashtable.not_nil!.get(anyType), BasicArrayList)
            self.updateExclusiveList(gameFeature, basicArrayList)
        end
    end
    

    def updateExclusiveList(gameFeature : Feature?, list : BasicArrayList?) : Nil
        if list.not_nil!.contains(gameFeature)
            features : Features? = Features.getInstance()
            addIndex : Int32 = list.not_nil!.indexOf(gameFeature)
            size : Int32 = list.not_nil!.size()
            index : Int32 = 0
            jfor5 = false
            while true
                if jfor5
                    index &+= 1
                end
                jfor5 = true
                break unless index < size
                if addIndex != index
                    features.not_nil!.remove(JR.cast(list.not_nil!.jf_objectArray.not_nil![index], Feature))
                else
                    features.not_nil!.add(JR.cast(list.not_nil!.jf_objectArray.not_nil![index], Feature))
                end
            end
        end
    end
end

