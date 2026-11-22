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

class ThirdPartyStoreFactory < JObject

    @@jst_instance : NoThirdPartyStore? = nil

    def self.jst_instance : NoThirdPartyStore?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoThirdPartyStore?) : NoThirdPartyStore?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoThirdPartyStore.new.jinit_NoThirdPartyStore()
    end
    

    def self.getInstance : ThirdPartyStore?
        return ThirdPartyStoreFactory.jst_instance
    end
    

    def jinit_ThirdPartyStoreFactory : self
        self
    end
end

