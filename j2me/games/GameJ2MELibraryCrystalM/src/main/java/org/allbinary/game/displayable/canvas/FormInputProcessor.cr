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

class FormInputProcessor < InputProcessor
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
    @gameKeyEventFactory : GameKeyEventFactory? = nil

    def jf_gameKeyEventFactory : GameKeyEventFactory?
        @gameKeyEventFactory
    end

    def jf_gameKeyEventFactory=(value : GameKeyEventFactory?) : GameKeyEventFactory?
        @gameKeyEventFactory = value
    end
    @downKeyEventHandler : DownKeyEventHandler? = nil

    def jf_downKeyEventHandler : DownKeyEventHandler?
        @downKeyEventHandler
    end

    def jf_downKeyEventHandler=(value : DownKeyEventHandler?) : DownKeyEventHandler?
        @downKeyEventHandler = value
    end
    @upGameKeyEventHandler : UpGameKeyEventHandler? = nil

    def jf_upGameKeyEventHandler : UpGameKeyEventHandler?
        @upGameKeyEventHandler
    end

    def jf_upGameKeyEventHandler=(value : UpGameKeyEventHandler?) : UpGameKeyEventHandler?
        @upGameKeyEventHandler = value
    end
    @inputFactory : InputFactory? = nil

    def jf_inputFactory : InputFactory?
        @inputFactory
    end

    def jf_inputFactory=(value : InputFactory?) : InputFactory?
        @inputFactory = value
    end
    @platformKeyFactory : PlatformKeyFactory? = nil

    def jf_platformKeyFactory : PlatformKeyFactory?
        @platformKeyFactory
    end

    def jf_platformKeyFactory=(value : PlatformKeyFactory?) : PlatformKeyFactory?
        @platformKeyFactory = value
    end
    @allBinaryGameCanvas : AllBinaryGameCanvas? = nil

    def jf_allBinaryGameCanvas : AllBinaryGameCanvas?
        @allBinaryGameCanvas
    end

    def jf_allBinaryGameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @allBinaryGameCanvas = value
    end

    # Java field initializers run after the super constructor
    def jfields_FormInputProcessor : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @gameKeyEventFactory = GameKeyEventFactory.getInstance()
    @downKeyEventHandler = DownKeyEventHandler.getInstance()
    @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    @inputFactory = InputFactory.getInstance()
    @platformKeyFactory = PlatformKeyFactory.getInstance()
    
    end
    

    def jinit_FormInputProcessor(allBinaryGameCanvas : AllBinaryGameCanvas?) : self
        jinit_InputProcessor()
        jfields_FormInputProcessor()
        @allBinaryGameCanvas = allBinaryGameCanvas
        self
    end
    

    def keyPressedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        begin
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@inputFactory.not_nil!.jf_KEY_CODE_LABEL).not_nil!.appendint(keyCode).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE).not_nil!.append(@inputFactory.not_nil!.jf_DEVICE_ID_LABEL).not_nil!.appendint(deviceId).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_KEY_PRESSED)
            input : Input? = @inputFactory.not_nil!.getInstanceById(keyCode)
            gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(@allBinaryGameCanvas, input)
            @downKeyEventHandler.not_nil!.fireEventForGameKeyEvent(gameKeyEvent)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @gameInputStrings.not_nil!.jf_ADD_KEY_EVENT, e)
            else
                raise jex1
            end
        end
    end
    

    def keyReleasedByDevice(canvas : Canvas?, keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        begin
            input : Input? = @inputFactory.not_nil!.getInstanceById(keyCode)
            if @platformKeyFactory.not_nil!.isEnter(input)
                PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@inputFactory.not_nil!.jf_KEY_CODE_LABEL).not_nil!.appendint(keyCode).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE).not_nil!.append(@inputFactory.not_nil!.jf_DEVICE_ID_LABEL).not_nil!.appendint(deviceId).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_KEY_RELEASED)
                gameKey : GameKey? = GameKeyFactory.getInstance().not_nil!.jf_KEY_NUM0
                gameKeyEventSourceInterface : GameKeyEventSourceInterface? = JR.cast(canvas, GameKeyEventSourceInterface)
                gameKeyEvent : GameKeyEvent? = @gameKeyEventFactory.not_nil!.getInstanceForInput(gameKeyEventSourceInterface, gameKey)
                @upGameKeyEventHandler.not_nil!.fireEvent(gameKeyEvent)
                @upGameKeyEventHandler.not_nil!.getInstanceForDevice(deviceId).not_nil!.fireEvent(gameKeyEvent)
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @gameInputStrings.not_nil!.jf_ADD_KEY_EVENT, e)
            else
                raise jex2
            end
        end
    end
end

