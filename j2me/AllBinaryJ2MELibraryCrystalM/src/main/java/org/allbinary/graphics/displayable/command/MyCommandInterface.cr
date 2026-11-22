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
# package org.allbinary.graphics.displayable.command

module MyCommandInterface
    include JObjectI
end

module JObjectI
    def addCommand(*jargs) : NoReturn
        raise JR.abstractMethod("addCommand")
    end
    def removeAllCommands(*jargs) : NoReturn
        raise JR.abstractMethod("removeAllCommands")
    end
end

