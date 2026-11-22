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

class SaveGameForm < CommandForm
    @meUtil : MIDPUtil? = nil

    def jf_meUtil : MIDPUtil?
        @meUtil
    end

    def jf_meUtil=(value : MIDPUtil?) : MIDPUtil?
        @meUtil = value
    end

    @@jst_FORM : CommandForm? = nil

    def self.jst_FORM : CommandForm?
        jclinit
        @@jst_FORM
    end

    def self.jst_FORM=(value : CommandForm?) : CommandForm?
        jclinit
        @@jst_FORM = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_FORM = CommandForm.getNullCommandForm()
    end
    

    def self.createForm(commandListener : CommandListener?, title : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : CommandForm?
        SaveGameForm.jst_FORM = SaveGameForm.new.jinit_SaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        return SaveGameForm.jst_FORM
    end
    

    def self.getInstance : CommandForm?
        return SaveGameForm.jst_FORM
    end

    # Java field initializers run after the super constructor
    def jfields_SaveGameForm : Nil
    @meUtil = MIDPUtil.getInstance()
    end
    

    def jinit_SaveGameForm(commandListener : CommandListener?, title : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_SaveGameForm()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        timeString : String = JLong.toString(ABSystemWrapper.getInstance().not_nil!.currentTimeMillis())
        @meUtil.not_nil!.appendItem(self, TextField.new.jinit_TextField("Name: ", timeString, 30, TextField.jst_ANY))
        self.initCommands(commandListener)
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.not_nil!.jf_SAVE)
        self.addCommand(gameCommandsFactory.not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
end

