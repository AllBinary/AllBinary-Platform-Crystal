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
# package org.allbinary.logic.io.path

class AbPathUtil < JObject
    @j_NO_ABPATH : AbPath? = nil

    def jf_NO_ABPATH : AbPath?
        @j_NO_ABPATH
    end

    def jf_NO_ABPATH=(value : AbPath?) : AbPath?
        @j_NO_ABPATH = value
    end

    @@jst_instance : AbPathUtil? = nil

    def self.jst_instance : AbPathUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AbPathUtil?) : AbPathUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AbPathUtil.new.jinit_AbPathUtil()
    end
    

    def self.getInstance : AbPathUtil?
        return AbPathUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AbPathUtil : Nil
    @j_NO_ABPATH = AbPath.createAbPath()
    end

    def jinit_AbPathUtil : self
        jfields_AbPathUtil()
        self
    end
end

