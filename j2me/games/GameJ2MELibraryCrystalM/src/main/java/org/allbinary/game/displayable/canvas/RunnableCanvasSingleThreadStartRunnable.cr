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

class RunnableCanvasSingleThreadStartRunnable < GameRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @runnableCanvas : RunnableCanvas? = nil

    def jf_runnableCanvas : RunnableCanvas?
        @runnableCanvas
    end

    def jf_runnableCanvas=(value : RunnableCanvas?) : RunnableCanvas?
        @runnableCanvas = value
    end

    # Java field initializers run after the super constructor
    def jfields_RunnableCanvasSingleThreadStartRunnable : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_RunnableCanvasSingleThreadStartRunnable(demoCanvas : RunnableCanvas?) : self
        jinit_GameRunnable()
        jfields_RunnableCanvasSingleThreadStartRunnable()
        @runnableCanvas = demoCanvas
        self
    end
    

    def run : Nil
        begin
            @runnableCanvas.not_nil!.run()
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
        @runnableCanvas.not_nil!.processLoopSleep()
    end
end

