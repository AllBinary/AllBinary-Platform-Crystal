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
# package org.allbinary.platform.opengles

class PlatformTextureBaseFactory < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    @@jst_NULL_PLATFORM_TEXTURE_BASE_FACTORY : PlatformTextureBaseFactory? = nil

    def self.jst_NULL_PLATFORM_TEXTURE_BASE_FACTORY : PlatformTextureBaseFactory?
        jclinit
        @@jst_NULL_PLATFORM_TEXTURE_BASE_FACTORY
    end

    def self.jst_NULL_PLATFORM_TEXTURE_BASE_FACTORY=(value : PlatformTextureBaseFactory?) : PlatformTextureBaseFactory?
        jclinit
        @@jst_NULL_PLATFORM_TEXTURE_BASE_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_PLATFORM_TEXTURE_BASE_FACTORY = PlatformTextureBaseFactory.new.jinit_PlatformTextureBaseFactory()
    end

    # Java field initializers run after the super constructor
    def jfields_PlatformTextureBaseFactory : Nil
    @commonStrings = CommonStrings.getInstance()
    end

    def jinit_PlatformTextureBaseFactory : self
        jfields_PlatformTextureBaseFactory()
        self
    end
    

    def load(gl : GL10?, target : Int, level : Int, image : Image?, border : Int, flip : Bool) : Nil
        target = target.to_i32!
        level = level.to_i32!
        border = border.to_i32!
    end
end

