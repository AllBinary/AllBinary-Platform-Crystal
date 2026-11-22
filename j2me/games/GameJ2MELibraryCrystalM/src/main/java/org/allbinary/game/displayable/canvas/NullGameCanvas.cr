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

class NullGameCanvas < AllBinaryGameCanvas
    @runningNull : Bool = false

    def jf_runningNull : Bool
        @runningNull
    end

    def jf_runningNull=(value : Bool) : Bool
        @runningNull = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    def self.jst_NO_GAME : String
        "No Background Game"
    end

    def self.jst_TYPE : Int32
        1
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
        
        
    end
    

    def self.createNull : NullGameCanvas?
        begin
            return NullGameCanvas.new.jinit_NullGameCanvas(AllBinaryGameLayerManager.getNullInstance())
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            LogUtil.getInstance().not_nil!.put(CommonStrings.getInstance().not_nil!.jf_EXCEPTION, "NullGameCanvas", CommonStrings.getInstance().not_nil!.jf_GET_INSTANCE, e)
            raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
            else
                raise jex1
            end
        end
        return nil
    end
    

    def self.getInstance : NullGameCanvas?
        if NullGameCanvas.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            NullGameCanvas.jst_instance = NullGameCanvas.createNull()
        end
        return JR.cast(NullGameCanvas.jst_instance, NullGameCanvas)
    end
    

    def self.createCanvas(gameLayerManager : AllBinaryGameLayerManager?) : NullGameCanvas?
        nullGameCanvas : NullGameCanvas? = NullGameCanvas.new.jinit_NullGameCanvas(gameLayerManager)
        nullGameCanvas.not_nil!.setInitialized(true)
        nullGameCanvas.not_nil!.setTitle(NullGameCanvas.jst_NO_GAME)
        return nullGameCanvas
    end

    # Java field initializers run after the super constructor
    def jfields_NullGameCanvas : Nil
    @runningNull = true
    end
    

    def jinit_NullGameCanvas(gameLayerManager : AllBinaryGameLayerManager?) : self
        jinit_AllBinaryGameCanvas(NullCommandListener.jst_NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false)
        jfields_NullGameCanvas()
        setWait(1200)
        self
    end
    

    def isGameOver : Bool
        return false
    end
    

    def setRunning(running : Bool) : Nil
        @runningNull = running
    end
    

    def isRunning : Bool
        return @runningNull
    end
    

    def pause : Nil
        self.setPaused(true)
    end
    

    def unPause : Nil
        self.setPaused(false)
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        self.setCommandListener(cmdListener)
    end
    

    def buildGameInit(isProgress : Bool) : Nil
    end
    

    def draw(graphics : Graphics?) : Nil
    end
    

    def run : Nil
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex2
            end
        end
    end
    

    def getType : Int32
        return NullGameCanvas.jst_TYPE
    end
end

