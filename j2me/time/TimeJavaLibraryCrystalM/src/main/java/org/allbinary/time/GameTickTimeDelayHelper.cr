# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class GameTickTimeDelayHelper < JObject
    @timeDelta : Int64 = 0_i64

    def jf_timeDelta : Int64
        @timeDelta
    end

    def jf_timeDelta=(value : Int64) : Int64
        @timeDelta = value
    end
    @startTime : Int64 = 0_i64

    def jf_startTime : Int64
        @startTime
    end

    def jf_startTime=(value : Int64) : Int64
        @startTime = value
    end
    @lastStartTime : Int64 = 0_i64

    def jf_lastStartTime : Int64
        @lastStartTime
    end

    def jf_lastStartTime=(value : Int64) : Int64
        @lastStartTime = value
    end
    

    def jinit_GameTickTimeDelayHelper(startTime : Int) : self
        startTime = startTime.to_i64!
        @startTime = startTime
        @lastStartTime = 0_i64
        self
    end
    

    def setStartTime : Int64
        @startTime = JSystem.currentTimeMillis()
        return @startTime
    end
    

    def loop_j : Nil
        if @lastStartTime == JLong.jst_MIN_VALUE
            @timeDelta = 0_i64
        else
            @timeDelta = JSystem.currentTimeMillis() &- @lastStartTime
        end
    end
    

    def getTimeFromStart : Int64
        return @startTime &- @lastStartTime
    end
end

