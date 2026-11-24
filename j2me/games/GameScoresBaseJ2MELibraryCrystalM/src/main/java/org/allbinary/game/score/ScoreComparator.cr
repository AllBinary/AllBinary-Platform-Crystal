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
# package org.allbinary.game.score

class ScoreComparator < JObject
    include RecordComparator
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @isHighestBest : Bool = false

    def jf_isHighestBest : Bool
        @isHighestBest
    end

    def jf_isHighestBest=(value : Bool) : Bool
        @isHighestBest = value
    end

    # Java field initializers run after the super constructor
    def jfields_ScoreComparator : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_ScoreComparator(isHighestBest : Bool) : self
        jfields_ScoreComparator()
        @isHighestBest = isHighestBest
        self
    end
    

    def getBestScore : Int64
        return ((@isHighestBest ? JLong.jst_MAX_VALUE : 0)).to_i64!
    end
    

    def compare(recordOne : Array(Int8)?, recordTwo : Array(Int8)?) : Int32
        byteArrayInputStreamOne : JByteArrayInputStream? = JByteArrayInputStream.new.jinit_JByteArrayInputStream(recordOne)
        inputStreamOne : JDataInputStream? = JDataInputStream.new.jinit_JDataInputStream(byteArrayInputStreamOne)
        byteArrayInputStreamTwo : JByteArrayInputStream? = JByteArrayInputStream.new.jinit_JByteArrayInputStream(recordTwo)
        inputStreamTwo : JDataInputStream? = JDataInputStream.new.jinit_JDataInputStream(byteArrayInputStreamTwo)
        scoreOne : Int64 = 0_i64
        scoreTwo : Int64 = 0_i64
        begin
            inputStreamOne.not_nil!.readUTF()
            inputStreamTwo.not_nil!.readUTF()
            scoreOne = inputStreamOne.not_nil!.readLong()
            scoreTwo = inputStreamTwo.not_nil!.readLong()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JEOFException)
                e = jex1.as(JEOFException)
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "compare", e)
            elsif jex1.is_a?(JIOException)
                e = jex1.as(JIOException)
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "compare", e)
            elsif jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "compare", e)
            else
                raise jex1
            end
        end
        if @isHighestBest
            return self.getHighTooLow(scoreOne, scoreTwo)
        else
            return self.getLowTooHigh(scoreOne, scoreTwo)
        end
        return 0
    end
    

    def getHighTooLow(scoreOne : Int, scoreTwo : Int) : Int32
        scoreOne = scoreOne.to_i64!
        scoreTwo = scoreTwo.to_i64!
        if scoreOne > scoreTwo
            return RecordComparator.jst_PRECEDES
        elsif scoreOne < scoreTwo
            return RecordComparator.jst_FOLLOWS
        else
            return RecordComparator.jst_EQUIVALENT
        end
        return 0
    end
    

    def getLowTooHigh(scoreOne : Int, scoreTwo : Int) : Int32
        scoreOne = scoreOne.to_i64!
        scoreTwo = scoreTwo.to_i64!
        if scoreOne < scoreTwo
            return RecordComparator.jst_PRECEDES
        elsif scoreOne > scoreTwo
            return RecordComparator.jst_FOLLOWS
        else
            return RecordComparator.jst_EQUIVALENT
        end
        return 0
    end
end

