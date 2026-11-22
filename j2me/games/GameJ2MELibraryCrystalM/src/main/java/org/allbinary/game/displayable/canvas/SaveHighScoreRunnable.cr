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
# package org.allbinary.game.displayable.canvas

class SaveHighScoreRunnable < JObject
    include JRunnable
    @progressCanvas : ProgressCanvas? = nil

    def jf_progressCanvas : ProgressCanvas?
        @progressCanvas
    end

    def jf_progressCanvas=(value : ProgressCanvas?) : ProgressCanvas?
        @progressCanvas = value
    end
    @isLast : Bool = false

    def jf_isLast : Bool
        @isLast
    end

    def jf_isLast=(value : Bool) : Bool
        @isLast = value
    end
    @textBox : HighScoreTextBox? = nil

    def jf_textBox : HighScoreTextBox?
        @textBox
    end

    def jf_textBox=(value : HighScoreTextBox?) : HighScoreTextBox?
        @textBox = value
    end

    # Java field initializers run after the super constructor
    def jfields_SaveHighScoreRunnable : Nil
    @progressCanvas = ProgressCanvasFactory.getInstance()
    
    
    end
    

    def jinit_SaveHighScoreRunnable(isLast : Bool, textBox : HighScoreTextBox?) : self
        jfields_SaveHighScoreRunnable()
        @isLast = isLast
        @textBox = textBox
        self
    end
    

    def run : Nil
        logUtil : LogUtil? = LogUtil.getInstance()
        begin
            if @isLast
                @textBox.not_nil!.submit()
            else
                @textBox.not_nil!.saveHighScore()
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "run", e)
            @progressCanvas.not_nil!.end_()
            else
                raise jex1
            end
        end
    end
end

