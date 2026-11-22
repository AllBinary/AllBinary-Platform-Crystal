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

class ThirdPartyInApplicationPurchase < JObject
    include ThirdPartyInApplicationPurchaseInterface

    def jinit_ThirdPartyInApplicationPurchase : self
        self
    end
    

    def isPurchased(lockableFeature : LockableFeature?) : Bool
        return false
    end
    

    def onCreate(anyType : JAny, stateObject : JAny) : Nil
    end
    

    def onDestroy : Nil
    end
    

    def onStart : Nil
    end
    

    def onActivityResult(requestCode : Int, resultCode : Int, dataObject : JAny) : Nil
        requestCode = requestCode.to_i32!
        resultCode = resultCode.to_i32!
    end
    

    def onSaveInstanceState(anyType : JAny) : Nil
    end
    

    def onStop : Nil
    end
    

    def requestPurchase(lockableFeature : LockableFeature?) : Nil
    end
    

    def requestReceipts : Nil
    end
    

    def add(lockableFeature : LockableFeature?) : Nil
    end
    

    def getUserName : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def isEnabled : Bool
        return false
    end
    

    def requestProducts : Nil
    end
end

