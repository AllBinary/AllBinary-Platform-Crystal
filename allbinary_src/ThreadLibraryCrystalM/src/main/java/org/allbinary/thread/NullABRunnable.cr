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

class NullABRunnable < ABRunnable

    @@jst_instance : NullABRunnable? = nil

    def self.jst_instance : NullABRunnable?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NullABRunnable?) : NullABRunnable?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullABRunnable.new.jinit_NullABRunnable()
    end
    

    def self.getInstance : NullABRunnable?
        return NullABRunnable.jst_instance
    end

    def jinit_NullABRunnable : self
        jinit_ABRunnable()
        self
    end
    

    def isRunning : Bool
        return false
    end
end

