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
# package org.allbinary.graphics

class RendererStateFactory < JObject
    @loaded : Bool = false

    def jf_loaded : Bool
        @loaded
    end

    def jf_loaded=(value : Bool) : Bool
        @loaded = value
    end
    @surfaceChanged : Bool = false

    def jf_surfaceChanged : Bool
        @surfaceChanged
    end

    def jf_surfaceChanged=(value : Bool) : Bool
        @surfaceChanged = value
    end

    @@jst_instance : RendererStateFactory? = nil

    def self.jst_instance : RendererStateFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : RendererStateFactory?) : RendererStateFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = RendererStateFactory.new.jinit_RendererStateFactory()
    end
    

    def self.getInstance : RendererStateFactory?
        return RendererStateFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_RendererStateFactory : Nil
    @loaded = false
    @surfaceChanged = false
    end

    def jinit_RendererStateFactory : self
        jfields_RendererStateFactory()
        self
    end
    

    def setLoaded(loaded : Bool) : Nil
        @loaded = loaded
    end
    

    def isLoaded : Bool
        return @loaded
    end
    

    def setSurfaceChanged(initialized : Bool) : Nil
        @surfaceChanged = initialized
    end
    

    def isSurfaceChanged : Bool
        return @surfaceChanged
    end
end

