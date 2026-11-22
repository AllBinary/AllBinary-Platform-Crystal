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
# package org.allbinary.game.input

module TestInputInterface
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
    def left(*jargs) : NoReturn
        raise JR.abstractMethod("left")
    end
    def right(*jargs) : NoReturn
        raise JR.abstractMethod("right")
    end
    def strafeLeft(*jargs) : NoReturn
        raise JR.abstractMethod("strafeLeft")
    end
    def strafeRight(*jargs) : NoReturn
        raise JR.abstractMethod("strafeRight")
    end
end

