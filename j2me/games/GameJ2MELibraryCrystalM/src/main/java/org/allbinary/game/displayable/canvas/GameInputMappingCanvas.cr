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
# package org.allbinary.game.displayable.canvas

class GameInputMappingCanvas < GameCommandCanvas
    include InputMappingInterface
    @paintable : ProcessPaintable? = nil

    def jf_paintable : ProcessPaintable?
        @paintable
    end

    def jf_paintable=(value : ProcessPaintable?) : ProcessPaintable?
        @paintable = value
    end
    @helpPaintable : InputMappingHelpPaintable? = nil

    def jf_helpPaintable : InputMappingHelpPaintable?
        @helpPaintable
    end

    def jf_helpPaintable=(value : InputMappingHelpPaintable?) : InputMappingHelpPaintable?
        @helpPaintable = value
    end
    @colorFillPaintable : ColorFillBasePaintable? = nil

    def jf_colorFillPaintable : ColorFillBasePaintable?
        @colorFillPaintable
    end

    def jf_colorFillPaintable=(value : ColorFillBasePaintable?) : ColorFillBasePaintable?
        @colorFillPaintable = value
    end
    @inputMapping : PersistentInputMapping? = nil

    def jf_inputMapping : PersistentInputMapping?
        @inputMapping
    end

    def jf_inputMapping=(value : PersistentInputMapping?) : PersistentInputMapping?
        @inputMapping = value
    end
    @j_NONE : GameKey? = nil

    def jf_NONE : GameKey?
        @j_NONE
    end

    def jf_NONE=(value : GameKey?) : GameKey?
        @j_NONE = value
    end
    @abeClientInformation : AbeClientInformationInterface? = nil

    def jf_abeClientInformation : AbeClientInformationInterface?
        @abeClientInformation
    end

    def jf_abeClientInformation=(value : AbeClientInformationInterface?) : AbeClientInformationInterface?
        @abeClientInformation = value
    end
    @selectedGameKey : GameKey? = nil

    def jf_selectedGameKey : GameKey?
        @selectedGameKey
    end

    def jf_selectedGameKey=(value : GameKey?) : GameKey?
        @selectedGameKey = value
    end
    @selectedInput : Input? = nil

    def jf_selectedInput : Input?
        @selectedInput
    end

    def jf_selectedInput=(value : Input?) : Input?
        @selectedInput = value
    end
    @inputFactory : InputFactory? = nil

    def jf_inputFactory : InputFactory?
        @inputFactory
    end

    def jf_inputFactory=(value : InputFactory?) : InputFactory?
        @inputFactory = value
    end

    def self.jst_NAME : String
        "GameInputMappingCanvas"
    end

    @@jst_DISPLAY : Command? = nil

    def self.jst_DISPLAY : Command?
        jclinit
        @@jst_DISPLAY
    end

    def self.jst_DISPLAY=(value : Command?) : Command?
        jclinit
        @@jst_DISPLAY = value
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
        
        @@jst_DISPLAY = Command.new.jinit_Command("Controls", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 2)
        @@jst_DEFAULT = Command.new.jinit_Command("Default", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 2)
    end

    # Java field initializers run after the super constructor
    def jfields_GameInputMappingCanvas : Nil
    
    
    
    
    @j_NONE = GameKeyFactory.getInstance().not_nil!.jf_NONE
    
    @selectedGameKey = @j_NONE
    @selectedInput = @j_NONE
    @inputFactory = InputFactory.getInstance()
    end
    

    def jinit_GameInputMappingCanvas(abeClientInformation : AbeClientInformationInterface?, commandListener : CommandListener?, allBinaryGameLayerManager : AllBinaryGameLayerManager?, helpPaintable : HelpPaintable?) : self
        jinit_GameCommandCanvas(commandListener, GameInputMappingCanvas.jst_NAME, allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), allBinaryGameLayerManager.not_nil!.getForegroundBasicColor())
        jfields_GameInputMappingCanvas()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        if (helpPaintable).nil?
            raise (JException.new.jinit_JException("Help Paintable Exception")).not_nil!
        end
        @abeClientInformation = JR.cast(abeClientInformation, AbeClientInformationInterface)
        @helpPaintable = JR.cast(helpPaintable, InputMappingHelpPaintable)
        @inputMapping = PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance()
        @paintable = ProcessPaintable.new.jinit_ProcessPaintable()
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().not_nil!.getInstance(allBinaryGameLayerManager.not_nil!.getBackgroundBasicColor(), false)
        self
    end
    

    def close : Nil
        super()
        @paintable.not_nil!.process()
        @selectedGameKey = @j_NONE
        @selectedInput = @j_NONE
        self.update()
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        self.addCommand(GameCommandsFactory.getInstance().not_nil!.jf_CLOSE_AND_SHOW_GAME_CANVAS)
        self.addCommand(GameInputMappingCanvas.jst_DEFAULT)
        self.addCommand(GameInputMappingInstructionsCanvas.jst_DISPLAY)
        self.setCommandListener(cmdListener)
    end
    

    def keyPressed(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyPressedByDevice(keyCode, 0)
    end
    

    def keyReleased(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyReleasedByDevice(keyCode, 0)
    end
    

    def keyRepeated(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyRepeatedByDevice(keyCode, 0)
    end
    

    def keyPressedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        self.addGameKey(keyCode, false)
        super(keyCode, 0)
    end
    

    def addGameKey(keyCode : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Raw Device Key Code: ").not_nil!.append(JInteger.toHexString(keyCode)).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_ADD_KEY_EVENT)
            gameKey : GameKey? = @inputToGameKeyMapping.not_nil!.getInstanceForCanvas(self, keyCode)
            input : Input? = @inputFactory.not_nil!.getInstanceById(keyCode)
            self.processInputMapping(gameKey, input)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put("Key Event Error", self, @gameInputStrings.not_nil!.jf_ADD_KEY_EVENT, e)
            else
                raise jex1
            end
        end
    end
    

    def processInputMapping(gameKey : GameKey?, input : Input?) : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Start Passed GameKey: ")
        stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(gameKey))
        stringBuffer.not_nil!.append(" Input: ")
        stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(input))
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, @commonStrings.not_nil!.jf_PROCESS)
        if @selectedGameKey != @j_NONE
            self.gameActionCrud(gameKey, input)
        else
            self.setSelectedAction(gameKey)
        end
    end
    

    def setSelectedAction(gameKey : GameKey?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Selected GameKey: ").not_nil!.append(@stringUtil.not_nil!.toString(gameKey)).not_nil!.toString(), self, "setSelectedAction")
        @selectedGameKey = gameKey
        @selectedInput = @j_NONE
        @helpPaintable.not_nil!.update(@selectedGameKey, @selectedInput)
        @repaintBehavior.not_nil!.onChangeRepaint(self)
    end
    

    def gameActionCrud(gameKey : GameKey?, input : Input?) : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Start GameKey: ")
        stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(@selectedGameKey))
        stringBuffer.not_nil!.append(" Input: ")
        stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(@selectedInput))
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, "gameActionCrud")
        if @selectedInput == @j_NONE
            list : BasicArrayList? = @inputMapping.not_nil!.getInputMapping().not_nil!.getMappedInput(@selectedGameKey)
            isInputAlreadyMappedToSelectedAction : Bool = list.not_nil!.contains(input)
            if isInputAlreadyMappedToSelectedAction
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Already Mapped Input: ").not_nil!.append(@stringUtil.not_nil!.toString(input)).not_nil!.toString(), self, "gameActionCrud")
                @selectedInput = input
                @helpPaintable.not_nil!.update(@selectedGameKey, @selectedInput)
                @repaintBehavior.not_nil!.onChangeRepaint(self)
            else
                self.addNewMapping(gameKey, input)
            end
        elsif @inputMapping.not_nil!.isDelete(input)
            self.deleteCurrentMapping()
        else
            self.setSelectedAction(gameKey)
        end
    end
    

    def addNewMapping(gameKey : GameKey?, input : Input?) : Nil
        j_METHOD_NAME : String = "addNewMapping"
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, j_METHOD_NAME)
        isInputAlreadyMapped : Bool = @inputMapping.not_nil!.getInputMapping().not_nil!.isMapped(input)
        if !isInputAlreadyMapped && !@inputMapping.not_nil!.isSystemInput(input)
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append("Add Key Mapping : GameKey: ")
            stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(@selectedGameKey))
            stringBuffer.not_nil!.append(" Input: ")
            stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(@selectedInput))
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
            @inputMapping.not_nil!.getInputMapping().not_nil!.add(@selectedGameKey, input)
            @selectedInput = input
            self.update()
        else
            @logUtil.not_nil!.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", self, j_METHOD_NAME)
            self.setSelectedAction(gameKey)
        end
    end
    

    def deleteCurrentMapping : Nil
        j_METHOD_NAME : String = "deleteCurrentMapping"
        list : BasicArrayList? = @inputMapping.not_nil!.getInputMapping().not_nil!.getMappedInput(@selectedGameKey)
        if list.not_nil!.size() > 1
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append("Start GameKey: ")
            stringBuffer.not_nil!.append("Remove Key Mapping: GameKey: ")
            stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(@selectedGameKey))
            stringBuffer.not_nil!.append(" Input: ")
            stringBuffer.not_nil!.append(@stringUtil.not_nil!.toString(@selectedInput))
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, j_METHOD_NAME)
            @inputMapping.not_nil!.getInputMapping().not_nil!.remove(@selectedGameKey, @selectedInput)
            @selectedInput = @j_NONE
            self.update()
        else
            @logUtil.not_nil!.putF("Can't Remove Last Key Mapping", self, j_METHOD_NAME)
        end
    end
    

    def setDefault : Nil
        @inputMapping.not_nil!.setDefault(@abeClientInformation)
        @helpPaintable.not_nil!.update(@j_NONE, @j_NONE)
        @repaintBehavior.not_nil!.onChangeRepaint(self)
    end
    

    def update : Nil
        @inputMapping.not_nil!.update(@abeClientInformation)
        @helpPaintable.not_nil!.update(@selectedGameKey, @selectedInput)
        @repaintBehavior.not_nil!.onChangeRepaint(self)
    end
    

    def paint(graphics : Graphics?) : Nil
        @colorFillPaintable.not_nil!.paint(graphics)
        @helpPaintable.not_nil!.paint(graphics)
        @paintable.not_nil!.paint(graphics)
        super(graphics)
    end
end

