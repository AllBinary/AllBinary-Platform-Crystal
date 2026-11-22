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

class UpKeyEventHandler < UpKeyEventHandlerBase
    @playerInputIdFactory : LocalPlayerInputIdFactory? = nil

    def jf_playerInputIdFactory : LocalPlayerInputIdFactory?
        @playerInputIdFactory
    end

    def jf_playerInputIdFactory=(value : LocalPlayerInputIdFactory?) : LocalPlayerInputIdFactory?
        @playerInputIdFactory = value
    end

    @@jst_instance : UpKeyEventHandler? = nil

    def self.jst_instance : UpKeyEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : UpKeyEventHandler?) : UpKeyEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jst_instanceArray : Array(UpKeyEventHandlerBase?)? = nil

    def self.jst_instanceArray : Array(UpKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray
    end

    def self.jst_instanceArray=(value : Array(UpKeyEventHandlerBase?)?) : Array(UpKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = UpKeyEventHandler.new.jinit_UpKeyEventHandler()
        @@jst_instanceArray = [UpKeyEventHandlerBase.new.jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase.new.jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase.new.jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase.new.jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase.new.jinit_UpKeyEventHandlerBase(), UpKeyEventHandlerBase.new.jinit_UpKeyEventHandlerBase()] of UpKeyEventHandlerBase?
    end
    

    def self.getInstance : UpKeyEventHandler?
        return UpKeyEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_UpKeyEventHandler : Nil
    @playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    end
    

    def getInstanceForDevice(deviceId : Int) : UpKeyEventHandlerBase?
        deviceId = deviceId.to_i32!
        playerInputId : Int32 = @playerInputIdFactory.not_nil!.getPlayerForDevice(deviceId)
        return UpKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def getInstanceForPlayer(playerInputId : Int) : UpKeyEventHandlerBase?
        playerInputId = playerInputId.to_i32!
        return UpKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def jinit_UpKeyEventHandler : self
        jinit_UpKeyEventHandlerBase()
        jfields_UpKeyEventHandler()
        self
    end
    

    def removeAllListeners : Nil
        super()
        index : Int32 = UpKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            UpKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeAllListeners()
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = UpKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            UpKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = UpKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            UpKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListener(eventListenerInterface)
        end
    end
end

