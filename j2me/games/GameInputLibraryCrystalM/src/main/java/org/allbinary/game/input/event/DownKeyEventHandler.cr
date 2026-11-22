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

class DownKeyEventHandler < DownKeyEventHandlerBase
    @playerInputIdFactory : LocalPlayerInputIdFactory? = nil

    def jf_playerInputIdFactory : LocalPlayerInputIdFactory?
        @playerInputIdFactory
    end

    def jf_playerInputIdFactory=(value : LocalPlayerInputIdFactory?) : LocalPlayerInputIdFactory?
        @playerInputIdFactory = value
    end

    @@jst_instance : DownKeyEventHandler? = nil

    def self.jst_instance : DownKeyEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DownKeyEventHandler?) : DownKeyEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jst_instanceArray : Array(DownKeyEventHandlerBase?)? = nil

    def self.jst_instanceArray : Array(DownKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray
    end

    def self.jst_instanceArray=(value : Array(DownKeyEventHandlerBase?)?) : Array(DownKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DownKeyEventHandler.new.jinit_DownKeyEventHandler()
        @@jst_instanceArray = [DownKeyEventHandlerBase.new.jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase.new.jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase.new.jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase.new.jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase.new.jinit_DownKeyEventHandlerBase(), DownKeyEventHandlerBase.new.jinit_DownKeyEventHandlerBase()] of DownKeyEventHandlerBase?
    end
    

    def self.getInstance : DownKeyEventHandler?
        return DownKeyEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DownKeyEventHandler : Nil
    @playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    end
    

    def getInstanceForDevice(deviceId : Int) : DownKeyEventHandlerBase?
        deviceId = deviceId.to_i32!
        playerInputId : Int32 = @playerInputIdFactory.not_nil!.getPlayerForDevice(deviceId)
        return DownKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def getInstanceForPlayer(playerInputId : Int) : DownKeyEventHandlerBase?
        playerInputId = playerInputId.to_i32!
        return DownKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def jinit_DownKeyEventHandler : self
        jinit_DownKeyEventHandlerBase()
        jfields_DownKeyEventHandler()
        self
    end
    

    def removeAllListeners : Nil
        super()
        index : Int32 = DownKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            DownKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeAllListeners()
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = DownKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            DownKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = DownKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            DownKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListener(eventListenerInterface)
        end
    end
end

