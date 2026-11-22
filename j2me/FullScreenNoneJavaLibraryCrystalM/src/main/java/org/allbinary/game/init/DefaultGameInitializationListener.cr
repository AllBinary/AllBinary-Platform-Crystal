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
# package org.allbinary.game.init

class DefaultGameInitializationListener < JObject
    include GameInitializedListenerInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @swtJOGLProcessor : SWTJOGLProcessor? = nil

    def jf_swtJOGLProcessor : SWTJOGLProcessor?
        @swtJOGLProcessor
    end

    def jf_swtJOGLProcessor=(value : SWTJOGLProcessor?) : SWTJOGLProcessor?
        @swtJOGLProcessor = value
    end
    @firstTime : Bool = false

    def jf_firstTime : Bool
        @firstTime
    end

    def jf_firstTime=(value : Bool) : Bool
        @firstTime = value
    end

    # Java field initializers run after the super constructor
    def jfields_DefaultGameInitializationListener : Nil
    @logUtil = LogUtil.getInstance()
    @swtJOGLProcessor = SWTJOGLProcessor.getInstance()
    @firstTime = true
    end
    

    def jinit_DefaultGameInitializationListener : self
        jfields_DefaultGameInitializationListener()
        gameInitializedEventHandler : GameInitializedEventHandler? = GameInitializedEventHandler.getInstance()
        gameInitializedEventHandler.not_nil!.removeAllListeners()
        gameInitializedEventHandler.not_nil!.addListenerInterface(JR.cast(self, GameInitializedListenerInterface))
        self
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onGameInitialized(gameInitializedEvent : GameInitializedEvent?) : Nil
        j_ON_GAME_INITIALIZED : String = "onGameInitialized"
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        begin
            @logUtil.not_nil!.putF(commonStrings.not_nil!.jf_START, self, j_ON_GAME_INITIALIZED)
            while !@swtJOGLProcessor.not_nil!.isHolderCreated()
                @logUtil.not_nil!.putF(commonStrings.not_nil!.jf_UPDATE, self, j_ON_GAME_INITIALIZED)
                JThread.sleep_j(20)
            end
            FeatureResourceInitializationUtil.getInstance().not_nil!.init(gameInitializedEvent.not_nil!.getLevel())
            if @firstTime
                @firstTime = false
            else
                @swtJOGLProcessor.not_nil!.onSurfaceChanged()
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, j_ON_GAME_INITIALIZED, e)
            else
                raise jex1
            end
        end
    end
end

