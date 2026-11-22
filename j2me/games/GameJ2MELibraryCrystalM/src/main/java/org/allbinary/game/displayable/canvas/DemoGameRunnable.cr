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

class DemoGameRunnable < GameRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @demoCanvas : DemoCanvas? = nil

    def jf_demoCanvas : DemoCanvas?
        @demoCanvas
    end

    def jf_demoCanvas=(value : DemoCanvas?) : DemoCanvas?
        @demoCanvas = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_DemoGameRunnable : Nil
    @logUtil = LogUtil.getInstance()
    
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def jinit_DemoGameRunnable(demoCanvas : DemoCanvas?) : self
        jinit_GameRunnable()
        jfields_DemoGameRunnable()
        @demoCanvas = demoCanvas
        self
    end
    

    def run : Nil
        begin
            @demoCanvas.not_nil!.getLoopTimeHelperP().not_nil!.setStartTime(@gameTickTimeDelayHelper.not_nil!.setStartTime())
            @demoCanvas.not_nil!.processGame()
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
        @demoCanvas.not_nil!.processLoopSleep()
    end
end

