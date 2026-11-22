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
# package org.allbinary.time

class TimeDelayHelper < JObject
    @startTime : Int64 = 0_i64

    def jf_startTime : Int64
        @startTime
    end

    def jf_startTime=(value : Int64) : Int64
        @startTime = value
    end
    @elapsedTimeAtPause : Int64 = 0_i64

    def jf_elapsedTimeAtPause : Int64
        @elapsedTimeAtPause
    end

    def jf_elapsedTimeAtPause=(value : Int64) : Int64
        @elapsedTimeAtPause = value
    end
    @delay : Int32 = 0

    def jf_delay : Int32
        @delay
    end

    def jf_delay=(value : Int32) : Int32
        @delay = value
    end

    # Java field initializers run after the super constructor
    def jfields_TimeDelayHelper : Nil
    @startTime = (-1).to_i64!
    @elapsedTimeAtPause = JLong.jst_MIN_VALUE
    
    end
    

    def jinit_TimeDelayHelper(delay : Int) : self
        delay = delay.to_i32!
        jfields_TimeDelayHelper()
        @delay = delay
        self.setStartTimeTNT()
        self
    end
    

    def isTimeTNT : Bool
        currentTime : Int64 = JSystem.currentTimeMillis()
        if currentTime &- @startTime > (@delay).to_i64!
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def isTimeSinceTNT(delay : Int) : Bool
        delay = delay.to_i32!
        currentTime : Int64 = JSystem.currentTimeMillis()
        if currentTime &- @startTime > (delay).to_i64!
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def isTime(currentTime : Int) : Bool
        currentTime = currentTime.to_i64!
        if currentTime &- @startTime > (@delay).to_i64!
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def isTimeWithoutReset(currentTime : Int) : Bool
        currentTime = currentTime.to_i64!
        if currentTime &- @startTime > (@delay).to_i64!
            return true
        end
        return false
    end
    

    def isTimeSince(delay : Int, currentTime : Int) : Bool
        delay = delay.to_i32!
        currentTime = currentTime.to_i64!
        if currentTime &- @startTime > (@delay).to_i64!
            @startTime = currentTime
            return true
        end
        return false
    end
    

    def getElapsedTNT : Int64
        return JSystem.currentTimeMillis() &- @startTime
    end
    

    def getElapsed(currentTime : Int) : Int64
        currentTime = currentTime.to_i64!
        return currentTime &- @startTime
    end
    

    def isElapsed(currentTime : Int, time : Int) : Bool
        currentTime = currentTime.to_i64!
        time = time.to_i64!
        if self.getElapsed(currentTime) > time
            return true
        else
            return false
        end
        return false
    end
    

    def isElapsedTNT(time : Int) : Bool
        time = time.to_i64!
        if self.getElapsedTNT() > time
            return true
        else
            return false
        end
        return false
    end
    

    def setStartTime(startTime : Int) : Nil
        startTime = startTime.to_i64!
        @startTime = startTime
    end
    

    def getStartTime : Int64
        return @startTime
    end
    

    def setStartTimeTNT : Nil
        @startTime = JSystem.currentTimeMillis()
    end
    

    def pause : Nil
        @elapsedTimeAtPause = self.getElapsedTNT()
        @startTime = JLong.jst_MAX_VALUE
    end
    

    def resume : Bool
        if @elapsedTimeAtPause != JLong.jst_MIN_VALUE
            @startTime = JSystem.currentTimeMillis() &+ @elapsedTimeAtPause
            @elapsedTimeAtPause = JLong.jst_MIN_VALUE
            self.setStartTimeTNT()
            return true
        end
        return false
    end
    

    def toStringAt(currentTime : Int) : String
        currentTime = currentTime.to_i64!
        elapsed : Int64 = self.getElapsed(currentTime)
        if elapsed > 0_i64
            commonLabels : CommonLabels? = CommonLabels.getInstance()
            elapsedAsString : String = JLong.toString(elapsed)
            return StringMaker.new.jinit_StringMaker().not_nil!.append(commonLabels.not_nil!.jf_START).not_nil!.appendlong(@startTime).not_nil!.append(commonLabels.not_nil!.jf_CURRENT).not_nil!.appendlong(currentTime).not_nil!.append(commonLabels.not_nil!.jf_ELAPSED).not_nil!.append(elapsedAsString).not_nil!.toString()
        else
            return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        end
        return ""
    end
    

    def toString : String
        currentTime : Int64 = JSystem.currentTimeMillis()
        elapsed : Int64 = self.getElapsed(currentTime)
        if elapsed > 0_i64
            commonLabels : CommonLabels? = CommonLabels.getInstance()
            elapsedAsString : String = JLong.toString(elapsed)
            return StringMaker.new.jinit_StringMaker().not_nil!.append(commonLabels.not_nil!.jf_START).not_nil!.appendlong(@startTime).not_nil!.append(commonLabels.not_nil!.jf_CURRENT).not_nil!.appendlong(currentTime).not_nil!.append(commonLabels.not_nil!.jf_ELAPSED).not_nil!.append(elapsedAsString).not_nil!.toString()
        else
            return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        end
        return ""
    end
end

