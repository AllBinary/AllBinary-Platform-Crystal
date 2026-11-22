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
# package org.allbinary.logic.io

class NullCloseable < JObject
    include JCloseable

    @@jst_NULL_CLOSEABLE : NullCloseable? = nil

    def self.jst_NULL_CLOSEABLE : NullCloseable?
        jclinit
        @@jst_NULL_CLOSEABLE
    end

    def self.jst_NULL_CLOSEABLE=(value : NullCloseable?) : NullCloseable?
        jclinit
        @@jst_NULL_CLOSEABLE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_CLOSEABLE = NullCloseable.new.jinit_NullCloseable()
    end

    def jinit_NullCloseable : self
        self
    end
    

    def close : Nil
    end
end

