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
# package org.allbinary.game.input.event

class GameKeyEventHandler < JObject
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
    @pressGameKeyEventHandler : PressGameKeyEventHandler? = nil

    def jf_pressGameKeyEventHandler : PressGameKeyEventHandler?
        @pressGameKeyEventHandler
    end

    def jf_pressGameKeyEventHandler=(value : PressGameKeyEventHandler?) : PressGameKeyEventHandler?
        @pressGameKeyEventHandler = value
    end
    @upGameKeyEventHandler : UpGameKeyEventHandler? = nil

    def jf_upGameKeyEventHandler : UpGameKeyEventHandler?
        @upGameKeyEventHandler
    end

    def jf_upGameKeyEventHandler=(value : UpGameKeyEventHandler?) : UpGameKeyEventHandler?
        @upGameKeyEventHandler = value
    end
    @downGameKeyEventHandler : DownGameKeyEventHandler? = nil

    def jf_downGameKeyEventHandler : DownGameKeyEventHandler?
        @downGameKeyEventHandler
    end

    def jf_downGameKeyEventHandler=(value : DownGameKeyEventHandler?) : DownGameKeyEventHandler?
        @downGameKeyEventHandler = value
    end

    @@jst_instance : GameKeyEventHandler? = nil

    def self.jst_instance : GameKeyEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameKeyEventHandler?) : GameKeyEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameKeyEventHandler.new.jinit_GameKeyEventHandler()
    end
    

    def self.getInstance : GameKeyEventHandler?
        return GameKeyEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameKeyEventHandler : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance()
    @upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
    @downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
    end

    def jinit_GameKeyEventHandler : self
        jfields_GameKeyEventHandler()
        self
    end
    

    def removeAllListeners : Nil
        @pressGameKeyEventHandler.not_nil!.removeAllListeners()
        @upGameKeyEventHandler.not_nil!.removeAllListeners()
        @downGameKeyEventHandler.not_nil!.removeAllListeners()
    end
    

    def addListenerForPlayer(eventListenerInterface : EventListenerInterface?, playerInputId : Int) : Nil
        playerInputId = playerInputId.to_i32!
        @logUtil.not_nil!.putF(eventListenerInterface.not_nil!.toString(), self, @commonStrings.not_nil!.jf_ADD_LISTENER)
        @pressGameKeyEventHandler.not_nil!.addListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.not_nil!.getInstanceForPlayer(playerInputId).not_nil!.addListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.not_nil!.getInstanceForPlayer(playerInputId).not_nil!.addListenerSingleThreaded(eventListenerInterface)
    end
    

    def addListener(eventListenerInterface : EventListenerInterface?) : Nil
        @logUtil.not_nil!.putF(eventListenerInterface.not_nil!.toString(), self, @commonStrings.not_nil!.jf_ADD_LISTENER)
        @pressGameKeyEventHandler.not_nil!.addListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.not_nil!.addListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.not_nil!.addListenerSingleThreaded(eventListenerInterface)
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        @logUtil.not_nil!.putF(eventListenerInterface.not_nil!.toString(), self, @commonStrings.not_nil!.jf_REMOVE_LISTENER)
        @pressGameKeyEventHandler.not_nil!.removeListenerSingleThreaded(eventListenerInterface)
        @upGameKeyEventHandler.not_nil!.removeListenerSingleThreaded(eventListenerInterface)
        @downGameKeyEventHandler.not_nil!.removeListenerSingleThreaded(eventListenerInterface)
    end
end

