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

class GameCanvasRunnable < GameRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton? = nil

    def jf_gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton?
        @gameTickDisplayInfoSingleton
    end

    def jf_gameTickDisplayInfoSingleton=(value : GameTickDisplayInfoSingleton?) : GameTickDisplayInfoSingleton?
        @gameTickDisplayInfoSingleton = value
    end
    @allBinaryGameCanvas : AllBinaryGameCanvas? = nil

    def jf_allBinaryGameCanvas : AllBinaryGameCanvas?
        @allBinaryGameCanvas
    end

    def jf_allBinaryGameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @allBinaryGameCanvas = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameCanvasRunnable : Nil
    @logUtil = LogUtil.getInstance()
    @gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
    
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def jinit_GameCanvasRunnable(allBinaryGameCanvas : AllBinaryGameCanvas?) : self
        jinit_GameRunnable()
        jfields_GameCanvasRunnable()
        @allBinaryGameCanvas = allBinaryGameCanvas
        self
    end
    

    def run : Nil
        begin
            @allBinaryGameCanvas.not_nil!.getLoopTimeHelperP().not_nil!.setStartTime(@gameTickTimeDelayHelper.not_nil!.setStartTime())
            @gameTickDisplayInfoSingleton.not_nil!.update()
            @allBinaryGameCanvas.not_nil!.processGame()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex1
            end
        end
    end
    

    def processLoopSleep : Nil
        @allBinaryGameCanvas.not_nil!.processLoopSleep()
    end
end

