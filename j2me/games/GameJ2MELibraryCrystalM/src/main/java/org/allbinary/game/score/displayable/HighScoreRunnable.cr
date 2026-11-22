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
# package org.allbinary.game.score.displayable

class HighScoreRunnable < ARunnable
    @highScoresCanvas : HighScoresCanvas? = nil

    def jf_highScoresCanvas : HighScoresCanvas?
        @highScoresCanvas
    end

    def jf_highScoresCanvas=(value : HighScoresCanvas?) : HighScoresCanvas?
        @highScoresCanvas = value
    end
    

    def jinit_HighScoreRunnable(highScoresCanvas : HighScoresCanvas?) : self
        jinit_ARunnable()
        @highScoresCanvas = highScoresCanvas
        self
    end
    

    def run : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        logUtil : LogUtil? = LogUtil.getInstance()
        highScoresCanvas : HighScoresCanvas? = @highScoresCanvas
        begin
            isHTML : Bool = J2MEUtil.isHTML()
            if !isHTML
                while !highScoresCanvas.not_nil!.jf_hasPainted
                end
                highScoresCanvas.not_nil!.jf_hasPainted = false
            end
            stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
            systemWrapper : ABSystemWrapper? = ABSystemWrapper.getInstance()
            currentTimeMillis : Int64 = systemWrapper.not_nil!.currentTimeMillis()
            logUtil.not_nil!.putF(stringMaker.not_nil!.append("HighScoresCanvas - Request repaint to be sure: ").not_nil!.appendlong(currentTimeMillis).not_nil!.toString(), self, commonStrings.not_nil!.jf_RUN)
            highScoresCanvas.not_nil!.jf_repaintBehavior.not_nil!.onChangeRepaint(highScoresCanvas)
            if !isHTML
                while !highScoresCanvas.not_nil!.jf_hasPainted
                end
            end
            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
            logUtil.not_nil!.putF(stringMaker.not_nil!.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").not_nil!.appendlong(currentTimeMillis).not_nil!.toString(), self, commonStrings.not_nil!.jf_RUN)
            highScoresCanvas.not_nil!.executeUpdate()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex1
            end
        end
    end
end

