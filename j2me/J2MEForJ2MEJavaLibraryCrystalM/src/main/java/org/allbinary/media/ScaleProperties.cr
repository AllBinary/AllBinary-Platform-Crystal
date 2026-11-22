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
# package org.allbinary.media

class ScaleProperties < JObject
    @scaleX : Float32 = 0_f32

    def jf_scaleX : Float32
        @scaleX
    end

    def jf_scaleX=(value : Float32) : Float32
        @scaleX = value
    end
    @scaleY : Float32 = 0_f32

    def jf_scaleY : Float32
        @scaleY
    end

    def jf_scaleY=(value : Float32) : Float32
        @scaleY = value
    end
    @scaleWidth : Int32 = 0

    def jf_scaleWidth : Int32
        @scaleWidth
    end

    def jf_scaleWidth=(value : Int32) : Int32
        @scaleWidth = value
    end
    @scaleHeight : Int32 = 0

    def jf_scaleHeight : Int32
        @scaleHeight
    end

    def jf_scaleHeight=(value : Int32) : Int32
        @scaleHeight = value
    end
    @shouldScale : Bool = false

    def jf_shouldScale : Bool
        @shouldScale
    end

    def jf_shouldScale=(value : Bool) : Bool
        @shouldScale = value
    end

    @@jst_instance : ScaleProperties? = nil

    def self.jst_instance : ScaleProperties?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ScaleProperties?) : ScaleProperties?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ScaleProperties.new.jinit_ScaleProperties()
    end

    # Java field initializers run after the super constructor
    def jfields_ScaleProperties : Nil
    @scaleX = 1.0_f32
    @scaleY = 1.0_f32
    
    
    
    end

    def jinit_ScaleProperties : self
        jfields_ScaleProperties()
        self
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_COLON_SEP).not_nil!.appendboolean(@shouldScale).not_nil!.append("scaleX: ").not_nil!.appendfloat(@scaleX).not_nil!.append("scaleY: ").not_nil!.appendfloat(@scaleY).not_nil!.append("scaleWidth: ").not_nil!.appendint(@scaleWidth).not_nil!.append("scaleHeight: ").not_nil!.appendint(@scaleHeight).not_nil!.toString()
    end
end

