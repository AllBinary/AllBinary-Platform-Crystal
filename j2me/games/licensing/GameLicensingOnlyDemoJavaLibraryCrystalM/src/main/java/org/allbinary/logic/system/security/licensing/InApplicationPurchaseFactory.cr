# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
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

