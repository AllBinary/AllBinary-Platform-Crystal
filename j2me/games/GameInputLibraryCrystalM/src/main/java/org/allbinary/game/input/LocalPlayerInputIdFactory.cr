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
# package org.allbinary.game.input

class LocalPlayerInputIdFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_MAX_NUMBER_OF_PLAYERS : Int32 = 0

    def jf_MAX_NUMBER_OF_PLAYERS : Int32
        @j_MAX_NUMBER_OF_PLAYERS
    end

    def jf_MAX_NUMBER_OF_PLAYERS=(value : Int32) : Int32
        @j_MAX_NUMBER_OF_PLAYERS = value
    end
    @j_MAX_FAST_DEVICEID : Int32 = 0

    def jf_MAX_FAST_DEVICEID : Int32
        @j_MAX_FAST_DEVICEID
    end

    def jf_MAX_FAST_DEVICEID=(value : Int32) : Int32
        @j_MAX_FAST_DEVICEID = value
    end
    @deviceIdToplayerId : Array(Int32)? = nil

    def jf_deviceIdToplayerId : Array(Int32)?
        @deviceIdToplayerId
    end

    def jf_deviceIdToplayerId=(value : Array(Int32)?) : Array(Int32)?
        @deviceIdToplayerId = value
    end
    @playerIdToDeviceId : Array(Int32)? = nil

    def jf_playerIdToDeviceId : Array(Int32)?
        @playerIdToDeviceId
    end

    def jf_playerIdToDeviceId=(value : Array(Int32)?) : Array(Int32)?
        @playerIdToDeviceId = value
    end
    @playersInPlay : Array(Bool)? = nil

    def jf_playersInPlay : Array(Bool)?
        @playersInPlay
    end

    def jf_playersInPlay=(value : Array(Bool)?) : Array(Bool)?
        @playersInPlay = value
    end
    @totalDevicesMapped : Int32 = 0

    def jf_totalDevicesMapped : Int32
        @totalDevicesMapped
    end

    def jf_totalDevicesMapped=(value : Int32) : Int32
        @totalDevicesMapped = value
    end

    @@jst_instance : LocalPlayerInputIdFactory? = nil

    def self.jst_instance : LocalPlayerInputIdFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LocalPlayerInputIdFactory?) : LocalPlayerInputIdFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LocalPlayerInputIdFactory.new.jinit_LocalPlayerInputIdFactory()
    end
    

    def self.getInstance : LocalPlayerInputIdFactory?
        return LocalPlayerInputIdFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LocalPlayerInputIdFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_MAX_NUMBER_OF_PLAYERS = 6
    @j_MAX_FAST_DEVICEID = 65
    @deviceIdToplayerId = Array(Int32).new(@j_MAX_FAST_DEVICEID, 0)
    @playerIdToDeviceId = Array(Int32).new(@j_MAX_NUMBER_OF_PLAYERS, 0)
    @playersInPlay = Array(Bool).new(@j_MAX_NUMBER_OF_PLAYERS, false)
    @totalDevicesMapped = 0
    end
    

    def jinit_LocalPlayerInputIdFactory : self
        jfields_LocalPlayerInputIdFactory()
        index : Int32 = @deviceIdToplayerId.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @deviceIdToplayerId.not_nil![index] = -1
        end
        self
    end
    

    def getDeviceId(playerInputId : Int) : Int32
        playerInputId = playerInputId.to_i32!
        return @playerIdToDeviceId.not_nil![playerInputId]
    end
    

    def getPlayerForDevice(deviceId : Int) : Int32
        deviceId = deviceId.to_i32!
        index : Int32 = 0
        if deviceId < @j_MAX_FAST_DEVICEID
            playerInputId : Int32 = @deviceIdToplayerId.not_nil![deviceId]
            if playerInputId != -1
                return playerInputId
            end
        else
            index = @totalDevicesMapped &- 1
            jfor2 = false
            while true
                if jfor2
                    index &-= 1
                end
                jfor2 = true
                break unless index >= 0
                if @playerIdToDeviceId.not_nil![index] == deviceId
                    return index
                end
            end
        end
        index = @totalDevicesMapped
        if deviceId < @j_MAX_FAST_DEVICEID
            @deviceIdToplayerId.not_nil![deviceId] = index
        else
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Added DeviceId: ").not_nil!.appendint(deviceId).not_nil!.append(" beyond fast Id list").not_nil!.toString(), self, "getPlayerForDevice")
        end
        @playerIdToDeviceId.not_nil![index] = deviceId
        AnalogLocationInputFactory.getInstance().not_nil!.addPlayer(@totalDevicesMapped)
        @totalDevicesMapped &+= 1
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Added DeviceId: ").not_nil!.appendint(deviceId).not_nil!.append(" at: ").not_nil!.appendint(index).not_nil!.append(" Total: ").not_nil!.appendint(@totalDevicesMapped).not_nil!.toString(), self, "getPlayerForDevice")
        return index
    end
    

    def getTotalDevicesInPlay : Int32
        total : Int32 = 0
        index : Int32 = @totalDevicesMapped &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            if @playersInPlay.not_nil![index] == true
                total &+= 1
            end
        end
        return total
    end
    

    def isPlayerInPlay(playerInputId : Int) : Bool
        playerInputId = playerInputId.to_i32!
        return @playersInPlay.not_nil![playerInputId]
    end
    

    def setPlayerInPlay(playerInputId : Int) : Nil
        playerInputId = playerInputId.to_i32!
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Setting PlayerInPlay with playerInputId: ").not_nil!.appendint(playerInputId).not_nil!.toString(), self, "setPlayerInPlay")
        @playersInPlay.not_nil![playerInputId] = true
    end
    

    def setPlayerOutOfPlay(playerInputId : Int) : Nil
        playerInputId = playerInputId.to_i32!
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Setting PlayerOutOfPlay with playerInputId: ").not_nil!.appendint(playerInputId).not_nil!.toString(), self, "setPlayerOutOfPlay")
        @playersInPlay.not_nil![playerInputId] = false
    end
    

    def getPlayersInPlay : Array(Bool)?
        return @playersInPlay
    end
end

