# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

module ABCustomItemInterface
    include JObjectI
end

module JObjectI
    def getMinimumWidth(*jargs) : NoReturn
        raise JR.abstractMethod("getMinimumWidth")
    end
    def getMinimumHeight(*jargs) : NoReturn
        raise JR.abstractMethod("getMinimumHeight")
    end
    def getLabel(*jargs) : NoReturn
        raise JR.abstractMethod("getLabel")
    end
    def paintXY(*jargs) : NoReturn
        raise JR.abstractMethod("paintXY")
    end
    def paintUnselected(*jargs) : NoReturn
        raise JR.abstractMethod("paintUnselected")
    end
end

