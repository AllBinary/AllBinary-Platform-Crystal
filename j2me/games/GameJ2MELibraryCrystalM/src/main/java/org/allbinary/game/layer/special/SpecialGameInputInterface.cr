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
# package org.allbinary.game.layer.special

module SpecialGameInputInterface
    include JObjectI
    include PaintableInterface
end

module JObjectI
    def up(*jargs) : NoReturn
        raise JR.abstractMethod("up")
    end
    def down(*jargs) : NoReturn
        raise JR.abstractMethod("down")
    end
    def right(*jargs) : NoReturn
        raise JR.abstractMethod("right")
    end
    def left(*jargs) : NoReturn
        raise JR.abstractMethod("left")
    end
    def strafeLeft(*jargs) : NoReturn
        raise JR.abstractMethod("strafeLeft")
    end
    def strafeRight(*jargs) : NoReturn
        raise JR.abstractMethod("strafeRight")
    end
    def fire(*jargs) : NoReturn
        raise JR.abstractMethod("fire")
    end
    def special1(*jargs) : NoReturn
        raise JR.abstractMethod("special1")
    end
    def special2(*jargs) : NoReturn
        raise JR.abstractMethod("special2")
    end
    def special3(*jargs) : NoReturn
        raise JR.abstractMethod("special3")
    end
    def special4(*jargs) : NoReturn
        raise JR.abstractMethod("special4")
    end
    def special5(*jargs) : NoReturn
        raise JR.abstractMethod("special5")
    end
end

