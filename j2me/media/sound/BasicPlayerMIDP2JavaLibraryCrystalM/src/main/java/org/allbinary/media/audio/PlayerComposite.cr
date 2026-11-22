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
# package org.allbinary.media.audio

class PlayerComposite < JObject
    include Controllable
    include Player
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
    @player : Player? = nil

    def jf_player : Player?
        @player
    end

    def jf_player=(value : Player?) : Player?
        @player = value
    end
    @timeElapsedHelper : TimeDelayHelper? = nil

    def jf_timeElapsedHelper : TimeDelayHelper?
        @timeElapsedHelper
    end

    def jf_timeElapsedHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeElapsedHelper = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_PlayerComposite : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    @timeElapsedHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def jinit_PlayerComposite(player : Player?, repeatTime : Int) : self
        repeatTime = repeatTime.to_i32!
        jfields_PlayerComposite()
        @player = player
        @timeElapsedHelper.not_nil!.jf_delay = repeatTime
        self
    end
    

    def addPlayerListener(playerListener : PlayerListener?) : Nil
        @player.not_nil!.addPlayerListener(playerListener)
    end
    

    def removePlayerListener(playerListener : PlayerListener?) : Nil
        @player.not_nil!.removePlayerListener(playerListener)
    end
    

    def close : Nil
        @player.not_nil!.close()
    end
    

    def deallocate : Nil
        @player.not_nil!.deallocate()
    end
    

    def getContentType : String
        return @player.not_nil!.getContentType()
    end
    

    def getDuration : Int64
        return @player.not_nil!.getDuration()
    end
    

    def getMediaTime : Int64
        return @player.not_nil!.getMediaTime()
    end
    

    def getTimeBase : TimeBase?
        return (JR.cast(@player, TimeBaseInterface)).not_nil!.getTimeBase()
    end
    

    def setTimeBase(timeBase : TimeBase?) : Nil
        (JR.cast(@player, TimeBaseInterface)).not_nil!.setTimeBase(timeBase)
    end
    

    def prefetch : Nil
        begin
            @player.not_nil!.prefetch()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "prefetch", e)
            else
                raise jex1
            end
        end
    end
    

    def realize : Nil
        begin
            @player.not_nil!.realize()
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "realize", e)
            else
                raise jex2
            end
        end
    end
    

    def getState : Int32
        return @player.not_nil!.getState()
    end
    

    def setLoopCount(count : Int) : Nil
        count = count.to_i32!
        @player.not_nil!.setLoopCount(count)
    end
    

    def setMediaTime(now : Int) : Int64
        now = now.to_i64!
        begin
            return @player.not_nil!.setMediaTime(now)
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "setMediaTime", e)
            return (-1).to_i64!
            else
                raise jex3
            end
        end
        return 0_i64
    end
    

    def start : Nil
        begin
            if @timeElapsedHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
                @player.not_nil!.start()
            end
        rescue jexc4 : ::Exception
            jex4 = JR.jthrowable(jexc4)
            if jex4.is_a?(JException)
                e = jex4.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_START_METHOD_NAME, e)
            else
                raise jex4
            end
        end
    end
    

    def stop : Nil
        begin
            @player.not_nil!.stop()
        rescue jexc5 : ::Exception
            jex5 = JR.jthrowable(jexc5)
            if jex5.is_a?(JException)
                e = jex5.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "stop", e)
            else
                raise jex5
            end
        end
    end
    

    def getControl(controlType : String) : Control?
        return @player.not_nil!.getControl(controlType)
    end
    

    def getControls : Array(Control?)?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def setVolume(leftVolume : Int, rightVolume : Int) : Nil
        leftVolume = leftVolume.to_i32!
        rightVolume = rightVolume.to_i32!
        controllable2 : Controllable2? = (JR.cast(@player, Controllable2))
        controllable2.not_nil!.setVolume(leftVolume, rightVolume)
    end
    

    def getPlayerP : Player?
        return @player
    end
end

