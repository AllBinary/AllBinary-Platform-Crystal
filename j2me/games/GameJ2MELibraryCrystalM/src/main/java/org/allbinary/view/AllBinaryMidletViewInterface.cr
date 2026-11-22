# Generated Code Do Not Modify
# package org.allbinary.view

module AllBinaryMidletViewInterface
    include JObjectI
    include MidletCompositeInterface
    include EmulatorViewInterface
    include DemoGameMidletEventListener
    include GameInitializedListenerInterface
end

module JObjectI
    def onResume(*jargs) : NoReturn
        raise JR.abstractMethod("onResume")
    end
    def onPause(*jargs) : NoReturn
        raise JR.abstractMethod("onPause")
    end
    def onDestroy(*jargs) : NoReturn
        raise JR.abstractMethod("onDestroy")
    end
end

