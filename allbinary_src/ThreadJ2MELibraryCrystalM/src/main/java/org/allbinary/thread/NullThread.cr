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

class NullThread < JObject

    @@jst_NULL_THREAD : JThread? = nil

    def self.jst_NULL_THREAD : JThread?
        jclinit
        @@jst_NULL_THREAD
    end

    def self.jst_NULL_THREAD=(value : JThread?) : JThread?
        jclinit
        @@jst_NULL_THREAD = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_THREAD = JThread.new.jinit_JThread()
    end

    def jinit_NullThread : self
        self
    end
end

