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
# package org.allbinary.device

class NullGL10 < JObject
    include GL10

    @@jst_NULL_GL10 : NullGL10? = nil

    def self.jst_NULL_GL10 : NullGL10?
        jclinit
        @@jst_NULL_GL10
    end

    def self.jst_NULL_GL10=(value : NullGL10?) : NullGL10?
        jclinit
        @@jst_NULL_GL10 = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_GL10 = NullGL10.new.jinit_NullGL10()
    end

    def jinit_NullGL10 : self
        self
    end
end

