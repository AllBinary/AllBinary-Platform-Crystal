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

class TimeUtil < JObject

    @@jst_instance : TimeUtil? = nil

    def self.jst_instance : TimeUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TimeUtil?) : TimeUtil?
        jclinit
        @@jst_instance = value
    end

    @@jst_calendar : JCalendar? = nil

    def self.jst_calendar : JCalendar?
        jclinit
        @@jst_calendar
    end

    def self.jst_calendar=(value : JCalendar?) : JCalendar?
        jclinit
        @@jst_calendar = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TimeUtil.new.jinit_TimeUtil()
        @@jst_calendar = JCalendar.getInstance()
    end
    

    def self.getInstance : TimeUtil?
        return TimeUtil.jst_instance
    end

    def jinit_TimeUtil : self
        self
    end
    

    def setCalendar(calendar : JCalendar?, yearString : String, monthString : String, dayString : String, hourString : String) : Nil
        year : Int32 = JInteger.new.jinit_JInteger(yearString).not_nil!.intValue()
        month : Int32 = JInteger.new.jinit_JInteger(monthString).not_nil!.intValue()
        day : Int32 = JInteger.new.jinit_JInteger(dayString).not_nil!.intValue()
        hour : Int32 = JInteger.new.jinit_JInteger(hourString).not_nil!.intValue()
        calendar.not_nil!.set(year, month, day, hour, 0)
    end
    

    def setCalendarWithTime(calendar : JCalendar?, yearString : String, monthString : String, dayString : String, hourString : String, minuteString : String, secondString : String) : Nil
        year : Int32 = JInteger.new.jinit_JInteger(yearString).not_nil!.intValue()
        month : Int32 = JInteger.new.jinit_JInteger(monthString).not_nil!.intValue()
        day : Int32 = JInteger.new.jinit_JInteger(dayString).not_nil!.intValue()
        hour : Int32 = JInteger.new.jinit_JInteger(hourString).not_nil!.intValue()
        minute : Int32 = JInteger.new.jinit_JInteger(minuteString).not_nil!.intValue()
        second : Int32 = JInteger.new.jinit_JInteger(secondString).not_nil!.intValue()
        calendar.not_nil!.set(year, month, day, hour, minute, second)
    end
    

    def setExpirationCalendar(calendar : JCalendar?, yearsString : String, monthsString : String, daysString : String, hoursString : String, minutesString : String, secondsString : String) : Nil
        year : Int32 = calendar.not_nil!.get(JCalendar.jst_YEAR) + JInteger.new.jinit_JInteger(yearsString).not_nil!.intValue()
        month : Int32 = calendar.not_nil!.get(JCalendar.jst_MONTH) + JInteger.new.jinit_JInteger(monthsString).not_nil!.intValue()
        day : Int32 = calendar.not_nil!.get(JCalendar.jst_DAY_OF_MONTH) + JInteger.new.jinit_JInteger(daysString).not_nil!.intValue()
        hour : Int32 = calendar.not_nil!.get(JCalendar.jst_HOUR) + JInteger.new.jinit_JInteger(hoursString).not_nil!.intValue()
        minute : Int32 = calendar.not_nil!.get(JCalendar.jst_MINUTE) + JInteger.new.jinit_JInteger(minutesString).not_nil!.intValue()
        second : Int32 = calendar.not_nil!.get(JCalendar.jst_SECOND) + JInteger.new.jinit_JInteger(secondsString).not_nil!.intValue()
        calendar.not_nil!.set(year, month, day, hour, minute, second)
    end
    

    def getTotalTime(yearString : String, monthString : String, dayString : String, hourString : String, minuteString : String, secondString : String) : Int64
        time : Int64 = TimeUtil.jst_calendar.not_nil!.getTimeInMillis()
        self.setExpirationCalendar(TimeUtil.jst_calendar, yearString, monthString, dayString, hourString, minuteString, secondString)
        timeDelta : Int64 = TimeUtil.jst_calendar.not_nil!.getTimeInMillis()
        return timeDelta &- time
    end
end

