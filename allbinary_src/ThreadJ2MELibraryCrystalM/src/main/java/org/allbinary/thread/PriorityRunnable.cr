# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

module PriorityRunnable
    include JObjectI
    include JRunnable
end

module JObjectI
    def getPriority(*jargs) : NoReturn
        raise JR.abstractMethod("getPriority")
    end
    def isDone(*jargs) : NoReturn
        raise JR.abstractMethod("isDone")
    end
    def reset(*jargs) : NoReturn
        raise JR.abstractMethod("reset")
    end
end

