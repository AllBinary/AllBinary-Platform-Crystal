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

class StoreAppClientInformation < AbeClientInformation
    include LongArrayIdentifierInterface
    @longArrayIdentifier : Array(Int64)? = nil

    def jf_longArrayIdentifier : Array(Int64)?
        @longArrayIdentifier
    end

    def jf_longArrayIdentifier=(value : Array(Int64)?) : Array(Int64)?
        @longArrayIdentifier = value
    end
    

    def jinit_StoreAppClientInformation(name : String, version : String, specialName : String, shortName : String, longArrayIdentifier : Array(Int64)?) : self
        jinit_AbeClientInformation(name, version, specialName, shortName)
        @longArrayIdentifier = longArrayIdentifier
        self
    end
    

    def getLongArrayIdentifier : Array(Int64)?
        return @longArrayIdentifier
    end
end

