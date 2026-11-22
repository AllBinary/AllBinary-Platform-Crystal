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

class CommonLabels < JObject
    @j_WIDTH_LABEL : String = ""

    def jf_WIDTH_LABEL : String
        @j_WIDTH_LABEL
    end

    def jf_WIDTH_LABEL=(value : String) : String
        @j_WIDTH_LABEL = value
    end
    @j_HEIGHT_LABEL : String = ""

    def jf_HEIGHT_LABEL : String
        @j_HEIGHT_LABEL
    end

    def jf_HEIGHT_LABEL=(value : String) : String
        @j_HEIGHT_LABEL = value
    end
    @j_END_LABEL : String = ""

    def jf_END_LABEL : String
        @j_END_LABEL
    end

    def jf_END_LABEL=(value : String) : String
        @j_END_LABEL = value
    end
    @j_TOTAL_LABEL : String = ""

    def jf_TOTAL_LABEL : String
        @j_TOTAL_LABEL
    end

    def jf_TOTAL_LABEL=(value : String) : String
        @j_TOTAL_LABEL = value
    end
    @j_INDEX_LABEL : String = ""

    def jf_INDEX_LABEL : String
        @j_INDEX_LABEL
    end

    def jf_INDEX_LABEL=(value : String) : String
        @j_INDEX_LABEL = value
    end
    @j_START_LABEL : String = ""

    def jf_START_LABEL : String
        @j_START_LABEL
    end

    def jf_START_LABEL=(value : String) : String
        @j_START_LABEL = value
    end
    @j_COMMAND_LABEL : String = ""

    def jf_COMMAND_LABEL : String
        @j_COMMAND_LABEL
    end

    def jf_COMMAND_LABEL=(value : String) : String
        @j_COMMAND_LABEL = value
    end
    @j_NAME_LABEL : String = ""

    def jf_NAME_LABEL : String
        @j_NAME_LABEL
    end

    def jf_NAME_LABEL=(value : String) : String
        @j_NAME_LABEL = value
    end
    @j_START : String = ""

    def jf_START : String
        @j_START
    end

    def jf_START=(value : String) : String
        @j_START = value
    end
    @j_ELAPSED : String = ""

    def jf_ELAPSED : String
        @j_ELAPSED
    end

    def jf_ELAPSED=(value : String) : String
        @j_ELAPSED = value
    end
    @j_CURRENT : String = ""

    def jf_CURRENT : String
        @j_CURRENT
    end

    def jf_CURRENT=(value : String) : String
        @j_CURRENT = value
    end
    @j_NEXT : String = ""

    def jf_NEXT : String
        @j_NEXT
    end

    def jf_NEXT=(value : String) : String
        @j_NEXT = value
    end
    @j_ITEM_LABEL : String = ""

    def jf_ITEM_LABEL : String
        @j_ITEM_LABEL
    end

    def jf_ITEM_LABEL=(value : String) : String
        @j_ITEM_LABEL = value
    end
    @j_RESULT_ : String = ""

    def jf_RESULT_ : String
        @j_RESULT_
    end

    def jf_RESULT_=(value : String) : String
        @j_RESULT_ = value
    end
    @j_COLON_SEP : String = ""

    def jf_COLON_SEP : String
        @j_COLON_SEP
    end

    def jf_COLON_SEP=(value : String) : String
        @j_COLON_SEP = value
    end

    @@jst_instance : CommonLabels? = nil

    def self.jst_instance : CommonLabels?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CommonLabels?) : CommonLabels?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CommonLabels.new.jinit_CommonLabels()
    end
    

    def self.getInstance : CommonLabels?
        return CommonLabels.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CommonLabels : Nil
    @j_WIDTH_LABEL = " Width: "
    @j_HEIGHT_LABEL = " Height: "
    @j_END_LABEL = "End: "
    @j_TOTAL_LABEL = "Total: "
    @j_INDEX_LABEL = "index: "
    @j_START_LABEL = "Start: "
    @j_COMMAND_LABEL = "Command: "
    @j_NAME_LABEL = "Name: "
    @j_START = @j_START_LABEL
    @j_ELAPSED = " Elapsed: "
    @j_CURRENT = " Current: "
    @j_NEXT = "Next"
    @j_ITEM_LABEL = "Item: "
    @j_RESULT_ = "Result: "
    @j_COLON_SEP = ": "
    end

    def jinit_CommonLabels : self
        jfields_CommonLabels()
        self
    end
end

