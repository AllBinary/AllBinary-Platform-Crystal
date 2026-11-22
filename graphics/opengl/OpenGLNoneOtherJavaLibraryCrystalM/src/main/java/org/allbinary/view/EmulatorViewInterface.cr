# Generated Code Do Not Modify
# package org.allbinary.view

module EmulatorViewInterface
    include JObjectI
end

module JObjectI
    def setMidlet(*jargs) : NoReturn
        raise JR.abstractMethod("setMidlet")
    end
    def onEmulatorInitComplete(*jargs) : NoReturn
        raise JR.abstractMethod("onEmulatorInitComplete")
    end
    def onSetDisplayable(*jargs) : NoReturn
        raise JR.abstractMethod("onSetDisplayable")
    end
end

