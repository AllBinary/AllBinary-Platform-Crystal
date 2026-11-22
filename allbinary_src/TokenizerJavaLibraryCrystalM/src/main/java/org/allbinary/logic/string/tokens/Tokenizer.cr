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
# package org.allbinary.logic.string.tokens

class Tokenizer < JObject
    @sep : String = ""

    def jf_sep : String
        @sep
    end

    def jf_sep=(value : String) : String
        @sep = value
    end
    @endSep : String = ""

    def jf_endSep : String
        @endSep
    end

    def jf_endSep=(value : String) : String
        @endSep = value
    end

    # Java field initializers run after the super constructor
    def jfields_Tokenizer : Nil
    
    @endSep = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_Tokenizer(sep : String) : self
        jfields_Tokenizer()
        if TsUtil.getInstance().not_nil!.compareTo(sep, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING) == 0
            raise (JException.new.jinit_JException("Sep provided is not valid")).not_nil!
        end
        @sep = sep
        self
    end
    

    def setSep(sep : String) : Nil
        @sep = sep
    end
    

    def setEndSep(endSep : String) : Nil
        @endSep = endSep
    end
    

    def getInsideSep(string : String) : BasicArrayList?
        tokenList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        index : Int32 = 0
        size : Int32 = string.not_nil!.length()
        while index < size
            index = string.not_nil!.indexOf(@sep, index)
            if index != -1
                end_ : Int32 = string.not_nil!.indexOf(@endSep, index &+ @sep.not_nil!.length())
                if end_ != -1
                    tokenList.not_nil!.add(string.not_nil!.substring(index &+ @sep.not_nil!.length(), end_ &- (@endSep.not_nil!.length() &- 1)))
                    index = end_ &+ @endSep.not_nil!.length()
                else
                end
            else
                break
            end
        end
        return tokenList
    end
    

    def getTokensFromString(string : String, tokenVector : BasicArrayList?) : BasicArrayList?
        index : Int32 = 0
        end_ : Int32 = 0
        while index < string.not_nil!.length()
            end_ = string.not_nil!.indexOf(@sep, index)
            if end_ != -1
                tokenVector.not_nil!.add(string.not_nil!.substring(index, end_))
                index = end_ &+ @sep.not_nil!.length()
            else
                tokenVector.not_nil!.add(string.not_nil!.substring(index, string.not_nil!.length()))
                break
            end
        end
        return tokenVector
    end
    

    def getTokens(stringVector : BasicArrayList?) : ABHashtable?
        tokenHashtable : ABHashtable? = StdUtil.getInstance().not_nil!.createHashtable()
        string : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        end_ : Int32 = 0
        size : Int32 = stringVector.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            string = JR.castString(stringVector.not_nil!.jf_objectArray.not_nil![index])
            end_ = string.not_nil!.indexOf(@sep)
            if end_ >= 0
                tokenHashtable.not_nil!.put(string.not_nil!.substring(0, end_), string.not_nil!.substring(end_ &+ 1, string.not_nil!.length()))
            end
        end
        return tokenHashtable
    end
end

