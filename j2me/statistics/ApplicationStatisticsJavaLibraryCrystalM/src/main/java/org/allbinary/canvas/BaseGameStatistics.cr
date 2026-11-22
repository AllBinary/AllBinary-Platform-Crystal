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
# package org.allbinary.canvas

class BaseGameStatistics < JObject
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @updateDelayHelper : TimeDelayHelper? = nil

    def jf_updateDelayHelper : TimeDelayHelper?
        @updateDelayHelper
    end

    def jf_updateDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @updateDelayHelper = value
    end
    @totalRefreshes : Int64 = 0_i64

    def jf_totalRefreshes : Int64
        @totalRefreshes
    end

    def jf_totalRefreshes=(value : Int64) : Int64
        @totalRefreshes = value
    end
    @totalFrames : Int64 = 0_i64

    def jf_totalFrames : Int64
        @totalFrames
    end

    def jf_totalFrames=(value : Int64) : Int64
        @totalFrames = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end
    @j_DEFAULT_SCALE_FACTOR : Int32 = 0

    def jf_DEFAULT_SCALE_FACTOR : Int32
        @j_DEFAULT_SCALE_FACTOR
    end

    def jf_DEFAULT_SCALE_FACTOR=(value : Int32) : Int32
        @j_DEFAULT_SCALE_FACTOR = value
    end
    @j_NOT : String = ""

    def jf_NOT : String
        @j_NOT
    end

    def jf_NOT=(value : String) : String
        @j_NOT = value
    end
    @j_EMPTY_STRING : String = ""

    def jf_EMPTY_STRING : String
        @j_EMPTY_STRING
    end

    def jf_EMPTY_STRING=(value : String) : String
        @j_EMPTY_STRING = value
    end
    @j_STRING_ARRAY : Array(String)? = nil

    def jf_STRING_ARRAY : Array(String)?
        @j_STRING_ARRAY
    end

    def jf_STRING_ARRAY=(value : Array(String)?) : Array(String)?
        @j_STRING_ARRAY = value
    end
    @j_SPACE_CHAR : UInt16 = 0_u16

    def jf_SPACE_CHAR : UInt16
        @j_SPACE_CHAR
    end

    def jf_SPACE_CHAR=(value : UInt16) : UInt16
        @j_SPACE_CHAR = value
    end
    @j_PLUS_CHAR : UInt16 = 0_u16

    def jf_PLUS_CHAR : UInt16
        @j_PLUS_CHAR
    end

    def jf_PLUS_CHAR=(value : UInt16) : UInt16
        @j_PLUS_CHAR = value
    end
    @j_X_CHAR : UInt16 = 0_u16

    def jf_X_CHAR : UInt16
        @j_X_CHAR
    end

    def jf_X_CHAR=(value : UInt16) : UInt16
        @j_X_CHAR = value
    end
    @j_CHAR_ARRAY : Array(Array(UInt16)?)? = nil

    def jf_CHAR_ARRAY : Array(Array(UInt16)?)?
        @j_CHAR_ARRAY
    end

    def jf_CHAR_ARRAY=(value : Array(Array(UInt16)?)?) : Array(Array(UInt16)?)?
        @j_CHAR_ARRAY = value
    end
    @primitiveLongSingleton : PrimitiveLongSingleton? = nil

    def jf_primitiveLongSingleton : PrimitiveLongSingleton?
        @primitiveLongSingleton
    end

    def jf_primitiveLongSingleton=(value : PrimitiveLongSingleton?) : PrimitiveLongSingleton?
        @primitiveLongSingleton = value
    end

    # Java field initializers run after the super constructor
    def jfields_BaseGameStatistics : Nil
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(JInteger.jst_MAX_VALUE)
    @updateDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(2000)
    
    
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    @j_DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().not_nil!.jf_DEFAULT_SCALE_FACTOR
    @j_NOT = "Not enough Time to Calculate"
    @j_EMPTY_STRING = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @j_STRING_ARRAY = [" Total Time: ", @j_EMPTY_STRING, " Total Frames: ", @j_EMPTY_STRING, " Frames/10 Sec: ", @j_EMPTY_STRING, " Total Paints: ", @j_EMPTY_STRING, " Paints/10 Sec: ", @j_EMPTY_STRING] of String
    @j_SPACE_CHAR = ' '.ord.to_u16
    @j_PLUS_CHAR = '+'.ord.to_u16
    @j_X_CHAR = 'X'.ord.to_u16
    @j_CHAR_ARRAY = [['F'.ord.to_u16, 'r'.ord.to_u16, 'a'.ord.to_u16, 'm'.ord.to_u16, 'e'.ord.to_u16, 's'.ord.to_u16, '/'.ord.to_u16, '1'.ord.to_u16, '0'.ord.to_u16, ' '.ord.to_u16, 'S'.ord.to_u16, 'e'.ord.to_u16, 'c'.ord.to_u16, ':'.ord.to_u16] of UInt16, ['X'.ord.to_u16, 'X'.ord.to_u16] of UInt16, ['P'.ord.to_u16, 'a'.ord.to_u16, 'i'.ord.to_u16, 'n'.ord.to_u16, 't'.ord.to_u16, 's'.ord.to_u16, '/'.ord.to_u16, '1'.ord.to_u16, '0'.ord.to_u16, ' '.ord.to_u16, 'S'.ord.to_u16, 'e'.ord.to_u16, 'c'.ord.to_u16, ':'.ord.to_u16] of UInt16, ['X'.ord.to_u16, 'X'.ord.to_u16] of UInt16] of Array(UInt16)?
    @primitiveLongSingleton = PrimitiveLongSingleton.getInstance()
    end
    

    def jinit_BaseGameStatistics : self
        jfields_BaseGameStatistics()
        self
    end
    

    def init : Nil
        @timeDelayHelper.not_nil!.setStartTimeTNT()
        @totalRefreshes = 0_i64
        @totalFrames = 0_i64
    end
    

    def add(string : String) : Nil
    end
    

    def process : Nil
    end
    

    def nextFrame : Nil
        @totalFrames &+= 1
    end
    

    def nextRefresh : Nil
        @totalRefreshes &+= 1
    end
    

    def getRefreshRate : Int16
        elapsed : Int64 = @timeDelayHelper.not_nil!.getElapsed(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
        if elapsed > 1_i64
            time : Int16 = ((@totalRefreshes.tdiv((JR.shr(elapsed, @j_DEFAULT_SCALE_FACTOR))))).to_i16!
            return time
        else
            return 0_i16
        end
        return 0_i16
    end
    

    def getTimeDelayHelper : TimeDelayHelper?
        return @timeDelayHelper
    end
    

    def to2DCharArray : Array(Array(UInt16)?)?
        totalTime : Int64 = @timeDelayHelper.not_nil!.getElapsed(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
        totalTime = (JR.shr(totalTime, @j_DEFAULT_SCALE_FACTOR))
        if totalTime > 0_i64 && @updateDelayHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
            framesPerSec : Int32 = ((@totalFrames.tdiv(totalTime))).to_i32!
            if framesPerSec < 10
                @j_CHAR_ARRAY.not_nil![1].not_nil![0] = @j_SPACE_CHAR
                @j_CHAR_ARRAY.not_nil![1].not_nil![1] = @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAY.not_nil![framesPerSec]
            elsif framesPerSec < 100
                tens = framesPerSec.tdiv(10)
                removeTens = tens &* 10
                @j_CHAR_ARRAY.not_nil![1].not_nil![0] = @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAY.not_nil![tens]
                @j_CHAR_ARRAY.not_nil![1].not_nil![1] = @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAY.not_nil![framesPerSec &- removeTens]
            else
                @j_CHAR_ARRAY.not_nil![1].not_nil![0] = @j_PLUS_CHAR
                @j_CHAR_ARRAY.not_nil![1].not_nil![1] = @j_PLUS_CHAR
            end
            refreshesPerSec : Int32 = ((@totalRefreshes.tdiv(totalTime))).to_i32!
            if refreshesPerSec < 10
                @j_CHAR_ARRAY.not_nil![3].not_nil![0] = @j_X_CHAR
                @j_CHAR_ARRAY.not_nil![3].not_nil![1] = @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAY.not_nil![refreshesPerSec]
            elsif refreshesPerSec < 100
                tens = refreshesPerSec.tdiv(10)
                removeTens = tens &* 10
                @j_CHAR_ARRAY.not_nil![3].not_nil![0] = @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAY.not_nil![refreshesPerSec.tdiv(10)]
                @j_CHAR_ARRAY.not_nil![3].not_nil![1] = @primitiveLongSingleton.not_nil!.jf_NUMBER_CHAR_ARRAY.not_nil![refreshesPerSec &- removeTens]
            else
                @j_CHAR_ARRAY.not_nil![3].not_nil![0] = @j_PLUS_CHAR
                @j_CHAR_ARRAY.not_nil![3].not_nil![1] = @j_PLUS_CHAR
            end
        end
        return @j_CHAR_ARRAY
    end
    

    def toStringArray : Array(String)?
        totalTime : Int64 = @timeDelayHelper.not_nil!.getElapsed(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
        totalTime = (totalTime.tdiv(10000_i64))
        if totalTime > 0_i64
            @j_STRING_ARRAY.not_nil![1] = JLong.toString(totalTime)
            @j_STRING_ARRAY.not_nil![3] = JLong.toString(@totalFrames)
            @j_STRING_ARRAY.not_nil![5] = JLong.toString(@totalFrames.tdiv(totalTime))
            @j_STRING_ARRAY.not_nil![7] = JLong.toString(@totalRefreshes)
            @j_STRING_ARRAY.not_nil![9] = JLong.toString(@totalRefreshes.tdiv(totalTime))
        else
            string : String = @j_EMPTY_STRING
            @j_STRING_ARRAY.not_nil![1] = string
            @j_STRING_ARRAY.not_nil![3] = string
            @j_STRING_ARRAY.not_nil![5] = string
            @j_STRING_ARRAY.not_nil![7] = string
            @j_STRING_ARRAY.not_nil![9] = string
        end
        return @j_STRING_ARRAY
    end
    

    def toStringAt(totalTime : Int) : String
        totalTime = totalTime.to_i64!
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(@j_STRING_ARRAY.not_nil![0])
        stringBuffer.not_nil!.appendlong(totalTime)
        stringBuffer.not_nil!.append(@j_STRING_ARRAY.not_nil![2])
        stringBuffer.not_nil!.appendlong(@totalFrames)
        stringBuffer.not_nil!.append(@j_STRING_ARRAY.not_nil![4])
        stringBuffer.not_nil!.appendlong(@totalFrames.tdiv(totalTime))
        if @totalRefreshes > 0_i64
            stringBuffer.not_nil!.append(@j_STRING_ARRAY.not_nil![6])
            stringBuffer.not_nil!.appendlong(@totalRefreshes)
            stringBuffer.not_nil!.append(@j_STRING_ARRAY.not_nil![8])
            stringBuffer.not_nil!.appendlong(@totalRefreshes.tdiv(totalTime))
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_NEW_LINE)
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def toString : String
        totalTime : Int64 = @timeDelayHelper.not_nil!.getElapsed(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
        totalTime = (totalTime.tdiv(1000_i64))
        if totalTime > 0_i64
            return self.toStringAt(totalTime)
        else
            return @j_NOT
        end
        return ""
    end
end

