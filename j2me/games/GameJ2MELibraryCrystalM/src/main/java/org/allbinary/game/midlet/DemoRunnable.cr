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
# package org.allbinary.game.midlet

class DemoRunnable < JObject
    include JRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @demoGameMidlet : DemoGameMidlet? = nil

    def jf_demoGameMidlet : DemoGameMidlet?
        @demoGameMidlet
    end

    def jf_demoGameMidlet=(value : DemoGameMidlet?) : DemoGameMidlet?
        @demoGameMidlet = value
    end
    @startDemoGameMidletEvent : DemoGameMidletEvent? = nil

    def jf_startDemoGameMidletEvent : DemoGameMidletEvent?
        @startDemoGameMidletEvent
    end

    def jf_startDemoGameMidletEvent=(value : DemoGameMidletEvent?) : DemoGameMidletEvent?
        @startDemoGameMidletEvent = value
    end

    # Java field initializers run after the super constructor
    def jfields_DemoRunnable : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    end
    

    def jinit_DemoRunnable(demoGameMidlet : DemoGameMidlet?) : self
        jfields_DemoRunnable()
        @demoGameMidlet = demoGameMidlet
        @startDemoGameMidletEvent = DemoGameMidletEvent.new.jinit_DemoGameMidletEvent(@demoGameMidlet, DemoGameMidletStateFactory.getInstance().not_nil!.jf_START_DEMO)
        self
    end
    

    def run : Nil
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append("GameCanvasRunnableInterface").not_nil!.toString(), self, @commonStrings.not_nil!.jf_RUN)
            @demoGameMidlet.not_nil!.commandAction(MyCommandsFactory.getInstance().not_nil!.jf_SET_DISPLAYABLE, ProgressCanvasFactory.getInstance())
            @demoGameMidlet.not_nil!.setGameCanvasRunnableInterface(@demoGameMidlet.not_nil!.createDemoGameCanvasRunnableInterface())
            @demoGameMidlet.not_nil!.demoSetup()
            DemoGameMidletEventHandler.getInstance().not_nil!.fireEvent(@startDemoGameMidletEvent)
            @demoGameMidlet.not_nil!.startGameCanvasRunnableInterface()
            @demoGameMidlet.not_nil!.postDemoSetup()
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex1
            end
        end
    end
end

