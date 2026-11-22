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
    @serverList : BasicArrayList? = nil

    def jf_serverList : BasicArrayList?
        @serverList
    end

    def jf_serverList=(value : BasicArrayList?) : BasicArrayList?
        @serverList = value
    end

    # Java field initializers run after the super constructor
    def jfields_LicenseInitInfo : Nil
    @id = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @serverList = BasicArrayListD.new.jinit_BasicArrayListD()
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
        return JR.castString(@serverList.not_nil!.get(index))
    end
    

    def getNumberOfServers : Int32
        return @serverList.not_nil!.size()
    end
    

    def setLicenseId(value : String) : Nil
        @id = value
    end
    

    def clearServers : Nil
        @serverList.not_nil!.clear()
    end
    

    def setServer(value : String, index : Int) : Nil
        index = index.to_i32!
        @serverList.not_nil!.addAt(index, value)
    end
    

    def addServer(value : String) : Nil
        @serverList.not_nil!.add(value)
    end
    

    def getServerList : BasicArrayList?
        return @serverList
    end
    

    def setServerList(servers : BasicArrayList?) : Nil
        if DebugFactory.getInstance() == NoDebug.getInstance()
            @serverList = servers
        end
    end
end

