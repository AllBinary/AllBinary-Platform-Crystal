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
# package org.allbinary.logic.control.validate

class ValidatorBase < JObject
    include ValidatorBaseInterface

    @@jst_instance : ValidatorBase? = nil

    def self.jst_instance : ValidatorBase?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ValidatorBase?) : ValidatorBase?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ValidatorBase.new.jinit_ValidatorBase()
    end
    

    def self.getInstance : ValidatorBase?
        return ValidatorBase.jst_instance
    end
    

    def jinit_ValidatorBase : self
        self
    end
    

    def isValid : JBoolean?
        return BooleanFactory.getInstance().not_nil!.jf_TRUE
    end
    

    def validationInfo : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def toHashtable : ABHashtable?
        return StdUtil.getInstance().not_nil!.jf_NULL_TABLE
    end
    

    def toList : BasicArrayList?
        return BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    end
end

