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

class NoTimeDelayHelper < TimeDelayHelper

    @@jst_SINGLETON : NoTimeDelayHelper? = nil

    def self.jst_SINGLETON : NoTimeDelayHelper?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NoTimeDelayHelper?) : NoTimeDelayHelper?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NoTimeDelayHelper.new.jinit_NoTimeDelayHelper()
    end
    

    def jinit_NoTimeDelayHelper : self
        jinit_TimeDelayHelper(0)
        self
    end
    

    def isTimeTNT : Bool
        return true
    end
    

    def isTimeSinceTNT(delay : Int) : Bool
        delay = delay.to_i32!
        return true
    end
    

    def isTime(currentTime : Int) : Bool
        currentTime = currentTime.to_i64!
        return true
    end
    

    def isTimeSince(delay : Int, currentTime : Int) : Bool
        delay = delay.to_i32!
        currentTime = currentTime.to_i64!
        return true
    end
end

