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
# package org.allbinary.game.displayable.canvas

class DemoGameBehavior < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : DemoGameBehavior? = nil

    def self.jst_instance : DemoGameBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DemoGameBehavior?) : DemoGameBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DemoGameBehavior.new.jinit_DemoGameBehavior()
    end
    

    def self.getInstance : DemoGameBehavior?
        return DemoGameBehavior.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DemoGameBehavior : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_DemoGameBehavior : self
        jfields_DemoGameBehavior()
        self
    end
    

    def init : Nil
    end
    

    def pause(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def unPause(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def updateTouch(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def updateScreenButtonPaintable(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.setTouchPaintableP(NullPaintable.getInstance())
    end
    

    def setGameState(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def removeAllGameKeyInputListeners(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def updateEndGameProcessor(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def buildGame(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def run(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF(GameTypeFactory.getInstance().not_nil!.jf_BOT.not_nil!.toString(), self, commonStrings.not_nil!.jf_RUN)
    end
    

    def setHighScore(abeClientInformation : AbeClientInformationInterface?, allBinaryGameCanvas : AllBinaryGameCanvas?, name : String, score : Int, autoSubmit : Bool, isLast : Bool) : Nil
        score = score.to_i64!
    end
end

