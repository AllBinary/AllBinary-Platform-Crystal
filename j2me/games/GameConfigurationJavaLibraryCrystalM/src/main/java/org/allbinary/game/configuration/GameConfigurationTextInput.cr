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

class GameConfigurationTextInput < JObject
    @label : String = ""

    def jf_label : String
        @label
    end

    def jf_label=(value : String) : String
        @label = value
    end
    @text : String = ""

    def jf_text : String
        @text
    end

    def jf_text=(value : String) : String
        @text = value
    end

    @@jst_hashtable : ABHashtable? = nil

    def self.jst_hashtable : ABHashtable?
        jclinit
        @@jst_hashtable
    end

    def self.jst_hashtable=(value : ABHashtable?) : ABHashtable?
        jclinit
        @@jst_hashtable = value
    end

    @@jst_SIMULATOR_IP : GameConfigurationTextInput? = nil

    def self.jst_SIMULATOR_IP : GameConfigurationTextInput?
        jclinit
        @@jst_SIMULATOR_IP
    end

    def self.jst_SIMULATOR_IP=(value : GameConfigurationTextInput?) : GameConfigurationTextInput?
        jclinit
        @@jst_SIMULATOR_IP = value
    end

    @@jst_SIMULATOR_PORT : GameConfigurationTextInput? = nil

    def self.jst_SIMULATOR_PORT : GameConfigurationTextInput?
        jclinit
        @@jst_SIMULATOR_PORT
    end

    def self.jst_SIMULATOR_PORT=(value : GameConfigurationTextInput?) : GameConfigurationTextInput?
        jclinit
        @@jst_SIMULATOR_PORT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_hashtable = StdUtil.getInstance().not_nil!.createHashtable()
        @@jst_SIMULATOR_IP = GameConfigurationTextInput.new.jinit_GameConfigurationTextInput("IP: ", "192.168.1.3")
        @@jst_SIMULATOR_PORT = GameConfigurationTextInput.new.jinit_GameConfigurationTextInput("Port: ", "8010")
    end
    

    def self.update(textField : TextField?) : Nil
        anyType : JAny = textField.not_nil!.getLabel()
        gameConfigurationTextInput : GameConfigurationTextInput? = JR.cast(GameConfigurationTextInput.jst_hashtable.not_nil!.get(anyType), GameConfigurationTextInput)
        gameConfigurationTextInput.not_nil!.setText(textField.not_nil!.getString())
    end
    

    def self.getHashtable : ABHashtable?
        return GameConfigurationTextInput.jst_hashtable
    end

    # Java field initializers run after the super constructor
    def jfields_GameConfigurationTextInput : Nil
    @label = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @text = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_GameConfigurationTextInput(label : String, text : String) : self
        jfields_GameConfigurationTextInput()
        self.setText(text)
        self.setLabel(label)
        GameConfigurationTextInput.jst_hashtable.not_nil!.put(self.getLabel(), self)
        self
    end
    

    def setText(text : String) : Nil
        @text = text
    end
    

    def getText : String
        return @text
    end
    

    def setLabel(label : String) : Nil
        @label = label
    end
    

    def getLabel : String
        return @label
    end
end

