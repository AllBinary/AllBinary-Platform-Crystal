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
# package org.allbinary.logic.system.security.licensing

class ClientInformation < JObject
    include AbeClientInformationInterface
    @operatingSystemInterface : GenericOperatingSystem? = nil

    def jf_operatingSystemInterface : GenericOperatingSystem?
        @operatingSystemInterface
    end

    def jf_operatingSystemInterface=(value : GenericOperatingSystem?) : GenericOperatingSystem?
        @operatingSystemInterface = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @shortName : String = ""

    def jf_shortName : String
        @shortName
    end

    def jf_shortName=(value : String) : String
        @shortName = value
    end
    @version : String = ""

    def jf_version : String
        @version
    end

    def jf_version=(value : String) : String
        @version = value
    end
    @specialName : String = ""

    def jf_specialName : String
        @specialName
    end

    def jf_specialName=(value : String) : String
        @specialName = value
    end
    @hardSale : Bool = false

    def jf_hardSale : Bool
        @hardSale
    end

    def jf_hardSale=(value : Bool) : Bool
        @hardSale = value
    end
    @licenseId : String = ""

    def jf_licenseId : String
        @licenseId
    end

    def jf_licenseId=(value : String) : String
        @licenseId = value
    end
    @licenseServers : BasicArrayList? = nil

    def jf_licenseServers : BasicArrayList?
        @licenseServers
    end

    def jf_licenseServers=(value : BasicArrayList?) : BasicArrayList?
        @licenseServers = value
    end

    # Java field initializers run after the super constructor
    def jfields_ClientInformation : Nil
    @operatingSystemInterface = NoOperatingSystem.jst_NO_OPERATING_SYSTEM
    @tsUtil = TsUtil.getInstance()
    
    
    
    
    @hardSale = true
    @licenseId = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @licenseServers = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    end
    

    def jinit_ClientInformation(name : String, version : String, specialName : String, shortName : String) : self
        jfields_ClientInformation()
        @name = name
        @version = version
        @specialName = specialName
        @shortName = StringMaker.new.jinit_StringMaker().not_nil!.append(shortName).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_UNDERSCORE).not_nil!.append(version).not_nil!.toString()
        self.init()
        self
    end
    

    def init : Nil
    end
    

    def getOperatingSystemInterface : GenericOperatingSystem?
        return @operatingSystemInterface
    end
    

    def getName : String
        return @name
    end
    

    def getSpecialName : String
        return @specialName
    end
    

    def getVersion : String
        return @version
    end
    

    def getLicenseId : String
        return @licenseId
    end
    

    def getLicenseServers : BasicArrayList?
        return @licenseServers
    end
    

    def getLicenseServer(index : Int) : String
        index = index.to_i32!
        return JR.castString(@licenseServers.not_nil!.jf_objectArray.not_nil![index])
    end
    

    def getNumberOfLicenseServers : Int32
        return @licenseServers.not_nil!.size()
    end
    

    def toHashtable : ABHashtable?
        abeClientInformationData : AbeClientInformationData? = AbeClientInformationData.getInstance()
        genericOperatingSystem : GenericOperatingSystem? = self.getOperatingSystemInterface()
        clientInfoHashtable : ABHashtable? = StdUtil.getInstance().not_nil!.createHashtable()
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_NAME, @name)
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_VERSION, @version)
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_SPECIALNAME, @specialName)
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_LICENSEID, self.getLicenseId())
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_OSNAME, genericOperatingSystem.not_nil!.getName())
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_OSARCH, genericOperatingSystem.not_nil!.getArch())
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_OSVERSION, genericOperatingSystem.not_nil!.getVersion())
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_OS, genericOperatingSystem.not_nil!.toString())
        hardwareInterface : HardwareInterface? = SystemHardwareFactory.getInstance().not_nil!.getInstance(genericOperatingSystem)
        hardwareString : String = hardwareInterface.not_nil!.toString()
        clientInfoHashtable.not_nil!.put(abeClientInformationData.not_nil!.jf_HARDWARE, hardwareString)
        return clientInfoHashtable
    end
    

    def isSameId(alicenseId : String) : Bool
        if @tsUtil.not_nil!.compareTo(self.getLicenseId(), alicenseId) == 0
            return true
        else
            return false
        end
        return false
    end
    

    def isLargerOrDifferentServerList(list : BasicArrayList?) : Bool
        size : Int32 = list.not_nil!.size() &- 1
        currentSize : Int32 = @licenseServers.not_nil!.size() &- 1
        if size > currentSize
            return true
        end
        index : Int32 = size
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            newServerName : String = JR.castString(list.not_nil!.jf_objectArray.not_nil![index])
            index2 : Int32 = currentSize
            jfor2 = false
            while true
                if jfor2
                    index2 &-= 1
                end
                jfor2 = true
                break unless index2 >= 0
                nextOldServerName : String = JR.castString(@licenseServers.not_nil!.jf_objectArray.not_nil![index])
                if @tsUtil.not_nil!.compareTo(newServerName, nextOldServerName) != 0
                    return true
                end
            end
        end
        return false
    end
    

    def setHardSale(hardSale : Bool) : Nil
        @hardSale = hardSale
    end
    

    def isHardSale : Bool
        return @hardSale
    end
    

    def setOperatingSystemInterface(operatingSystemInterface : GenericOperatingSystem?) : Nil
        @operatingSystemInterface = operatingSystemInterface
    end
    

    def setLicenseId(licenseId : String) : Nil
        @licenseId = licenseId
    end
    

    def setLicenseServers(licenseServers : BasicArrayList?) : Nil
        @licenseServers = licenseServers
    end
    

    def toShortString : String
        return @shortName
    end
end

