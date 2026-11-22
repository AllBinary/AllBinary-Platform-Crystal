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

class GameOptionsForm < CommandForm
    @meUtil : MIDPUtil? = nil

    def jf_meUtil : MIDPUtil?
        @meUtil
    end

    def jf_meUtil=(value : MIDPUtil?) : MIDPUtil?
        @meUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameOptionsForm : Nil
    @meUtil = MIDPUtil.getInstance()
    end
    

    def jinit_GameOptionsForm(commandListener : CommandListener?, title : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_GameOptionsForm()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        self.addConfiguration()
        gameFeatureFormUtil : GameFeatureFormUtil? = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.not_nil!.addChoiceGroup(self, GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.get(), Choice.jst_EXCLUSIVE)
        gameFeatureFormUtil.not_nil!.addChoiceGroup(self, GameFeatureChoiceGroups.getMultipleInstance().not_nil!.get(), Choice.jst_MULTIPLE)
        self.initCommands(commandListener)
        self.setItemStateListener(GameFeatureItemStateListener.new.jinit_GameFeatureItemStateListener(self))
        self.addTextFieldsIfSimulated()
        self
    end
    

    def closeClientInformation(abeClientInformation : AbeClientInformationInterface?) : Nil
        close()
        self.save(abeClientInformation)
    end
    

    def addTextFieldsIfSimulated : Nil
        key : String = OrientationData.getInstance().not_nil!.jf_ORIENTATION_SENSOR_INPUT
        hashtable : ABHashtable? = GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.get()
        if !(hashtable).nil?
            listCanBeNull : JAny = hashtable.not_nil!.get(key)
            if !(listCanBeNull).nil?
                list : BasicArrayList? = JR.cast(listCanBeNull, BasicArrayList)
                if list.not_nil!.contains(SensorFeatureFactory.getInstance().not_nil!.jf_SIMULATED_ORIENTATION_SENSORS)
                    self.addTextFields()
                end
            end
        end
    end
    

    def addTextFields : Nil
        hashtable : ABHashtable? = GameConfigurationTextInput.getHashtable()
        size : Int32 = hashtable.not_nil!.size()
        objectArray : Array(JAny)? = HashtableUtil.getInstance().not_nil!.getKeysAsArray(hashtable)
        gameConfigurationTextInput : GameConfigurationTextInput? = nil
        textField : TextField? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            gameConfigurationTextInput = JR.cast(hashtable.not_nil!.get(objectArray.not_nil![index]), GameConfigurationTextInput)
            textField = TextField.new.jinit_TextField(gameConfigurationTextInput.not_nil!.getLabel(), gameConfigurationTextInput.not_nil!.getText(), 30, TextField.jst_ANY)
            @meUtil.not_nil!.appendItem(self, textField)
        end
    end
    

    def addConfiguration : Nil
        j_METHOD_NAME : String = "addConfiguration"
        j_NAME : String = "Name: "
        list : BasicArrayList? = GameConfigurationSingleton.getInstance().not_nil!.getOptionsBasicArrayList()
        j_GAUGE_CHANGE : Command? = MyCommandsFactory.getInstance().not_nil!.jf_GAUGE_CHANGE
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        size : Int32 = list.not_nil!.size()
        gameConfiguration : GameConfiguration? = nil
        gauge : GameConfigurationGauge? = nil
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            gameConfiguration = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], GameConfiguration)
            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
            @logUtil.not_nil!.putF(stringMaker.not_nil!.append(j_NAME).not_nil!.append(gameConfiguration.not_nil!.toString()).not_nil!.toString(), self, j_METHOD_NAME)
            gauge = GameConfigurationGauge.new.jinit_GameConfigurationGauge(gameConfiguration)
            gauge.not_nil!.setDefaultCommand(j_GAUGE_CHANGE)
            gauge.not_nil!.setItemCommandListener(GameFeatureItemCommandListener.new.jinit_GameFeatureItemCommandListener(self))
            @meUtil.not_nil!.appendItem(self, gauge)
        end
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.not_nil!.jf_CLOSE_OPTIONS)
        self.addCommand(gameCommandsFactory.not_nil!.jf_DEFAULT_OPTIONS)
        self.setCommandListener(cmdListener)
    end
    

    def save(abeClientInformation : AbeClientInformationInterface?) : Nil
        size : Int32 = self.size()
        item : Item? = nil
        index = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            item = self.get(index)
            if (item).is_a?(GameConfigurationGauge)
                GameConfigurationUtil.getInstance().not_nil!.update(JR.cast(item, GameConfigurationGauge))
            elsif (item).is_a?(TextField)
                GameConfigurationTextInput.update(JR.cast(item, TextField))
            end
        end
        GameConfigurationUtil.getInstance().not_nil!.updateCompetitionValue()
        hashtable : ABHashtable? = StdUtil.getInstance().not_nil!.createHashtable()
        j_SCALE : GameConfiguration? = GameConfigurationCentral.getInstance().not_nil!.jf_SCALE
        hashtable.not_nil!.put(j_SCALE.not_nil!.getName(), JInteger.toString(j_SCALE.not_nil!.getValue().not_nil!.intValue()))
        keyValuePersistance : KeyValuePersistance? = GameConfigurationPersistanceSingleton.getInstance()
        keyValuePersistance.not_nil!.clear()
        keyValuePersistance.not_nil!.loadAll(abeClientInformation)
        list : BasicArrayList? = keyValuePersistance.not_nil!.getIds()
        keyValuePersistance.not_nil!.save(abeClientInformation, hashtable)
        size2 : Int32 = list.not_nil!.size()
        integer : JInteger? = nil
        index = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size2
            integer = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], JInteger)
            keyValuePersistance.not_nil!.delete(abeClientInformation, integer.not_nil!.intValue())
        end
    end
end

