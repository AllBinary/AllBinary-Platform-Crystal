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
# package org.allbinary.graphics.form.item

class CustomItemUtil < JObject
    @j_CUSTOM_ITEM_ARRAY : Array(ABCustomItem?)? = nil

    def jf_CUSTOM_ITEM_ARRAY : Array(ABCustomItem?)?
        @j_CUSTOM_ITEM_ARRAY
    end

    def jf_CUSTOM_ITEM_ARRAY=(value : Array(ABCustomItem?)?) : Array(ABCustomItem?)?
        @j_CUSTOM_ITEM_ARRAY = value
    end

    @@jst_instance : CustomItemUtil? = nil

    def self.jst_instance : CustomItemUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CustomItemUtil?) : CustomItemUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CustomItemUtil.new.jinit_CustomItemUtil()
    end
    

    def self.getInstance : CustomItemUtil?
        return CustomItemUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CustomItemUtil : Nil
    @j_CUSTOM_ITEM_ARRAY = Array(ABCustomItem?).new(0, nil)
    end

    def jinit_CustomItemUtil : self
        jfields_CustomItemUtil()
        self
    end
end

