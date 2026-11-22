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

class HighScoresHelper < HighScoresHelperBase
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @lastIndex : Int32 = 0

    def jf_lastIndex : Int32
        @lastIndex
    end

    def jf_lastIndex=(value : Int32) : Int32
        @lastIndex = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoresHelper : Nil
    @circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
    @lastIndex = -1
    end

    def jinit_HighScoresHelper : self
        jinit_HighScoresHelperBase()
        jfields_HighScoresHelper()
        self
    end
    

    def setHighScoresArray(highScoresArrayP : Array(HighScores?)?) : Nil
        super(highScoresArrayP)
        @circularIndexUtil.not_nil!.setSize(@highScoresArrayP.not_nil!.size)
    end
    

    def getNextHighScores : HighScores?
        highScores : HighScores? = @highScoresArrayP.not_nil![@circularIndexUtil.not_nil!.getIndex()]
        index : Int32 = 0
        while (highScores.not_nil!.getTotal() < 1 || @lastIndex == @circularIndexUtil.not_nil!.getIndex()) && index < @highScoresArrayP.not_nil!.size
            @circularIndexUtil.not_nil!.next_()
            highScores = @highScoresArrayP.not_nil![@circularIndexUtil.not_nil!.getIndex()]
            index &+= 1
        end
        @lastIndex = @circularIndexUtil.not_nil!.getIndex()
        return highScores
    end
    

    def isAnyHighScores : Bool
        if @highScoresArrayP.not_nil!.size < 1
            return false
        end
        anyScores : Bool = false
        highScores : HighScores? = nil
        index : Int32 = @highScoresArrayP.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            highScores = @highScoresArrayP.not_nil![index]
            if highScores.not_nil!.getTotal() > 0
                anyScores = true
            end
        end
        return anyScores
    end
end

