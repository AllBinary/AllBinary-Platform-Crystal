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

class BaseGameBehavior < DemoGameBehavior

    @@jst_instanceC : BaseGameBehavior? = nil

    def self.jst_instanceC : BaseGameBehavior?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : BaseGameBehavior?) : BaseGameBehavior?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = BaseGameBehavior.new.jinit_BaseGameBehavior()
    end
    

    def self.getInstance : DemoGameBehavior?
        return BaseGameBehavior.jst_instanceC
    end

    def jinit_BaseGameBehavior : self
        jinit_DemoGameBehavior()
        self
    end
    

    def init : Nil
        gameAdState : GameAdState? = GameAdStateFactory.getInstance().not_nil!.getCurrentInstance()
        gameAdState.not_nil!.playingAdState()
    end
    

    def pause(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        features : Features? = Features.getInstance()
        if features.not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL_AS_GAME_THREAD)
            currentDisplayableFactory : CurrentDisplayableFactory? = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.not_nil!.setRunnable(allBinaryGameCanvas.not_nil!.jf_gamePauseRunnable)
        end
    end
    

    def unPause(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        if Features.getInstance().not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL_AS_GAME_THREAD)
            currentDisplayableFactory : CurrentDisplayableFactory? = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.not_nil!.setRunnable(allBinaryGameCanvas.not_nil!.jf_gameRunnable)
            currentDisplayableFactory.not_nil!.setDisplayable(allBinaryGameCanvas)
        end
    end
    

    def updateTouch(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.updateTouch2()
    end
    

    def updateScreenButtonPaintable(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.updateScreenButtonPaintable2()
    end
    

    def setGameState(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.updateGameState()
    end
    

    def removeAllGameKeyInputListeners(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.removeAllGameKeyInputListeners2()
    end
    

    def updateEndGameProcessor(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.updateEndGameProcessor2()
    end
    

    def buildGame(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.buildGame2()
    end
    

    def run(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.run2()
    end
    

    def setHighScore(abeClientInformation : AbeClientInformationInterface?, allBinaryGameCanvas : AllBinaryGameCanvas?, name : String, score : Int, autoSubmit : Bool, isLast : Bool) : Nil
        score = score.to_i64!
        allBinaryGameCanvas.not_nil!.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)
    end
end

