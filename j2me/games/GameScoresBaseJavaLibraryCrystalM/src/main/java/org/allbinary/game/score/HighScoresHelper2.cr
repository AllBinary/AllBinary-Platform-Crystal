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

class HighScoresHelper2 < HighScoresHelperBase
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @selectedHighScores : HighScores? = nil

    def jf_selectedHighScores : HighScores?
        @selectedHighScores
    end

    def jf_selectedHighScores=(value : HighScores?) : HighScores?
        @selectedHighScores = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoresHelper2 : Nil
    @circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
    @selectedHighScores = NullHighScoresSingletonFactory.getInstance()
    end

    def jinit_HighScoresHelper2 : self
        jinit_HighScoresHelperBase()
        jfields_HighScoresHelper2()
        self
    end
    

    def setSelectedHighScores(selectedHighScores : HighScores?) : Nil
        @selectedHighScores = selectedHighScores
    end
    

    def getSelectedHighScores : HighScores?
        return @selectedHighScores
    end
    

    def setHighScoresArray(highScoresArrayP : Array(HighScores?)?) : Nil
        super(highScoresArrayP)
        @circularIndexUtil.not_nil!.setSize(@highScoresArrayP.not_nil!.size)
        self.selectHighScores()
    end
    

    def selectHighScores : Nil
        if @highScoresArrayP.not_nil!.size == 0
            self.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
            return
        end
        @circularIndexUtil.not_nil!.next_()
        highScores : HighScores? = @highScoresArrayP.not_nil![@circularIndexUtil.not_nil!.getIndex()]
        index : Int32 = 0
        while highScores.not_nil!.getTotal() < 1 && index < @highScoresArrayP.not_nil!.size
            highScores = @highScoresArrayP.not_nil![@circularIndexUtil.not_nil!.next_()]
            index &+= 1
        end
        self.setSelectedHighScores(highScores)
    end
end

