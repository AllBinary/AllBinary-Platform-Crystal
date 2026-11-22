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
# package org.allbinary.thirdparty.store

class ThirdPartyStore < JObject
    @authorized : Bool = false

    def jf_authorized : Bool
        @authorized
    end

    def jf_authorized=(value : Bool) : Bool
        @authorized = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    

    def jinit_ThirdPartyStore(name : String) : self
        @name = name
        self
    end
    

    def authorize(clientInformationInterface : AbeClientInformationInterface?) : Nil
    end
    

    def isAuthorized : Bool
        return @authorized
    end
    

    def setAuthorized(authorized : Bool) : Nil
        @authorized = authorized
    end
    

    def getName : String
        return @name
    end
end

