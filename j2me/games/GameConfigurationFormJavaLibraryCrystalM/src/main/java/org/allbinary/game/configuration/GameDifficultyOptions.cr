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

class GameDifficultyOptions < CommandForm
    @meUtil : MIDPUtil? = nil

    def jf_meUtil : MIDPUtil?
        @meUtil
    end

    def jf_meUtil=(value : MIDPUtil?) : MIDPUtil?
        @meUtil = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameDifficultyOptions : Nil
    @meUtil = MIDPUtil.getInstance()
    
    end
    

    def jinit_GameDifficultyOptions(commandListener : CommandListener?, title : String, list : BasicArrayList?, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_GameDifficultyOptions()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @list = list
        self.update()
        self.initCommands(commandListener)
        gameDifficultyFactory : GameDifficultyFactory? = GameDifficultyFactory.getInstance()
        self.setSelectedId(gameDifficultyFactory.not_nil!.getLevel())
        self
    end
    

    def open : Nil
        super()
    end
    

    def close : Nil
        super()
        self.save()
    end
    

    def save : Nil
        gameDifficultyFactory : GameDifficultyFactory? = GameDifficultyFactory.getInstance()
        gameDifficultyFactory.not_nil!.setLevel(self.getSelectedId())
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    def update : Nil
        self.deleteAll()
        self.add(@list, "Difficulty", Choice.jst_EXCLUSIVE)
        super()
    end
    

    def add(list : BasicArrayList?, name : String, option : Int) : Nil
        option = option.to_i32!
        choiceGroup : ChoiceGroup? = self.getChoiceGroup(list, name, option)
        if list.not_nil!.size() > 0
            choiceGroup.not_nil!.setSelectedIndex(0, true)
        end
        @meUtil.not_nil!.appendItem(self, choiceGroup)
    end
    

    def getChoiceGroup(list : BasicArrayList?, name : String, option : Int) : ChoiceGroup?
        option = option.to_i32!
        j_METHOD_NAME : String = "addChoiceGroup"
        j_NAME : String = "Adding Choice: "
        choiceGroup : ChoiceGroup? = ChoiceGroup.new.jinit_ChoiceGroup(name, option, StringUtil.getInstance().not_nil!.getArrayInstance(), NullImage.jst_NULL_IMAGE_ARRAY)
        size : Int32 = list.not_nil!.size()
        anyType : JAny = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            anyType = list.not_nil!.jf_objectArray.not_nil![index]
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(j_NAME).not_nil!.append(anyType.not_nil!.toString()).not_nil!.toString(), self, j_METHOD_NAME)
            choiceGroup.not_nil!.append(anyType.not_nil!.toString(), NullImage.jst_NULL_IMAGE)
        end
        return choiceGroup
    end
    

    def setSelectedId(id : Int) : Nil
        id = id.to_i32!
        choiceGroup : ChoiceGroup? = JR.cast(self.get(0), ChoiceGroup)
        choiceGroup.not_nil!.setSelectedIndex(id, true)
    end
    

    def getSelectedId : Int32
        choiceGroup : ChoiceGroup? = JR.cast(self.get(0), ChoiceGroup)
        return choiceGroup.not_nil!.getSelectedIndex()
    end
    

    def getSelectedText : Int32
        choiceGroup : ChoiceGroup? = JR.cast(self.get(0), ChoiceGroup)
        value : Int32 = JInteger.valueOf(choiceGroup.not_nil!.getString(choiceGroup.not_nil!.getSelectedIndex())).not_nil!.intValue()
        return value
    end
end

