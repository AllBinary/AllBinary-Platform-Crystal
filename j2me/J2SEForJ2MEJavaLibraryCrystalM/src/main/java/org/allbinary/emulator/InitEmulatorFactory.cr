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
# package org.allbinary.emulator

class InitEmulatorFactory < JObject
    @initEmulator : Bool = false

    def jf_initEmulator : Bool
        @initEmulator
    end

    def jf_initEmulator=(value : Bool) : Bool
        @initEmulator = value
    end

    @@jst_instance : InitEmulatorFactory? = nil

    def self.jst_instance : InitEmulatorFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : InitEmulatorFactory?) : InitEmulatorFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = InitEmulatorFactory.new.jinit_InitEmulatorFactory()
    end
    

    def self.getInstance : InitEmulatorFactory?
        return InitEmulatorFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_InitEmulatorFactory : Nil
    @initEmulator = false
    end

    def jinit_InitEmulatorFactory : self
        jfields_InitEmulatorFactory()
        self
    end
    

    def setInitEmulator(initEmulator : Bool) : Nil
        @initEmulator = initEmulator
    end
    

    def isInitEmulator : Bool
        return @initEmulator
    end
end

