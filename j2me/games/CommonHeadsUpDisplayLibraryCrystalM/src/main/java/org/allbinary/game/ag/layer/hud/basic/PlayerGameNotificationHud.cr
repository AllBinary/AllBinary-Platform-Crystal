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
# package org.allbinary.game.ag.layer.hud.basic

class PlayerGameNotificationHud < GameNotificationHud
    include UpdateMyFontInterface
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end
    @j_EMPTY_STRING : String = ""

    def jf_EMPTY_STRING : String
        @j_EMPTY_STRING
    end

    def jf_EMPTY_STRING=(value : String) : String
        @j_EMPTY_STRING = value
    end
    # displayInfo is the field of BasicHud
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @gameNotification : GameNotification? = nil

    def jf_gameNotification : GameNotification?
        @gameNotification
    end

    def jf_gameNotification=(value : GameNotification?) : GameNotification?
        @gameNotification = value
    end
    @permanentGameNotification : GameNotification? = nil

    def jf_permanentGameNotification : GameNotification?
        @permanentGameNotification
    end

    def jf_permanentGameNotification=(value : GameNotification?) : GameNotification?
        @permanentGameNotification = value
    end
    @setAndRemoveProcessor : Processor? = nil

    def jf_setAndRemoveProcessor : Processor?
        @setAndRemoveProcessor
    end

    def jf_setAndRemoveProcessor=(value : Processor?) : Processor?
        @setAndRemoveProcessor = value
    end
    @nextUnremoveableProcessor : Processor? = nil

    def jf_nextUnremoveableProcessor : Processor?
        @nextUnremoveableProcessor
    end

    def jf_nextUnremoveableProcessor=(value : Processor?) : Processor?
        @nextUnremoveableProcessor = value
    end
    @processor : Processor? = nil

    def jf_processor : Processor?
        @processor
    end

    def jf_processor=(value : Processor?) : Processor?
        @processor = value
    end
    @j_PERMANENT_GAME_NOTIFICATION : String = ""

    def jf_PERMANENT_GAME_NOTIFICATION : String
        @j_PERMANENT_GAME_NOTIFICATION
    end

    def jf_PERMANENT_GAME_NOTIFICATION=(value : String) : String
        @j_PERMANENT_GAME_NOTIFICATION = value
    end
    @lastString : String = ""

    def jf_lastString : String
        @lastString
    end

    def jf_lastString=(value : String) : String
        @lastString = value
    end
    @string : String = ""

    def jf_string : String
        @string
    end

    def jf_string=(value : String) : String
        @string = value
    end
    @point : CustomGPoint? = nil

    def jf_point : CustomGPoint?
        @point
    end

    def jf_point=(value : CustomGPoint?) : CustomGPoint?
        @point = value
    end
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end

    # Java field initializers run after the super constructor
    def jfields_PlayerGameNotificationHud : Nil
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    @j_EMPTY_STRING = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @displayInfo = DisplayInfoSingleton.getInstance()
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    
    @gameNotification = GameNotification.new.jinit_GameNotification()
    @permanentGameNotification = GameNotification.new.jinit_GameNotification()
    @setAndRemoveProcessor = SetAndRemoveProcessor.new.jinit_SetAndRemoveProcessor(self)
    @nextUnremoveableProcessor = NextUnremoveableProcessor.new.jinit_NextUnremoveableProcessor(self)
    @processor = Processor.getInstance()
    @j_PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: "
    @lastString = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @string = @j_EMPTY_STRING
    @point = CustomGPoint.jst_NULL_CUSTOM_POINT
    
    end
    

    def jinit_PlayerGameNotificationHud(location : Int, direction : Int, bufferZone : Int, basicColor : BasicColor?) : self
        location = location.to_i32!
        direction = direction.to_i32!
        bufferZone = bufferZone.to_i32!
        jinit_GameNotificationHud(location, direction, bufferZone, basicColor)
        jfields_PlayerGameNotificationHud()
        @circularIndexUtil = CircularIndexUtil.createInstance(0)
        gameNotificationEventHandler : GameNotificationEventHandler? = GameNotificationEventHandler.getInstance()
        gameNotificationEventHandler.not_nil!.removeAllListeners()
        gameNotificationEventHandler.not_nil!.addListenerInterface(self)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        begin
            super(graphics)
            font : Font? = graphics.not_nil!.getFont()
            @width = font.not_nil!.stringWidth(@string)
            @processor.not_nil!.process()
            @processor = Processor.getInstance()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            logUtil : LogUtil? = LogUtil.getInstance()
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_UPDATE, e)
            else
                raise jex1
            end
        end
    end
    

    def getPoint(x : Int, y : Int) : GPoint?
        x = x.to_i32!
        y = y.to_i32!
        @point = CustomGPoint.getInstance3(0, 0)
        @point.not_nil!.setX(x)
        @point.not_nil!.setY(y)
        return @point
    end
    

    def add(string : String, seconds : JInteger?, basicColor : BasicColor?, permanent : JBoolean?) : Nil
        if permanent.not_nil!.booleanValue()
            if @lastString != string
                @lastString = string
                @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_PERMANENT_GAME_NOTIFICATION).not_nil!.append(string).not_nil!.toString(), self, @commonStrings.not_nil!.jf_ADD)
            end
            @permanentGameNotification.not_nil!.add(string, seconds, basicColor)
            @circularIndexUtil.not_nil!.setSize(@permanentGameNotification.not_nil!.getSize())
        else
            @gameNotification.not_nil!.add(string, seconds, basicColor)
        end
    end
    

    def processTick : Nil
        if @timeDelayHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
            gameAdState : GameAdState? = GameAdStateFactory.getInstance().not_nil!.getCurrentInstance()
            if gameAdState.not_nil!.isShowingAtLocation(self.getLocation())
                @offsetY = -54
            else
                @offsetY = 0
            end
            if @gameNotification.not_nil!.getSize() > 0
                self.setAndRemove()
            elsif @permanentGameNotification.not_nil!.getSize() > 0
                self.setNextUnremoveable()
            else
                @string = @j_EMPTY_STRING
            end
        end
    end
    

    def setAndRemove : Nil
        @string = JR.castString(@gameNotification.not_nil!.jf_stringList.not_nil!.removeAt(0))
        @processor = @setAndRemoveProcessor
    end
    

    def setAndRemoveProcess : Nil
        self.setX(JR.shr((@displayInfo.not_nil!.getLastWidth() &- @width), 1))
        @point.not_nil!.setX(self.getX())
        @point.not_nil!.setY(self.getY())
        time : JInteger? = JR.cast(@gameNotification.not_nil!.jf_timeList.not_nil!.removeAt(0), JInteger)
        iTime : Int32 = time.not_nil!.intValue() &* 1000
        if iTime == 0
            iTime = 500
        end
        @timeDelayHelper.not_nil!.jf_delay = iTime
        self.setBasicColorP(JR.cast(@gameNotification.not_nil!.jf_colorList.not_nil!.removeAt(0), BasicColor))
    end
    

    def setNextUnremoveable : Nil
        index : Int32 = @circularIndexUtil.not_nil!.getIndex()
        @string = JR.castString(@permanentGameNotification.not_nil!.jf_stringList.not_nil!.jf_objectArray.not_nil![index])
        @processor = @nextUnremoveableProcessor
    end
    

    def setNextUnremoveableProcess : Nil
        index : Int32 = @circularIndexUtil.not_nil!.getIndex()
        self.setX(JR.shr((@displayInfo.not_nil!.getLastWidth() &- @width), 1))
        @point.not_nil!.setX(self.getX())
        @point.not_nil!.setY(self.getY())
        time : JInteger? = JR.cast(@permanentGameNotification.not_nil!.jf_timeList.not_nil!.jf_objectArray.not_nil![index], JInteger)
        @timeDelayHelper.not_nil!.jf_delay = time.not_nil!.intValue() &* 1000
        self.setBasicColorP(JR.cast(@permanentGameNotification.not_nil!.jf_colorList.not_nil!.jf_objectArray.not_nil![index], BasicColor))
        @circularIndexUtil.not_nil!.next_()
    end
    

    def clear : Nil
        @gameNotification.not_nil!.clear()
        @permanentGameNotification.not_nil!.clear()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        paintString(graphics, @string)
    end
end

