# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class NullPriorityRunnable < JObject
    include PriorityRunnable

    def jinit_NullPriorityRunnable : self
        self
    end
    

    def getPriority : Int32
        return 0
    end
    

    def isDone : Bool
        return true
    end
    

    def reset : Nil
    end
    

    def run : Nil
    end
end

