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

class CommonSeps < JObject
    @j_NEW_LINE : String = ""

    def jf_NEW_LINE : String
        @j_NEW_LINE
    end

    def jf_NEW_LINE=(value : String) : String
        @j_NEW_LINE = value
    end
    @j_SEMICOLON : String = ""

    def jf_SEMICOLON : String
        @j_SEMICOLON
    end

    def jf_SEMICOLON=(value : String) : String
        @j_SEMICOLON = value
    end
    @j_EQUALS : String = ""

    def jf_EQUALS : String
        @j_EQUALS
    end

    def jf_EQUALS=(value : String) : String
        @j_EQUALS = value
    end
    @j_SPACE : String = ""

    def jf_SPACE : String
        @j_SPACE
    end

    def jf_SPACE=(value : String) : String
        @j_SPACE = value
    end
    @j_COMMA : String = ""

    def jf_COMMA : String
        @j_COMMA
    end

    def jf_COMMA=(value : String) : String
        @j_COMMA = value
    end
    @j_COLON : String = ""

    def jf_COLON : String
        @j_COLON
    end

    def jf_COLON=(value : String) : String
        @j_COLON = value
    end
    @j_PERIOD : String = ""

    def jf_PERIOD : String
        @j_PERIOD
    end

    def jf_PERIOD=(value : String) : String
        @j_PERIOD = value
    end
    @j_UNDERSCORE : String = ""

    def jf_UNDERSCORE : String
        @j_UNDERSCORE
    end

    def jf_UNDERSCORE=(value : String) : String
        @j_UNDERSCORE = value
    end
    @j_COLON_SEP : String = ""

    def jf_COLON_SEP : String
        @j_COLON_SEP
    end

    def jf_COLON_SEP=(value : String) : String
        @j_COLON_SEP = value
    end
    @j_COMMA_SEP : String = ""

    def jf_COMMA_SEP : String
        @j_COMMA_SEP
    end

    def jf_COMMA_SEP=(value : String) : String
        @j_COMMA_SEP = value
    end
    @j_PARENTHESIS_OPEN : String = ""

    def jf_PARENTHESIS_OPEN : String
        @j_PARENTHESIS_OPEN
    end

    def jf_PARENTHESIS_OPEN=(value : String) : String
        @j_PARENTHESIS_OPEN = value
    end
    @j_PARENTHESIS_CLOSE : String = ""

    def jf_PARENTHESIS_CLOSE : String
        @j_PARENTHESIS_CLOSE
    end

    def jf_PARENTHESIS_CLOSE=(value : String) : String
        @j_PARENTHESIS_CLOSE = value
    end
    @j_BRACE_OPEN : String = ""

    def jf_BRACE_OPEN : String
        @j_BRACE_OPEN
    end

    def jf_BRACE_OPEN=(value : String) : String
        @j_BRACE_OPEN = value
    end
    @j_BRACE_CLOSE : String = ""

    def jf_BRACE_CLOSE : String
        @j_BRACE_CLOSE
    end

    def jf_BRACE_CLOSE=(value : String) : String
        @j_BRACE_CLOSE = value
    end
    @j_BRACKET_OPEN : String = ""

    def jf_BRACKET_OPEN : String
        @j_BRACKET_OPEN
    end

    def jf_BRACKET_OPEN=(value : String) : String
        @j_BRACKET_OPEN = value
    end
    @j_BRACKET_CLOSE : String = ""

    def jf_BRACKET_CLOSE : String
        @j_BRACKET_CLOSE
    end

    def jf_BRACKET_CLOSE=(value : String) : String
        @j_BRACKET_CLOSE = value
    end
    @j_DASH : String = ""

    def jf_DASH : String
        @j_DASH
    end

    def jf_DASH=(value : String) : String
        @j_DASH = value
    end
    @j_PERCENT : String = ""

    def jf_PERCENT : String
        @j_PERCENT
    end

    def jf_PERCENT=(value : String) : String
        @j_PERCENT = value
    end
    @j_AMPERSAND : String = ""

    def jf_AMPERSAND : String
        @j_AMPERSAND
    end

    def jf_AMPERSAND=(value : String) : String
        @j_AMPERSAND = value
    end
    @j_FORWARD_SLASH : String = ""

    def jf_FORWARD_SLASH : String
        @j_FORWARD_SLASH
    end

    def jf_FORWARD_SLASH=(value : String) : String
        @j_FORWARD_SLASH = value
    end
    @j_BACK_SLASH : String = ""

    def jf_BACK_SLASH : String
        @j_BACK_SLASH
    end

    def jf_BACK_SLASH=(value : String) : String
        @j_BACK_SLASH = value
    end
    @j_QUESTION : String = ""

    def jf_QUESTION : String
        @j_QUESTION
    end

    def jf_QUESTION=(value : String) : String
        @j_QUESTION = value
    end
    @j_QUOTE : String = ""

    def jf_QUOTE : String
        @j_QUOTE
    end

    def jf_QUOTE=(value : String) : String
        @j_QUOTE = value
    end
    @j_QUOTE_END : String = ""

    def jf_QUOTE_END : String
        @j_QUOTE_END
    end

    def jf_QUOTE_END=(value : String) : String
        @j_QUOTE_END = value
    end
    @j_COMMENT : String = ""

    def jf_COMMENT : String
        @j_COMMENT
    end

    def jf_COMMENT=(value : String) : String
        @j_COMMENT = value
    end
    @j_INDENT : String = ""

    def jf_INDENT : String
        @j_INDENT
    end

    def jf_INDENT=(value : String) : String
        @j_INDENT = value
    end

    @@jst_instance : CommonSeps? = nil

    def self.jst_instance : CommonSeps?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CommonSeps?) : CommonSeps?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CommonSeps.new.jinit_CommonSeps()
    end
    

    def self.getInstance : CommonSeps?
        return CommonSeps.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CommonSeps : Nil
    @j_NEW_LINE = "\n"
    @j_SEMICOLON = ";"
    @j_EQUALS = "="
    @j_SPACE = " "
    @j_COMMA = ","
    @j_COLON = ":"
    @j_PERIOD = "."
    @j_UNDERSCORE = "_"
    @j_COLON_SEP = StringMaker.new.jinit_StringMaker().not_nil!.append(@j_COLON).not_nil!.append(@j_SPACE).not_nil!.toString()
    @j_COMMA_SEP = StringMaker.new.jinit_StringMaker().not_nil!.append(@j_COMMA).not_nil!.append(@j_SPACE).not_nil!.toString()
    @j_PARENTHESIS_OPEN = "("
    @j_PARENTHESIS_CLOSE = ")"
    @j_BRACE_OPEN = "{"
    @j_BRACE_CLOSE = "}"
    @j_BRACKET_OPEN = "["
    @j_BRACKET_CLOSE = "]"
    @j_DASH = "-"
    @j_PERCENT = "%"
    @j_AMPERSAND = "&"
    @j_FORWARD_SLASH = "/"
    @j_BACK_SLASH = "\\"
    @j_QUESTION = "?"
    @j_QUOTE = "\""
    @j_QUOTE_END = "\","
    @j_COMMENT = "//"
    @j_INDENT = "    "
    end

    def jinit_CommonSeps : self
        jfields_CommonSeps()
        self
    end
end

