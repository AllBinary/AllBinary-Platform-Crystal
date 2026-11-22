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
# package org.allbinary.thread

module RunnableInterface
    include JObjectI
    include JRunnable
end

module JObjectI
    def isRunning(*jargs) : NoReturn
        raise JR.abstractMethod("isRunning")
    end
    def setRunning(*jargs) : NoReturn
        raise JR.abstractMethod("setRunning")
    end
    def setThread(*jargs) : NoReturn
        raise JR.abstractMethod("setThread")
    end
end

