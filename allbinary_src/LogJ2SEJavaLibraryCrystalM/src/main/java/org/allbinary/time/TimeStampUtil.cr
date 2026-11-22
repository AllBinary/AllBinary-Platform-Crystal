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

class TimeStampUtil < JObject
    @simpleDataFormat : JSimpleDateFormat? = nil

    def jf_simpleDataFormat : JSimpleDateFormat?
        @simpleDataFormat
    end

    def jf_simpleDataFormat=(value : JSimpleDateFormat?) : JSimpleDateFormat?
        @simpleDataFormat = value
    end

    @@jst_instance : TimeStampUtil? = nil

    def self.jst_instance : TimeStampUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TimeStampUtil?) : TimeStampUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TimeStampUtil.new.jinit_TimeStampUtil()
    end
    

    def self.getInstance : TimeStampUtil?
        return TimeStampUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TimeStampUtil : Nil
    @simpleDataFormat = JSimpleDateFormat.new.jinit_JSimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS")
    end
    

    def jinit_TimeStampUtil : self
        jfields_TimeStampUtil()
        self
    end
    

    def getAsString : String
        calendar : JCalendar? = JCalendar.getInstance()
        date : JDate? = calendar.not_nil!.getTime()
        return @simpleDataFormat.not_nil!.format_j(date)
    end
end

