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
# package org.allbinary.data

class CamelCaseUtil < JObject
    @commonSeps : CommonSeps? = nil

    def jf_commonSeps : CommonSeps?
        @commonSeps
    end

    def jf_commonSeps=(value : CommonSeps?) : CommonSeps?
        @commonSeps = value
    end

    @@jst_instance : CamelCaseUtil? = nil

    def self.jst_instance : CamelCaseUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CamelCaseUtil?) : CamelCaseUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CamelCaseUtil.new.jinit_CamelCaseUtil()
    end
    

    def self.getInstance : CamelCaseUtil?
        return CamelCaseUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CamelCaseUtil : Nil
    @commonSeps = CommonSeps.getInstance()
    end

    def jinit_CamelCaseUtil : self
        jfields_CamelCaseUtil()
        self
    end
    

    def getAsCamelCase(string : String, stringBuilder : StringMaker?) : String
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        stringBuilder.not_nil!.delete(0, stringBuilder.not_nil!.length())
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        tokenizer : Tokenizer? = Tokenizer.new.jinit_Tokenizer(@commonSeps.not_nil!.jf_UNDERSCORE)
        tokenizer.not_nil!.getTokensFromString(string, list)
        size : Int32 = list.not_nil!.size()
        word : String = ""
        i : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                i &+= 1
            end
            jfor1 = true
            break unless i < size
            word = JR.castString(list.not_nil!.get(i))
            word = (stringValidationUtil.not_nil!.isEmpty(word) ? word : StringMaker.new.jinit_StringMaker().not_nil!.appendchar(JCharacter.toUpperCase(word.not_nil!.charAt(0))).not_nil!.append(word.not_nil!.substring(1).not_nil!.toLowerCase()).not_nil!.toString())
            stringBuilder.not_nil!.append(word)
        end
        return stringBuilder.not_nil!.toString()
    end
end

