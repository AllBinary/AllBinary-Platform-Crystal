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
# package org.allbinary.graphics.font

class MyFontProcessor < JObject

    @@jst_instance : MyFontProcessor? = nil

    def self.jst_instance : MyFontProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MyFontProcessor?) : MyFontProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MyFontProcessor.new.jinit_MyFontProcessor()
    end
    

    def self.defaultCharWidth(font : Font?) : Int32
        return font.not_nil!.charWidth('C'.ord.to_u16)
    end
    

    def self.defaultStringWidth(font : Font?, size : Int) : Int32
        size = size.to_i32!
        return MyFontProcessor.defaultCharWidth(font) * size
    end
    

    def self.getInstance : MyFontProcessor?
        return MyFontProcessor.jst_instance
    end

    def jinit_MyFontProcessor : self
        self
    end
    

    def process(graphics : Graphics?) : Nil
    end
end

