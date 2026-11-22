# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

class ABSystemWrapper < JObject

    @@jst_instance : ABSystemWrapper? = nil

    def self.jst_instance : ABSystemWrapper?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ABSystemWrapper?) : ABSystemWrapper?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ABSystemWrapper.new.jinit_ABSystemWrapper()
    end
    

    def self.getInstance : ABSystemWrapper?
        return ABSystemWrapper.jst_instance
    end

    def jinit_ABSystemWrapper : self
        self
    end
    

    def arraycopy(src : JAny, srcPos : Int, dest : JAny, destPos : Int, length : Int) : Nil
        srcPos = srcPos.to_i32!
        destPos = destPos.to_i32!
        length = length.to_i32!
        JSystem.arraycopy(src, srcPos, dest, destPos, length)
    end
    

    def currentTimeMillis : Int64
        return JSystem.currentTimeMillis()
    end
end

