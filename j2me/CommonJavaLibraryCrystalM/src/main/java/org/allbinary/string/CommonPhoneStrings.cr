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
# package org.allbinary.string

class CommonPhoneStrings < JObject
    @j_UP : String = ""

    def jf_UP : String
        @j_UP
    end

    def jf_UP=(value : String) : String
        @j_UP = value
    end
    @j_DOWN : String = ""

    def jf_DOWN : String
        @j_DOWN
    end

    def jf_DOWN=(value : String) : String
        @j_DOWN = value
    end
    @j_LEFT : String = ""

    def jf_LEFT : String
        @j_LEFT
    end

    def jf_LEFT=(value : String) : String
        @j_LEFT = value
    end
    @j_RIGHT : String = ""

    def jf_RIGHT : String
        @j_RIGHT
    end

    def jf_RIGHT=(value : String) : String
        @j_RIGHT = value
    end
    @j_ZERO : String = ""

    def jf_ZERO : String
        @j_ZERO
    end

    def jf_ZERO=(value : String) : String
        @j_ZERO = value
    end
    @j_ONE : String = ""

    def jf_ONE : String
        @j_ONE
    end

    def jf_ONE=(value : String) : String
        @j_ONE = value
    end
    @j_TWO : String = ""

    def jf_TWO : String
        @j_TWO
    end

    def jf_TWO=(value : String) : String
        @j_TWO = value
    end
    @j_THREE : String = ""

    def jf_THREE : String
        @j_THREE
    end

    def jf_THREE=(value : String) : String
        @j_THREE = value
    end
    @j_FOUR : String = ""

    def jf_FOUR : String
        @j_FOUR
    end

    def jf_FOUR=(value : String) : String
        @j_FOUR = value
    end
    @j_FIVE : String = ""

    def jf_FIVE : String
        @j_FIVE
    end

    def jf_FIVE=(value : String) : String
        @j_FIVE = value
    end
    @j_SIX : String = ""

    def jf_SIX : String
        @j_SIX
    end

    def jf_SIX=(value : String) : String
        @j_SIX = value
    end
    @j_SEVEN : String = ""

    def jf_SEVEN : String
        @j_SEVEN
    end

    def jf_SEVEN=(value : String) : String
        @j_SEVEN = value
    end
    @j_EIGHT : String = ""

    def jf_EIGHT : String
        @j_EIGHT
    end

    def jf_EIGHT=(value : String) : String
        @j_EIGHT = value
    end
    @j_NINE : String = ""

    def jf_NINE : String
        @j_NINE
    end

    def jf_NINE=(value : String) : String
        @j_NINE = value
    end
    @j_POUND : String = ""

    def jf_POUND : String
        @j_POUND
    end

    def jf_POUND=(value : String) : String
        @j_POUND = value
    end
    @j_STAR : String = ""

    def jf_STAR : String
        @j_STAR
    end

    def jf_STAR=(value : String) : String
        @j_STAR = value
    end
    @j_FIRE : String = ""

    def jf_FIRE : String
        @j_FIRE
    end

    def jf_FIRE=(value : String) : String
        @j_FIRE = value
    end

    @@jst_instance : CommonPhoneStrings? = nil

    def self.jst_instance : CommonPhoneStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CommonPhoneStrings?) : CommonPhoneStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CommonPhoneStrings.new.jinit_CommonPhoneStrings()
    end
    

    def self.getInstance : CommonPhoneStrings?
        return CommonPhoneStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CommonPhoneStrings : Nil
    @j_UP = "UP"
    @j_DOWN = "DOWN"
    @j_LEFT = "LEFT"
    @j_RIGHT = "RIGHT"
    @j_ZERO = "0"
    @j_ONE = "1"
    @j_TWO = "2"
    @j_THREE = "3"
    @j_FOUR = "4"
    @j_FIVE = "5"
    @j_SIX = "6"
    @j_SEVEN = "7"
    @j_EIGHT = "8"
    @j_NINE = "9"
    @j_POUND = "#"
    @j_STAR = "*"
    @j_FIRE = "FIRE"
    end

    def jinit_CommonPhoneStrings : self
        jfields_CommonPhoneStrings()
        self
    end
end

