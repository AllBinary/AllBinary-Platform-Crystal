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
# package org.allbinary.image.opengles

class OpenGLImageSpecificFactory < JObject
    @imageFactory : OpenGLImageFactory? = nil

    def jf_imageFactory : OpenGLImageFactory?
        @imageFactory
    end

    def jf_imageFactory=(value : OpenGLImageFactory?) : OpenGLImageFactory?
        @imageFactory = value
    end
    @updating : Bool = false

    def jf_updating : Bool
        @updating
    end

    def jf_updating=(value : Bool) : Bool
        @updating = value
    end

    @@jst_instance : OpenGLImageSpecificFactory? = nil

    def self.jst_instance : OpenGLImageSpecificFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLImageSpecificFactory?) : OpenGLImageSpecificFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLImageSpecificFactory.new.jinit_OpenGLImageSpecificFactory()
    end
    

    def self.getInstance : OpenGLImageSpecificFactory?
        return OpenGLImageSpecificFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLImageSpecificFactory : Nil
    @imageFactory = OpenGLImageFactory.jst_NULL_OPENGL_IMAGE_FACTORY
    @updating = false
    end

    def jinit_OpenGLImageSpecificFactory : self
        jfields_OpenGLImageSpecificFactory()
        self
    end
    

    def setImageFactory(imageFactory : OpenGLImageFactory?) : Nil
        @imageFactory = imageFactory
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append("Selected Image Factory: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(@imageFactory)).not_nil!.toString(), self, "setImageFactory")
    end
    

    def getImageFactory : OpenGLImageFactory?
        return @imageFactory
    end
end

