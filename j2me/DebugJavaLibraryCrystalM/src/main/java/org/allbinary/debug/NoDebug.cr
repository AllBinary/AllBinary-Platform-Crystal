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
# package org.allbinary.debug

class NoDebug < JObject
    include DebugInterface

    @@jst_SINGLETON : DebugInterface? = nil

    def self.jst_SINGLETON : DebugInterface?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : DebugInterface?) : DebugInterface?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NoDebug.new.jinit_NoDebug()
    end
    

    def self.getInstance : DebugInterface?
        return JR.cast(NoDebug.jst_SINGLETON, DebugInterface)
    end

    def jinit_NoDebug : self
        self
    end
    

    def start : Nil
    end
    

    def stop : Nil
    end
    

    def getMaxTime : Int64
        return 10000_i64
    end
    

    def getStartTime : Int64
        return 0_i64
    end
    

    def isRunning : Bool
        return false
    end
end

