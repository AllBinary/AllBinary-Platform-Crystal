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
# package org.allbinary.logic.math

class ScaleFactorFactory < JObject
    @j_DEFAULT_SCALE_FACTOR : Int32 = 0

    def jf_DEFAULT_SCALE_FACTOR : Int32
        @j_DEFAULT_SCALE_FACTOR
    end

    def jf_DEFAULT_SCALE_FACTOR=(value : Int32) : Int32
        @j_DEFAULT_SCALE_FACTOR = value
    end
    @j_DEFAULT_SCALE_VALUE : Int32 = 0

    def jf_DEFAULT_SCALE_VALUE : Int32
        @j_DEFAULT_SCALE_VALUE
    end

    def jf_DEFAULT_SCALE_VALUE=(value : Int32) : Int32
        @j_DEFAULT_SCALE_VALUE = value
    end

    @@jst_instance : ScaleFactorFactory? = nil

    def self.jst_instance : ScaleFactorFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ScaleFactorFactory?) : ScaleFactorFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ScaleFactorFactory.new.jinit_ScaleFactorFactory()
    end
    

    def self.getInstance : ScaleFactorFactory?
        return ScaleFactorFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ScaleFactorFactory : Nil
    @j_DEFAULT_SCALE_FACTOR = 10
    @j_DEFAULT_SCALE_VALUE = 1024
    end

    def jinit_ScaleFactorFactory : self
        jfields_ScaleFactorFactory()
        self
    end
end

