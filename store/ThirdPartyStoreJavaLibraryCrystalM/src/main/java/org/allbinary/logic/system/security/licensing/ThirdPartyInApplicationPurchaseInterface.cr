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

module ThirdPartyInApplicationPurchaseInterface
    include JObjectI
end

module JObjectI
    def isPurchased(*jargs) : NoReturn
        raise JR.abstractMethod("isPurchased")
    end
    def onCreate(*jargs) : NoReturn
        raise JR.abstractMethod("onCreate")
    end
    def onDestroy(*jargs) : NoReturn
        raise JR.abstractMethod("onDestroy")
    end
    def onStart(*jargs) : NoReturn
        raise JR.abstractMethod("onStart")
    end
    def onActivityResult(*jargs) : NoReturn
        raise JR.abstractMethod("onActivityResult")
    end
    def onSaveInstanceState(*jargs) : NoReturn
        raise JR.abstractMethod("onSaveInstanceState")
    end
    def onStop(*jargs) : NoReturn
        raise JR.abstractMethod("onStop")
    end
    def requestPurchase(*jargs) : NoReturn
        raise JR.abstractMethod("requestPurchase")
    end
    def requestReceipts(*jargs) : NoReturn
        raise JR.abstractMethod("requestReceipts")
    end
    def add(*jargs) : NoReturn
        raise JR.abstractMethod("add")
    end
    def getUserName(*jargs) : NoReturn
        raise JR.abstractMethod("getUserName")
    end
    def isEnabled(*jargs) : NoReturn
        raise JR.abstractMethod("isEnabled")
    end
end

