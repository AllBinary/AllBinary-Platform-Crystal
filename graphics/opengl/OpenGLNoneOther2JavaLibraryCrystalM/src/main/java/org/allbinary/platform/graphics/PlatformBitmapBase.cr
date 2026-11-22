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
# package org.allbinary.platform.graphics

class PlatformBitmapBase < JObject
    @alpha : Int32 = 0

    def jf_alpha : Int32
        @alpha
    end

    def jf_alpha=(value : Int32) : Int32
        @alpha = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end

    @@jst_NULL_PLATFORM_BITMAP_BASE : PlatformBitmapBase? = nil

    def self.jst_NULL_PLATFORM_BITMAP_BASE : PlatformBitmapBase?
        jclinit
        @@jst_NULL_PLATFORM_BITMAP_BASE
    end

    def self.jst_NULL_PLATFORM_BITMAP_BASE=(value : PlatformBitmapBase?) : PlatformBitmapBase?
        jclinit
        @@jst_NULL_PLATFORM_BITMAP_BASE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_PLATFORM_BITMAP_BASE = PlatformBitmapBase.new.jinit_PlatformBitmapBase()
    end

    # Java field initializers run after the super constructor
    def jfields_PlatformBitmapBase : Nil
    @alpha = 255
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_NULL_COLOR
    end

    def jinit_PlatformBitmapBase : self
        jfields_PlatformBitmapBase()
        self
    end
    

    def getWidth : Int32
        return 0
    end
    

    def getHeight : Int32
        return 0
    end
    

    def getImage : Image?
        return NullImage.jst_NULL_IMAGE
    end
end

