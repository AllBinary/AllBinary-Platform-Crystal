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
# package org.allbinary.logic.system.os

class GenericOperatingSystem < JObject
    include OperatingSystemInterface
    @osName : String = ""

    def jf_osName : String
        @osName
    end

    def jf_osName=(value : String) : String
        @osName = value
    end
    @osArch : String = ""

    def jf_osArch : String
        @osArch
    end

    def jf_osArch=(value : String) : String
        @osArch = value
    end
    @osVersion : String = ""

    def jf_osVersion : String
        @osVersion
    end

    def jf_osVersion=(value : String) : String
        @osVersion = value
    end
    @characterSet : CharacterSet? = nil

    def jf_characterSet : CharacterSet?
        @characterSet
    end

    def jf_characterSet=(value : CharacterSet?) : CharacterSet?
        @characterSet = value
    end
    @scalable : Bool = false

    def jf_scalable : Bool
        @scalable
    end

    def jf_scalable=(value : Bool) : Bool
        @scalable = value
    end

    # Java field initializers run after the super constructor
    def jfields_GenericOperatingSystem : Nil
    
    
    
    @characterSet = CharacterSet.new.jinit_CharacterSet()
    @scalable = false
    end
    

    def jinit_GenericOperatingSystem : self
        jfields_GenericOperatingSystem()
        systemProperties : SystemProperties? = SystemProperties.getInstance()
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        j_EMPTY_STRING : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        if stringValidationUtil.not_nil!.isEmpty(systemProperties.not_nil!.getName())
            @osName = j_EMPTY_STRING
        else
            @osName = systemProperties.not_nil!.getName()
        end
        if stringValidationUtil.not_nil!.isEmpty(systemProperties.not_nil!.getArch())
            @osArch = j_EMPTY_STRING
        else
            @osArch = systemProperties.not_nil!.getArch()
        end
        if stringValidationUtil.not_nil!.isEmpty(systemProperties.not_nil!.getVersion())
            @osVersion = j_EMPTY_STRING
        else
            @osVersion = systemProperties.not_nil!.getVersion()
        end
        self
    end
    

    def getName : String
        return @osName
    end
    

    def getVersion : String
        return @osVersion
    end
    

    def getArch : String
        return @osArch
    end
    

    def getCharacterSet : CharacterSet?
        return @characterSet
    end
    

    def isOverScan : Bool
        return false
    end
    

    def getOverScanXPercent : Int32
        return 100
    end
    

    def getOverScanYPercent : Int32
        return 100
    end
    

    def isScalable : Bool
        return @scalable
    end
    

    def isAutoHide : Bool
        return false
    end
    

    def toString : String
        j_NEW_LINE : String = CommonSeps.getInstance().not_nil!.jf_NEW_LINE
        osBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        osBuffer.not_nil!.append("Operating System Info: \n")
        osBuffer.not_nil!.append(self.getName())
        osBuffer.not_nil!.append(j_NEW_LINE)
        osBuffer.not_nil!.append(self.getArch())
        osBuffer.not_nil!.append(j_NEW_LINE)
        osBuffer.not_nil!.append(self.getVersion())
        osBuffer.not_nil!.append(j_NEW_LINE)
        osBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(self.getCharacterSet()))
        osBuffer.not_nil!.append(j_NEW_LINE)
        return osBuffer.not_nil!.toString()
    end
end

