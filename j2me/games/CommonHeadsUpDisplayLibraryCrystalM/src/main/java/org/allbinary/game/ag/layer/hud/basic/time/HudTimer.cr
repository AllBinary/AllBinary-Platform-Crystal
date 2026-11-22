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
# package org.allbinary.game.ag.layer.hud.basic.time

class HudTimer < JObject
    @startTime : Int64 = 0_i64

    def jf_startTime : Int64
        @startTime
    end

    def jf_startTime=(value : Int64) : Int64
        @startTime = value
    end
    @hundredthTime : Int64 = 0_i64

    def jf_hundredthTime : Int64
        @hundredthTime
    end

    def jf_hundredthTime=(value : Int64) : Int64
        @hundredthTime = value
    end
    @maxTime : Int64 = 0_i64

    def jf_maxTime : Int64
        @maxTime
    end

    def jf_maxTime=(value : Int64) : Int64
        @maxTime = value
    end
    @modifier : Int64 = 0_i64

    def jf_modifier : Int64
        @modifier
    end

    def jf_modifier=(value : Int64) : Int64
        @modifier = value
    end
    @hundrethsString : Array(UInt16)? = nil

    def jf_hundrethsString : Array(UInt16)?
        @hundrethsString
    end

    def jf_hundrethsString=(value : Array(UInt16)?) : Array(UInt16)?
        @hundrethsString = value
    end
    @totalDigits : Int32 = 0

    def jf_totalDigits : Int32
        @totalDigits
    end

    def jf_totalDigits=(value : Int32) : Int32
        @totalDigits = value
    end
    @primitiveLongUtil : PrimitiveLongUtil? = nil

    def jf_primitiveLongUtil : PrimitiveLongUtil?
        @primitiveLongUtil
    end

    def jf_primitiveLongUtil=(value : PrimitiveLongUtil?) : PrimitiveLongUtil?
        @primitiveLongUtil = value
    end
    @j_MAX : Array(UInt16)? = nil

    def jf_MAX : Array(UInt16)?
        @j_MAX
    end

    def jf_MAX=(value : Array(UInt16)?) : Array(UInt16)?
        @j_MAX = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_HudTimer : Nil
    @startTime = (-1).to_i64!
    
    
    
    @hundrethsString = PrimitiveLongSingleton.getInstance().not_nil!.jf_ZERO
    @totalDigits = 1
    
    @j_MAX = ['L'.ord.to_u16, 'O'.ord.to_u16, 'L'.ord.to_u16] of UInt16
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def jinit_HudTimer(maxTime : Int) : self
        maxTime = maxTime.to_i32!
        jfields_HudTimer()
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime)
        @maxTime = (maxTime).to_i64!
        self
    end
    

    def start : Nil
        @hundredthTime = 0_i64
        @startTime = @gameTickTimeDelayHelper.not_nil!.jf_startTime
    end
    

    def get : Int64
        return @hundredthTime
    end
    

    def update : Nil
        lastLowerTime : Int64 = @hundredthTime
        currentTime : Int64 = ((@modifier + @gameTickTimeDelayHelper.not_nil!.jf_startTime) - @startTime)
        if currentTime < 0_i64
            currentTime = 0_i64
        end
        @hundredthTime = currentTime.tdiv(100_i64)
        if @hundredthTime >= @maxTime
            if @startTime > 0_i64
                @hundrethsString = @j_MAX
            end
        elsif lastLowerTime != @hundredthTime
            @hundrethsString = @primitiveLongUtil.not_nil!.getCharArray((@hundredthTime).to_i32!)
            @totalDigits = @primitiveLongUtil.not_nil!.getCurrentTotalDigits()
        end
    end
    

    def reduce(value : Int) : Nil
        value = value.to_i32!
        @modifier &-= (value).to_i64!
    end
    

    def add(value : Int) : Nil
        value = value.to_i32!
        @modifier &+= (value).to_i64!
    end
    

    def getTimeChars : Array(UInt16)?
        return @hundrethsString
    end
    

    def getCurrentTotalDigits : Int32
        return @totalDigits
    end
end

