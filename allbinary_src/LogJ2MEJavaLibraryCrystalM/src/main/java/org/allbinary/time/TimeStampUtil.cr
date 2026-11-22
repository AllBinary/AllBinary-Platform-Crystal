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
    

    def jinit_TimeStampUtil : self
        self
    end
    

    def getAsString : String
        calendar : JCalendar? = JCalendar.getInstance()
        date : JDate? = calendar.not_nil!.getTime()
        return date.not_nil!.toString()
    end
end

