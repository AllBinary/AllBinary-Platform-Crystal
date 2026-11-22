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
# package org.allbinary.graphics.displayable.screen

class AboutPaintableFactory < JObject
    @paintableArray : Array(Paintable?)? = nil

    def jf_paintableArray : Array(Paintable?)?
        @paintableArray
    end

    def jf_paintableArray=(value : Array(Paintable?)?) : Array(Paintable?)?
        @paintableArray = value
    end

    @@jst_instance : AboutPaintableFactory? = nil

    def self.jst_instance : AboutPaintableFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AboutPaintableFactory?) : AboutPaintableFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AboutPaintableFactory.new.jinit_AboutPaintableFactory()
    end
    

    def self.getInstance : AboutPaintableFactory?
        return AboutPaintableFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AboutPaintableFactory : Nil
    @paintableArray = [NullPaintable.getInstance()] of Paintable?
    end
    

    def jinit_AboutPaintableFactory : self
        jfields_AboutPaintableFactory()
        j_INFO : Array(String)? = ["Built with the", "AllBinary Platform", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"] of String
        j_DEVELOPERS : Array(String)? = ["Developed By:", "Travis Berthelot"] of String
        @paintableArray = AboutPaintable.getInstance(j_INFO, j_DEVELOPERS).not_nil!.getPaintableArrayInstance()
        self
    end
end

