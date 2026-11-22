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

class ABRunnable < JObject
    include RunnableInterface
    @running : Bool = false

    def jf_running : Bool
        @running
    end

    def jf_running=(value : Bool) : Bool
        @running = value
    end

    # Java field initializers run after the super constructor
    def jfields_ABRunnable : Nil
    @running = false
    end

    def jinit_ABRunnable : self
        jfields_ABRunnable()
        self
    end
    

    def setThread(thread : JThread?) : Nil
    end
    

    def isRunning : Bool
        return @running
    end
    

    def setRunning(running : Bool) : Nil
        @running = running
    end
    

    def run : Nil
    end
    

    def getType : Int32
        return -1
    end
end

