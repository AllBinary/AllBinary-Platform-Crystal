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

class DownGameKeyEventHandler < DownGameKeyEventHandlerBase
    @playerInputIdFactory : LocalPlayerInputIdFactory? = nil

    def jf_playerInputIdFactory : LocalPlayerInputIdFactory?
        @playerInputIdFactory
    end

    def jf_playerInputIdFactory=(value : LocalPlayerInputIdFactory?) : LocalPlayerInputIdFactory?
        @playerInputIdFactory = value
    end

    @@jst_instance : DownGameKeyEventHandler? = nil

    def self.jst_instance : DownGameKeyEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DownGameKeyEventHandler?) : DownGameKeyEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jst_instanceArray : Array(DownGameKeyEventHandlerBase?)? = nil

    def self.jst_instanceArray : Array(DownGameKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray
    end

    def self.jst_instanceArray=(value : Array(DownGameKeyEventHandlerBase?)?) : Array(DownGameKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DownGameKeyEventHandler.new.jinit_DownGameKeyEventHandler()
        @@jst_instanceArray = [DownGameKeyEventHandlerBase.new.jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase.new.jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase.new.jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase.new.jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase.new.jinit_DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase.new.jinit_DownGameKeyEventHandlerBase()] of DownGameKeyEventHandlerBase?
    end
    

    def self.getInstance : DownGameKeyEventHandler?
        return DownGameKeyEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DownGameKeyEventHandler : Nil
    @playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    end
    

    def getInstanceForDevice(deviceId : Int) : DownGameKeyEventHandlerBase?
        deviceId = deviceId.to_i32!
        playerInputId : Int32 = @playerInputIdFactory.not_nil!.getPlayerForDevice(deviceId)
        return DownGameKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def getInstanceForPlayer(playerInputId : Int) : DownGameKeyEventHandlerBase?
        playerInputId = playerInputId.to_i32!
        return DownGameKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def jinit_DownGameKeyEventHandler : self
        jinit_DownGameKeyEventHandlerBase()
        jfields_DownGameKeyEventHandler()
        self
    end
    

    def removeAllListeners : Nil
        super()
        index : Int32 = DownGameKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            DownGameKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeAllListeners()
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = DownGameKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            DownGameKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = DownGameKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            DownGameKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListener(eventListenerInterface)
        end
    end
end

