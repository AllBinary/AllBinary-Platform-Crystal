# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

class PropertyInitUtil < JObject

    @@jst_instance : PropertyInitUtil? = nil

    def self.jst_instance : PropertyInitUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PropertyInitUtil?) : PropertyInitUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PropertyInitUtil.new.jinit_PropertyInitUtil()
    end
    

    def self.getInstance(value : Int) : PropertyInitUtil?
        value = value.to_i32!
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        logUtil : LogUtil? = LogUtil.getInstance()
        logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("PropertyInitUtil: ").not_nil!.appendint(value).not_nil!.toString(), logUtil, commonStrings.not_nil!.jf_CONSTRUCTOR)
        return PropertyInitUtil.jst_instance
    end

    def jinit_PropertyInitUtil : self
        self
    end
end

