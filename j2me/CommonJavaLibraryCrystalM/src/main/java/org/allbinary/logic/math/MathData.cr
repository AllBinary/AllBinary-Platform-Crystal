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

class MathData < JObject
    @j_EQUALS : String = ""

    def jf_EQUALS : String
        @j_EQUALS
    end

    def jf_EQUALS=(value : String) : String
        @j_EQUALS = value
    end
    @j_PLUS : String = ""

    def jf_PLUS : String
        @j_PLUS
    end

    def jf_PLUS=(value : String) : String
        @j_PLUS = value
    end
    @j_GREATER_THAN : String = ""

    def jf_GREATER_THAN : String
        @j_GREATER_THAN
    end

    def jf_GREATER_THAN=(value : String) : String
        @j_GREATER_THAN = value
    end
    @j_MINUS : String = ""

    def jf_MINUS : String
        @j_MINUS
    end

    def jf_MINUS=(value : String) : String
        @j_MINUS = value
    end
    @j_DIVIDE : String = ""

    def jf_DIVIDE : String
        @j_DIVIDE
    end

    def jf_DIVIDE=(value : String) : String
        @j_DIVIDE = value
    end
    @j_MULTIPLY : String = ""

    def jf_MULTIPLY : String
        @j_MULTIPLY
    end

    def jf_MULTIPLY=(value : String) : String
        @j_MULTIPLY = value
    end

    @@jst_instance : MathData? = nil

    def self.jst_instance : MathData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MathData?) : MathData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MathData.new.jinit_MathData()
    end
    

    def self.getInstance : MathData?
        return MathData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_MathData : Nil
    
    @j_PLUS = "+"
    @j_GREATER_THAN = ">"
    
    
    
    end
    

    def jinit_MathData : self
        jfields_MathData()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        @j_EQUALS = commonSeps.not_nil!.jf_EQUALS
        @j_MINUS = commonSeps.not_nil!.jf_DASH
        @j_DIVIDE = commonSeps.not_nil!.jf_FORWARD_SLASH
        @j_MULTIPLY = CommonPhoneStrings.getInstance().not_nil!.jf_STAR
        self
    end
end

