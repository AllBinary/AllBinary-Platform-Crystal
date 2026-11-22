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
# package org.allbinary.device

class OpenGLESGraphicsCompositeFactory < JObject
    @openGLESGraphicsFactory : OpenGLESGraphicsFactory? = nil

    def jf_openGLESGraphicsFactory : OpenGLESGraphicsFactory?
        @openGLESGraphicsFactory
    end

    def jf_openGLESGraphicsFactory=(value : OpenGLESGraphicsFactory?) : OpenGLESGraphicsFactory?
        @openGLESGraphicsFactory = value
    end

    @@jst_instance : OpenGLESGraphicsCompositeFactory? = nil

    def self.jst_instance : OpenGLESGraphicsCompositeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLESGraphicsCompositeFactory?) : OpenGLESGraphicsCompositeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLESGraphicsCompositeFactory.new.jinit_OpenGLESGraphicsCompositeFactory()
    end
    

    def self.getInstance : OpenGLESGraphicsCompositeFactory?
        return OpenGLESGraphicsCompositeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLESGraphicsCompositeFactory : Nil
    @openGLESGraphicsFactory = OpenGLESGraphicsFactory.new.jinit_OpenGLESGraphicsFactory()
    end

    def jinit_OpenGLESGraphicsCompositeFactory : self
        jfields_OpenGLESGraphicsCompositeFactory()
        self
    end
    

    def set(openGLESGraphicsFactory : OpenGLESGraphicsFactory?) : Nil
        @openGLESGraphicsFactory = openGLESGraphicsFactory
    end
    

    def get : OpenGLESGraphicsFactory?
        return @openGLESGraphicsFactory
    end
end

