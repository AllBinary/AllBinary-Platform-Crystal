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

class UpGameKeyEventHandler < UpGameKeyEventHandlerBase
    @playerInputIdFactory : LocalPlayerInputIdFactory? = nil

    def jf_playerInputIdFactory : LocalPlayerInputIdFactory?
        @playerInputIdFactory
    end

    def jf_playerInputIdFactory=(value : LocalPlayerInputIdFactory?) : LocalPlayerInputIdFactory?
        @playerInputIdFactory = value
    end

    @@jst_instance : UpGameKeyEventHandler? = nil

    def self.jst_instance : UpGameKeyEventHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : UpGameKeyEventHandler?) : UpGameKeyEventHandler?
        jclinit
        @@jst_instance = value
    end

    @@jst_instanceArray : Array(UpGameKeyEventHandlerBase?)? = nil

    def self.jst_instanceArray : Array(UpGameKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray
    end

    def self.jst_instanceArray=(value : Array(UpGameKeyEventHandlerBase?)?) : Array(UpGameKeyEventHandlerBase?)?
        jclinit
        @@jst_instanceArray = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = UpGameKeyEventHandler.new.jinit_UpGameKeyEventHandler()
        @@jst_instanceArray = [UpGameKeyEventHandlerBase.new.jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase.new.jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase.new.jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase.new.jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase.new.jinit_UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase.new.jinit_UpGameKeyEventHandlerBase()] of UpGameKeyEventHandlerBase?
    end
    

    def self.getInstance : UpGameKeyEventHandler?
        return UpGameKeyEventHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_UpGameKeyEventHandler : Nil
    @playerInputIdFactory = LocalPlayerInputIdFactory.getInstance()
    end
    

    def getInstanceForDevice(deviceId : Int) : UpGameKeyEventHandlerBase?
        deviceId = deviceId.to_i32!
        playerInputId : Int32 = @playerInputIdFactory.not_nil!.getPlayerForDevice(deviceId)
        return UpGameKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def getInstanceForPlayer(playerInputId : Int) : UpGameKeyEventHandlerBase?
        playerInputId = playerInputId.to_i32!
        return UpGameKeyEventHandler.jst_instanceArray.not_nil![playerInputId]
    end
    

    def jinit_UpGameKeyEventHandler : self
        jinit_UpGameKeyEventHandlerBase()
        jfields_UpGameKeyEventHandler()
        self
    end
    

    def removeAllListeners : Nil
        super()
        index : Int32 = UpGameKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            UpGameKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeAllListeners()
        end
    end
    

    def removeListenerSingleThreaded(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = UpGameKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            UpGameKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListenerSingleThreaded(eventListenerInterface)
        end
    end
    

    def removeListener(eventListenerInterface : EventListenerInterface?) : Nil
        super(eventListenerInterface)
        index : Int32 = UpGameKeyEventHandler.jst_instanceArray.not_nil!.size &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            UpGameKeyEventHandler.jst_instanceArray.not_nil![index].not_nil!.removeListener(eventListenerInterface)
        end
    end
end

