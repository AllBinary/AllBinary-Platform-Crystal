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

class InGameOptionsForm < CommandForm

    @@jst_DISPLAY : Command? = nil

    def self.jst_DISPLAY : Command?
        jclinit
        @@jst_DISPLAY
    end

    def self.jst_DISPLAY=(value : Command?) : Command?
        jclinit
        @@jst_DISPLAY = value
    end

    @@jst_SAVE : Command? = nil

    def self.jst_SAVE : Command?
        jclinit
        @@jst_SAVE
    end

    def self.jst_SAVE=(value : Command?) : Command?
        jclinit
        @@jst_SAVE = value
    end

    @@jst_DEFAULT : Command? = nil

    def self.jst_DEFAULT : Command?
        jclinit
        @@jst_DEFAULT
    end

    def self.jst_DEFAULT=(value : Command?) : Command?
        jclinit
        @@jst_DEFAULT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_DISPLAY = Command.new.jinit_Command("Options In Game", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
        @@jst_SAVE = Command.new.jinit_Command("Save", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
        @@jst_DEFAULT = Command.new.jinit_Command("Default", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
    end
    

    def jinit_InGameOptionsForm(commandListener : CommandListener?, title : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        gameFeatureFormUtil : GameFeatureFormUtil? = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.not_nil!.addChoiceGroup(self, InGameFeatureChoiceGroups.getExclusiveInstance().not_nil!.get(), Choice.jst_EXCLUSIVE)
        gameFeatureFormUtil.not_nil!.addChoiceGroup(self, InGameFeatureChoiceGroups.getMultipleInstance().not_nil!.get(), Choice.jst_MULTIPLE)
        self.initCommands(commandListener)
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(InGameOptionsForm.jst_DEFAULT)
        self.setCommandListener(cmdListener)
    end
end

