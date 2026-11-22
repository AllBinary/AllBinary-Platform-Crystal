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
# package org.allbinary.graphics

class ItemColorFactory < JObject
    @j_INVERT_PAINT : Int32 = 0

    def jf_INVERT_PAINT : Int32
        @j_INVERT_PAINT
    end

    def jf_INVERT_PAINT=(value : Int32) : Int32
        @j_INVERT_PAINT = value
    end
    @j_PAINT : Int32 = 0

    def jf_PAINT : Int32
        @j_PAINT
    end

    def jf_PAINT=(value : Int32) : Int32
        @j_PAINT = value
    end
    @j_TEXT_FIELD_NO_FOCUS : Int32 = 0

    def jf_TEXT_FIELD_NO_FOCUS : Int32
        @j_TEXT_FIELD_NO_FOCUS
    end

    def jf_TEXT_FIELD_NO_FOCUS=(value : Int32) : Int32
        @j_TEXT_FIELD_NO_FOCUS = value
    end

    @@jst_instance : ItemColorFactory? = nil

    def self.jst_instance : ItemColorFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ItemColorFactory?) : ItemColorFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ItemColorFactory.new.jinit_ItemColorFactory()
    end
    

    def self.getInstance : ItemColorFactory?
        return ItemColorFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ItemColorFactory : Nil
    @j_INVERT_PAINT = 0xFF000000_u32.to_i32!
    @j_PAINT = 0xFFe07718_u32.to_i32!
    @j_TEXT_FIELD_NO_FOCUS = 0x7F7F7F
    end

    def jinit_ItemColorFactory : self
        jfields_ItemColorFactory()
        self
    end
end

