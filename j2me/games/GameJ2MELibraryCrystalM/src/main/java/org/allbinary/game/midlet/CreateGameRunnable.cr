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

class CreateGameRunnable < JObject
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
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end
    @startGameMidletEvent : DemoGameMidletEvent? = nil

    def jf_startGameMidletEvent : DemoGameMidletEvent?
        @startGameMidletEvent
    end

    def jf_startGameMidletEvent=(value : DemoGameMidletEvent?) : DemoGameMidletEvent?
        @startGameMidletEvent = value
    end

    # Java field initializers run after the super constructor
    def jfields_CreateGameRunnable : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    
    end
    

    def jinit_CreateGameRunnable(demoGameMidlet : DemoGameMidlet?, hashtable : ABHashtable?) : self
        jfields_CreateGameRunnable()
        @demoGameMidlet = demoGameMidlet
        @hashtable = hashtable
        @startGameMidletEvent = DemoGameMidletEvent.new.jinit_DemoGameMidletEvent(self, DemoGameMidletStateFactory.getInstance().not_nil!.jf_START_GAME)
        self
    end
    

    def run : Nil
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
            progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
            @demoGameMidlet.not_nil!.commandAction(MyCommandsFactory.getInstance().not_nil!.jf_SET_DISPLAYABLE, progressCanvas)
            @demoGameMidlet.not_nil!.stopGameCanvasRunnableInterface()
            @demoGameMidlet.not_nil!.setGameCanvasRunnableInterface(@demoGameMidlet.not_nil!.createGameCanvasRunnableInterface())
            @demoGameMidlet.not_nil!.getGameCanvasRunnableInterface().not_nil!.setLoadStateHashtable(@hashtable)
            @demoGameMidlet.not_nil!.startGameCanvasRunnableInterface()
            DemoGameMidletEventHandler.getInstance().not_nil!.fireEvent(@startGameMidletEvent)
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

