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
# package org.allbinary.business.init

class LicenseInitInfo < JObject
    @id : String = ""

    def jf_id : String
        @id
    end

    def jf_id=(value : String) : String
        @id = value
    end
    @serverVector : BasicArrayList? = nil

    def jf_serverVector : BasicArrayList?
        @serverVector
    end

    def jf_serverVector=(value : BasicArrayList?) : BasicArrayList?
        @serverVector = value
    end

    # Java field initializers run after the super constructor
    def jfields_LicenseInitInfo : Nil
    @id = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @serverVector = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_LicenseInitInfo : self
        jfields_LicenseInitInfo()
        self
    end
    

    def getLicenseId : String
        return @id
    end
    

    def getServer(index : Int) : String
        index = index.to_i32!
        return JR.castString(@serverVector.not_nil!.jf_objectArray.not_nil![index])
    end
    

    def getNumberOfServers : Int32
        return @serverVector.not_nil!.size()
    end
    

    def setLicenseId(value : String) : Nil
        @id = value
    end
    

    def clearServers : Nil
        @serverVector = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def setServer(value : String, index : Int) : Nil
        index = index.to_i32!
        @serverVector.not_nil!.addAt(index, value)
    end
    

    def addServer(value : String) : Nil
        @serverVector.not_nil!.add(value)
    end
    

    def getServerList : BasicArrayList?
        return @serverVector
    end
    

    def setServerList(servers : BasicArrayList?) : Nil
        if DebugFactory.getInstance() == NoDebug.getInstance()
            @serverVector = servers
        end
    end
end

