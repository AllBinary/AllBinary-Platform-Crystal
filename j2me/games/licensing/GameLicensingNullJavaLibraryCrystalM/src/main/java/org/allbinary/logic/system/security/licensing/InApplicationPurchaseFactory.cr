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

class InApplicationPurchaseFactory < JObject

    @@jst_instance : InApplicationPurchaseFactory? = nil

    def self.jst_instance : InApplicationPurchaseFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : InApplicationPurchaseFactory?) : InApplicationPurchaseFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = InApplicationPurchaseFactory.new.jinit_InApplicationPurchaseFactory()
    end
    

    def self.getInstance : InApplicationPurchaseFactory?
        return InApplicationPurchaseFactory.jst_instance
    end
    

    def jinit_InApplicationPurchaseFactory : self
        self
    end
    

    def init(anyType : JAny, stateObject : JAny) : Nil
    end
    

    def onCreate(anyType : JAny, stateObject : JAny) : Nil
    end
    

    def onStart : Nil
    end
    

    def onResult(requestCode : Int, resultCode : Int, data : JAny) : Nil
        requestCode = requestCode.to_i32!
        resultCode = resultCode.to_i32!
    end
    

    def onSaveState(anyType : JAny) : Nil
    end
    

    def onStop : Nil
    end
    

    def onDestroy : Nil
    end
    

    def purchase(lockableFeature : LockableFeature?) : Nil
    end
    

    def isPurchased(lockableFeature : LockableFeature?) : Bool
        return false
    end
    

    def add(lockableFeature : LockableFeature?) : Nil
    end
    

    def getUserName : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def isEnabled : Bool
        return false
    end
end

