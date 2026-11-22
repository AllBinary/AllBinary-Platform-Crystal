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
# package org.allbinary.game.paint.help

class InputMappingHelpPaintable < HelpPaintable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @commonSeps : CommonSeps? = nil

    def jf_commonSeps : CommonSeps?
        @commonSeps
    end

    def jf_commonSeps=(value : CommonSeps?) : CommonSeps?
        @commonSeps = value
    end
    @stringUtil : StringUtil? = nil

    def jf_stringUtil : StringUtil?
        @stringUtil
    end

    def jf_stringUtil=(value : StringUtil?) : StringUtil?
        @stringUtil = value
    end
    @basicColorFactory : BasicColorFactory? = nil

    def jf_basicColorFactory : BasicColorFactory?
        @basicColorFactory
    end

    def jf_basicColorFactory=(value : BasicColorFactory?) : BasicColorFactory?
        @basicColorFactory = value
    end
    @j_NONE : GameKey? = nil

    def jf_NONE : GameKey?
        @j_NONE
    end

    def jf_NONE=(value : GameKey?) : GameKey?
        @j_NONE = value
    end
    @j_EMPTY_STRING : String = ""

    def jf_EMPTY_STRING : String
        @j_EMPTY_STRING
    end

    def jf_EMPTY_STRING=(value : String) : String
        @j_EMPTY_STRING = value
    end
    @gameInputMappingArray : Array(GameInputMapping?)? = nil

    def jf_gameInputMappingArray : Array(GameInputMapping?)?
        @gameInputMappingArray
    end

    def jf_gameInputMappingArray=(value : Array(GameInputMapping?)?) : Array(GameInputMapping?)?
        @gameInputMappingArray = value
    end
    @keyMappingArray : Array(BasicArrayList?)? = nil

    def jf_keyMappingArray : Array(BasicArrayList?)?
        @keyMappingArray
    end

    def jf_keyMappingArray=(value : Array(BasicArrayList?)?) : Array(BasicArrayList?)?
        @keyMappingArray = value
    end
    @actionBasicColor : Array(BasicColor?)? = nil

    def jf_actionBasicColor : Array(BasicColor?)?
        @actionBasicColor
    end

    def jf_actionBasicColor=(value : Array(BasicColor?)?) : Array(BasicColor?)?
        @actionBasicColor = value
    end
    @inputBasicColorArray : Array(Array(BasicColor?)?)? = nil

    def jf_inputBasicColorArray : Array(Array(BasicColor?)?)?
        @inputBasicColorArray
    end

    def jf_inputBasicColorArray=(value : Array(Array(BasicColor?)?)?) : Array(Array(BasicColor?)?)?
        @inputBasicColorArray = value
    end
    @selectedBasicColor : BasicColor? = nil

    def jf_selectedBasicColor : BasicColor?
        @selectedBasicColor
    end

    def jf_selectedBasicColor=(value : BasicColor?) : BasicColor?
        @selectedBasicColor = value
    end
    @updateMyFontProperties : UpdateMyFontProperties? = nil

    def jf_updateMyFontProperties : UpdateMyFontProperties?
        @updateMyFontProperties
    end

    def jf_updateMyFontProperties=(value : UpdateMyFontProperties?) : UpdateMyFontProperties?
        @updateMyFontProperties = value
    end

    def self.jst_AND : String
        " and "
    end

    def self.jst_SEP : String
        ", "
    end

    def self.jst_MORE_THAN_TWO_IN_LIST_AND : String
        ", and "
    end

    # Java field initializers run after the super constructor
    def jfields_InputMappingHelpPaintable : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @commonSeps = CommonSeps.getInstance()
    @stringUtil = StringUtil.getInstance()
    @basicColorFactory = BasicColorFactory.getInstance()
    @j_NONE = GameKeyFactory.getInstance().not_nil!.jf_NONE
    @j_EMPTY_STRING = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    
    @keyMappingArray = Array(BasicArrayList?).new(0, nil)
    @actionBasicColor = BasicColorUtil.getInstance().not_nil!.jf_ZERO_ARRAY
    @inputBasicColorArray = Array(Array(BasicColor?)?).new(0) { Array(BasicColor?).new(0, nil).as(Array(BasicColor?)?) }
    
    @updateMyFontProperties = UpdateMyFontProperties.new.jinit_UpdateMyFontProperties()
    end
    

    def jinit_InputMappingHelpPaintable(gameInputMappingArray : Array(GameInputMapping?)?, backgroundBasicColor : BasicColor?, basicColor : BasicColor?) : self
        jinit_HelpPaintable("Input Mapping", backgroundBasicColor, basicColor)
        jfields_InputMappingHelpPaintable()
        @gameInputMappingArray = gameInputMappingArray
        self.update(@j_NONE, @j_NONE)
        if backgroundBasicColor == @basicColorFactory.not_nil!.jf_WHITE || basicColor == @basicColorFactory.not_nil!.jf_WHITE
            @selectedBasicColor = @basicColorFactory.not_nil!.jf_RED
        else
            @selectedBasicColor = @basicColorFactory.not_nil!.jf_WHITE
        end
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        updateMyFontProperties : UpdateMyFontProperties? = UpdateMyFontProperties.new.jinit_UpdateMyFontProperties()
        updateMyFontProperties.not_nil!.jf_charHeight = font.not_nil!.getHeight()
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        inputInfo : Array(String)? = @inputInfo
        size : Int32 = inputInfo.not_nil!.size
        updateMyFontProperties.not_nil!.jf_actionStringArray = Array(String).new(size, "")
        updateMyFontProperties.not_nil!.jf_keymappingBeginWidthArray = Array(Int32).new(size, 0)
        updateMyFontProperties.not_nil!.jf_actionStringDeltaXArray = Array(Int32).new(size, 0)
        updateMyFontProperties.not_nil!.jf_inputDeltaXArray = Array(Array(Int32)?).new(size) { Array(Int32).new(0, 0).as(Array(Int32)?) }
        updateMyFontProperties.not_nil!.jf_sepArray = Array(Array(String)?).new(size) { Array(String).new(0, "").as(Array(String)?) }
        updateMyFontProperties.not_nil!.jf_sepWidthArray = Array(Array(Int32)?).new(size) { Array(Int32).new(0, 0).as(Array(Int32)?) }
        list : BasicArrayList? = nil
        keyMappings : String = ""
        actionString : String = ""
        input : Input? = nil
        size2 : Int32 = 0
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            list = @keyMappingArray.not_nil![index]
            keyMappings = self.get(list)
            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
            actionString = stringMaker.not_nil!.append(inputInfo.not_nil![index]).not_nil!.append(@commonSeps.not_nil!.jf_COLON).not_nil!.append(@commonSeps.not_nil!.jf_SPACE).not_nil!.append(@commonSeps.not_nil!.jf_SPACE).not_nil!.toString()
            updateMyFontProperties.not_nil!.jf_actionStringArray.not_nil![index] = actionString
            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
            updateMyFontProperties.not_nil!.jf_keymappingBeginWidthArray.not_nil![index] = (JR.shr(font.not_nil!.stringWidth(stringMaker.not_nil!.append(updateMyFontProperties.not_nil!.jf_actionStringArray.not_nil![index]).not_nil!.append(keyMappings).not_nil!.toString()), 1))
            updateMyFontProperties.not_nil!.jf_actionStringDeltaXArray.not_nil![index] = font.not_nil!.stringWidth(actionString)
            size2 = list.not_nil!.size()
            updateMyFontProperties.not_nil!.jf_inputDeltaXArray.not_nil![index] = Array(Int32).new(size2, 0)
            updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index] = Array(String).new(size2, "")
            updateMyFontProperties.not_nil!.jf_sepWidthArray.not_nil![index] = Array(Int32).new(size2, 0)
            index2 : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index2 &+= 1
                end
                jfor2 = true
                break unless index2 < size2
                input = JR.cast(list.not_nil!.jf_objectArray.not_nil![index2], Input)
                updateMyFontProperties.not_nil!.jf_inputDeltaXArray.not_nil![index].not_nil![index2] = font.not_nil!.stringWidth(input.not_nil!.getName())
                updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index].not_nil![index2] = @j_EMPTY_STRING
                if index2 &+ 1 < list.not_nil!.size()
                    if list.not_nil!.size() == 2
                        updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index].not_nil![index2] = InputMappingHelpPaintable.jst_AND
                    else
                        if index2 &+ 2 == list.not_nil!.size()
                            updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index].not_nil![index2] = InputMappingHelpPaintable.jst_MORE_THAN_TWO_IN_LIST_AND
                        else
                            updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index].not_nil![index2] = InputMappingHelpPaintable.jst_SEP
                        end
                    end
                end
                if updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index].not_nil![index2] != @j_EMPTY_STRING
                    updateMyFontProperties.not_nil!.jf_sepWidthArray.not_nil![index].not_nil![index2] = font.not_nil!.stringWidth(updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index].not_nil![index2])
                end
            end
        end
        @updateMyFontProperties = updateMyFontProperties
        super(graphics)
    end
    

    def update(selectedGameKey : GameKey?, selectedInput : Input?) : Nil
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        @logUtil.not_nil!.putF(stringMaker.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append("selected GameKey: ").not_nil!.append(@stringUtil.not_nil!.toString(selectedGameKey)).not_nil!.append(" Input: ").not_nil!.append(@stringUtil.not_nil!.toString(selectedInput)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
        gameKeyMapping : PersistentInputMapping? = PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance()
        size : Int32 = @gameInputMappingArray.not_nil!.size
        keyInfo : Array(String)? = Array(String).new(size, "")
        keyMappingArray : Array(BasicArrayList?)? = Array(BasicArrayList?).new(size, nil)
        actionBasicColor : Array(BasicColor?)? = Array(BasicColor?).new(size, nil)
        inputBasicColorArray : Array(Array(BasicColor?)?)? = Array(Array(BasicColor?)?).new(size, nil)
        gameInputMapping : GameInputMapping? = nil
        gameKey : GameKey? = nil
        list : BasicArrayList? = nil
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size
            gameInputMapping = @gameInputMappingArray.not_nil![index]
            gameKey = gameInputMapping.not_nil!.getGameKey()
            list = gameKeyMapping.not_nil!.getInputMapping().not_nil!.getMappedInput(gameKey)
            size2 : Int32 = list.not_nil!.size()
            inputBasicColorArray.not_nil![index] = Array(BasicColor?).new(size2, nil)
            index2 : Int32 = 0
            jfor4 = false
            while true
                if jfor4
                    index2 &+= 1
                end
                jfor4 = true
                break unless index2 < size2
                inputBasicColorArray.not_nil![index].not_nil![index2] = @basicColor
            end
            if gameKey == selectedGameKey
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                @logUtil.not_nil!.putF(stringMaker.not_nil!.append("Found: selected GameKey: ").not_nil!.append(@stringUtil.not_nil!.toString(selectedGameKey)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                actionBasicColor.not_nil![index] = @selectedBasicColor
                indexOfSelectedInput : Int32 = list.not_nil!.indexOf(selectedInput)
                if indexOfSelectedInput >= 0
                    stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                    @logUtil.not_nil!.putF(stringMaker.not_nil!.append("Found: selected Input: ").not_nil!.append(@stringUtil.not_nil!.toString(selectedInput)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                    inputBasicColorArray.not_nil![index].not_nil![indexOfSelectedInput] = @selectedBasicColor
                end
            else
                actionBasicColor.not_nil![index] = @basicColor
            end
            keyInfo.not_nil![index] = gameInputMapping.not_nil!.getName()
            keyMappingArray.not_nil![index] = list
        end
        @keyMappingArray = keyMappingArray
        @actionBasicColor = actionBasicColor
        @inputBasicColorArray = inputBasicColorArray
        setInputInfoP(keyInfo)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def get(keyList : BasicArrayList?) : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        key : Input? = nil
        size : Int32 = keyList.not_nil!.size()
        index : Int32 = 0
        jfor5 = false
        while true
            if jfor5
                index &+= 1
            end
            jfor5 = true
            break unless index < size
            key = JR.cast(keyList.not_nil!.jf_objectArray.not_nil![index], Input)
            stringBuffer.not_nil!.append(key.not_nil!.getName())
            if index &+ 1 < keyList.not_nil!.size()
                if keyList.not_nil!.size() == 2
                    stringBuffer.not_nil!.append(InputMappingHelpPaintable.jst_AND)
                else
                    if index &+ 2 == keyList.not_nil!.size()
                        stringBuffer.not_nil!.append(InputMappingHelpPaintable.jst_MORE_THAN_TWO_IN_LIST_AND)
                    else
                        stringBuffer.not_nil!.append(InputMappingHelpPaintable.jst_SEP)
                    end
                end
            end
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        halfWidth : Int32 = @displayInfo.not_nil!.getLastHalfWidth()
        graphics.not_nil!.setColor(@basicColor.not_nil!.intValue())
        graphics.not_nil!.drawString(@title, halfWidth - @titleBeginWidth, @updateMyFontProperties.not_nil!.jf_charHeight, @anchor)
        inputInfo : Array(String)? = @inputInfo
        size : Int32 = inputInfo.not_nil!.size
        y : Int32 = 0
        deltaX : Int32 = 0
        size2 : Int32 = 0
        actionString : String = ""
        input : Input? = nil
        list : BasicArrayList? = nil
        sep : String = ""
        beginWidth : Int32 = 0
        index : Int32 = 0
        jfor6 = false
        while true
            if jfor6
                index &+= 1
            end
            jfor6 = true
            break unless index < size
            y = (index &+ 3) &* @updateMyFontProperties.not_nil!.jf_charHeight
            deltaX = 0
            list = @keyMappingArray.not_nil![index]
            size2 = list.not_nil!.size()
            beginWidth = @updateMyFontProperties.not_nil!.jf_keymappingBeginWidthArray.not_nil![index]
            graphics.not_nil!.setColor(@actionBasicColor.not_nil![index].not_nil!.intValue())
            actionString = @updateMyFontProperties.not_nil!.jf_actionStringArray.not_nil![index]
            graphics.not_nil!.drawString(actionString, halfWidth &- beginWidth &+ deltaX, y, @anchor)
            deltaX &+= @updateMyFontProperties.not_nil!.jf_actionStringDeltaXArray.not_nil![index]
            index2 : Int32 = 0
            jfor7 = false
            while true
                if jfor7
                    index2 &+= 1
                end
                jfor7 = true
                break unless index2 < size2
                input = JR.cast(list.not_nil!.jf_objectArray.not_nil![index2], Input)
                graphics.not_nil!.setColor(@inputBasicColorArray.not_nil![index].not_nil![index2].not_nil!.intValue())
                graphics.not_nil!.drawString(input.not_nil!.getName(), halfWidth &- beginWidth &+ deltaX, y, @anchor)
                deltaX &+= @updateMyFontProperties.not_nil!.jf_inputDeltaXArray.not_nil![index].not_nil![index2]
                sep = @updateMyFontProperties.not_nil!.jf_sepArray.not_nil![index].not_nil![index2]
                graphics.not_nil!.setColor(@basicColor.not_nil!.intValue())
                graphics.not_nil!.drawString(sep, halfWidth &- beginWidth &+ deltaX, y, @anchor)
                deltaX &+= @updateMyFontProperties.not_nil!.jf_sepWidthArray.not_nil![index].not_nil![index2]
            end
        end
    end
end

