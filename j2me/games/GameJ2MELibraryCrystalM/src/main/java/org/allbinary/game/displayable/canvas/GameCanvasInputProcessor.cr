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

class GameCanvasInputProcessor < InputProcessor
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @allBinaryGameCanvas : AllBinaryGameCanvas? = nil

    def jf_allBinaryGameCanvas : AllBinaryGameCanvas?
        @allBinaryGameCanvas
    end

    def jf_allBinaryGameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @allBinaryGameCanvas = value
    end
    @downGameKeyEventHandler : DownGameKeyEventHandler? = nil

    def jf_downGameKeyEventHandler : DownGameKeyEventHandler?
        @downGameKeyEventHandler
    end

    def jf_downGameKeyEventHandler=(value : DownGameKeyEventHandler?) : DownGameKeyEventHandler?
        @downGameKeyEventHandler = value
    end
    @upGameKeyEventHandler : UpGameKeyEventHandler? = nil

    def jf_upGameKeyEventHandler : UpGameKeyEventHandler?
        @upGameKeyEventHandler
    end

    def jf_upGameKeyEventHandler=(value : UpGameKeyEventHandler?) : UpGameKeyEventHandler?
        @upGameKeyEventHandler = value
    end
    @downKeyEventHandler : DownKeyEventHandler? = nil

    def jf_downKeyEventHandler : DownKeyEventHandler?
        @downKeyEventHandler
    end

    def jf_downKeyEventHandler=(value : DownKeyEventHandler?) : DownKeyEventHandler?
        @downKeyEventHandler = value
    end
    @smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = nil

    def jf_smallIntegerSingletonFactory : SmallIntegerSingletonFactory?
        @smallIntegerSingletonFactory
    end

    def jf_smallIntegerSingletonFactory=(value : SmallIntegerSingletonFactory?) : SmallIntegerSingletonFactory?
        @smallIntegerSingletonFactory = value
    end
    @inputToGameKeyMapping : InputToGameKeyMapping? = nil

    def jf_inputToGameKeyMapping : InputToGameKeyMapping?
        @inputToGameKeyMapping
    end

    def jf_inputToGameKeyMapping=(value : InputToGameKeyMapping?) : InputToGameKeyMapping?
        @inputToGameKeyMapping = value
    end
    @j_NONE : GameKey? = nil

    def jf_NONE : GameKey?
        @j_NONE
    end

    def jf_NONE=(value : GameKey?) : GameKey?
        @j_NONE = value
    end
    @gameKeyEventFactory : GameKeyEventFactory? = nil

    def jf_gameKeyEventFactory : GameKeyEventFactory?
        @gameKeyEventFactory
    end

    def jf_gameKeyEventFactory=(value : GameKeyEventFactory?) : GameKeyEventFactory?
        @gameKeyEventFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameCanvasInputProcessor : Nil
    @logUtil = LogUtil.getInstance()
    
    @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    @downKeyEventHandler = DownKeyEventHandler.getInstance()
    @smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
    @inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance().not_nil!.getInputMapping()
    @j_NONE = GameKeyFactory.getInstance().not_nil!.jf_NONE
    @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    end
    

    def jinit_GameCanvasInputProcessor(allBinaryGameCanvas : AllBinaryGameCanvas?) : self
        jinit_InputProcessor()
        jfields_GameCanvasInputProcessor()
        @allBinaryGameCanvas = allBinaryGameCanvas
        @inputToGameKeyMapping.not_nil!.init(@allBinaryGameCanvas)
        self
    end
    

    def keyPressedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        begin
            gameKey : GameKey? = @inputToGameKeyMapping.not_nil!.getInstanceForCanvas(@allBinaryGameCanvas, keyCode)
            if gameKey != @j_NONE
                gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(@allBinaryGameCanvas, gameKey)
                @downGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
                @downGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
            else
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameInputStrings.not_nil!.jf_NO_KEY).not_nil!.appendint(keyCode).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_ADD_KEY_EVENT)
            end
            keyCodeAsInteger : JInteger? = @smallIntegerSingletonFactory.not_nil!.getAtNoThrow(keyCode)
            @downKeyEventHandler.not_nil!.fireEventI(keyCodeAsInteger)
            @downKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEventI(keyCodeAsInteger)
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
    

    def keyReleasedByDevice(canvas : Canvas?, keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        self.removeGameKeyEvent(canvas, keyCode, deviceId, false)
    end
    

    def removeGameKeyEvent(canvas : Canvas?, keyCode : Int, deviceId : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        begin
            gameKey : GameKey? = @inputToGameKeyMapping.not_nil!.getInstanceForCanvas(canvas, keyCode)
            if gameKey != @j_NONE
                gameKeyEventSourceInterface : GameKeyEventSourceInterface? = JR.cast(canvas, GameKeyEventSourceInterface)
                gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                @upGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
            else
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@gameInputStrings.not_nil!.jf_NO_KEY).not_nil!.appendint(keyCode).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_REMOVE_KEY_EVENT)
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put("Key Event Error", self, @gameInputStrings.not_nil!.jf_REMOVE_KEY_EVENT, e)
            else
                raise jex2
            end
        end
    end
end

