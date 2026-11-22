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
# package org.allbinary.logic.io.path

class AbPathData < JObject
    @j_EXTENSION_SEP : String = ""

    def jf_EXTENSION_SEP : String
        @j_EXTENSION_SEP
    end

    def jf_EXTENSION_SEP=(value : String) : String
        @j_EXTENSION_SEP = value
    end
    @j_SEPARATORCHAR : UInt16 = 0_u16

    def jf_SEPARATORCHAR : UInt16
        @j_SEPARATORCHAR
    end

    def jf_SEPARATORCHAR=(value : UInt16) : UInt16
        @j_SEPARATORCHAR = value
    end
    @j_SEPARATOR : String = ""

    def jf_SEPARATOR : String
        @j_SEPARATOR
    end

    def jf_SEPARATOR=(value : String) : String
        @j_SEPARATOR = value
    end

    @@jst_instance : AbPathData? = nil

    def self.jst_instance : AbPathData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AbPathData?) : AbPathData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AbPathData.new.jinit_AbPathData()
    end
    

    def self.getInstance : AbPathData?
        return AbPathData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AbPathData : Nil
    @j_EXTENSION_SEP = CommonSeps.getInstance().not_nil!.jf_PERIOD
    @j_SEPARATORCHAR = '/'.ord.to_u16
    @j_SEPARATOR = CommonSeps.getInstance().not_nil!.jf_FORWARD_SLASH
    end
    

    def jinit_AbPathData : self
        jfields_AbPathData()
        self
    end
end

