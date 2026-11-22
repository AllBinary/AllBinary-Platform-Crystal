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

class LoadGameForm < CommandForm
    @meUtil : MIDPUtil? = nil

    def jf_meUtil : MIDPUtil?
        @meUtil
    end

    def jf_meUtil=(value : MIDPUtil?) : MIDPUtil?
        @meUtil = value
    end
    @areChoices : Bool = false

    def jf_areChoices : Bool
        @areChoices
    end

    def jf_areChoices=(value : Bool) : Bool
        @areChoices = value
    end

    # Java field initializers run after the super constructor
    def jfields_LoadGameForm : Nil
    @meUtil = MIDPUtil.getInstance()
    
    end
    

    def jinit_LoadGameForm(commandListener : CommandListener?, title : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_CommandForm(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        jfields_LoadGameForm()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        self.update()
        self.initCommands(commandListener)
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        self.removeAllCommands()
        self.addCommand(gameCommandsFactory.not_nil!.jf_LOAD_FILE)
        self.addCommand(gameCommandsFactory.not_nil!.jf_DELETE_FILE)
        self.addCommand(gameCommandsFactory.not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
        self.setCommandListener(cmdListener)
    end
    

    def update : Nil
        list : BasicArrayList? = GamePersistanceSingleton.getInstance().not_nil!.getIds()
        self.deleteAll()
        if list.not_nil!.size() > 0
            self.add(list, "Select A Saved Game", Choice.jst_EXCLUSIVE)
            @areChoices = true
        else
            @meUtil.not_nil!.appendItem(self, StringItem.new.jinit_StringItem("No Saved Games", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Item.jst_PLAIN))
            @areChoices = false
        end
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
        j_METHOD_NAME : String = "getChoiceGroup"
        j_ADDING_CHOICE : String = "Adding Choice: "
        choiceGroup : ChoiceGroup? = ChoiceGroup.new.jinit_ChoiceGroup(name, option, StringUtil.getInstance().not_nil!.getArrayInstance(), NullImage.jst_NULL_IMAGE_ARRAY)
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            anyType : JAny = list.not_nil!.jf_objectArray.not_nil![index]
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(j_ADDING_CHOICE).not_nil!.append(anyType.not_nil!.toString()).not_nil!.toString(), self, j_METHOD_NAME)
            choiceGroup.not_nil!.append(anyType.not_nil!.toString(), NullImage.jst_NULL_IMAGE)
        end
        return choiceGroup
    end
    

    def getSelectedId : Int32
        if @areChoices
            choiceGroup : ChoiceGroup? = JR.cast(self.get(0), ChoiceGroup)
            return choiceGroup.not_nil!.getSelectedIndex()
        else
            return -1
        end
        return 0
    end
    

    def getSelectedText : Int32
        if @areChoices
            choiceGroup : ChoiceGroup? = JR.cast(self.get(0), ChoiceGroup)
            value : Int32 = JInteger.valueOf(choiceGroup.not_nil!.getString(choiceGroup.not_nil!.getSelectedIndex())).not_nil!.intValue()
            return value
        else
            return -1
        end
        return 0
    end
end

