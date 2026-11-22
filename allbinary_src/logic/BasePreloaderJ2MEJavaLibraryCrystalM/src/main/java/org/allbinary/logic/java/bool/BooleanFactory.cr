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
# package org.allbinary.logic.java.bool

class BooleanFactory < JObject
    @j_TRUE : JBoolean? = nil

    def jf_TRUE : JBoolean?
        @j_TRUE
    end

    def jf_TRUE=(value : JBoolean?) : JBoolean?
        @j_TRUE = value
    end
    @j_FALSE : JBoolean? = nil

    def jf_FALSE : JBoolean?
        @j_FALSE
    end

    def jf_FALSE=(value : JBoolean?) : JBoolean?
        @j_FALSE = value
    end
    @j_TRUE_STRING : String = ""

    def jf_TRUE_STRING : String
        @j_TRUE_STRING
    end

    def jf_TRUE_STRING=(value : String) : String
        @j_TRUE_STRING = value
    end
    @j_FALSE_STRING : String = ""

    def jf_FALSE_STRING : String
        @j_FALSE_STRING
    end

    def jf_FALSE_STRING=(value : String) : String
        @j_FALSE_STRING = value
    end
    @j_YES : String = ""

    def jf_YES : String
        @j_YES
    end

    def jf_YES=(value : String) : String
        @j_YES = value
    end
    @j_NO : String = ""

    def jf_NO : String
        @j_NO
    end

    def jf_NO=(value : String) : String
        @j_NO = value
    end

    @@jst_instance : BooleanFactory? = nil

    def self.jst_instance : BooleanFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BooleanFactory?) : BooleanFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BooleanFactory.new.jinit_BooleanFactory()
    end
    

    def self.getInstance : BooleanFactory?
        return BooleanFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BooleanFactory : Nil
    @j_TRUE = JBoolean.new.jinit_JBoolean(true)
    @j_FALSE = JBoolean.new.jinit_JBoolean(false)
    @j_TRUE_STRING = @j_TRUE.not_nil!.toString()
    @j_FALSE_STRING = @j_FALSE.not_nil!.toString()
    @j_YES = "yes"
    @j_NO = "no"
    end

    def jinit_BooleanFactory : self
        jfields_BooleanFactory()
        self
    end
    

    def toStringb(bool : Bool) : String
        if bool
            return @j_TRUE_STRING
        else
            return @j_FALSE_STRING
        end
        return ""
    end
end

