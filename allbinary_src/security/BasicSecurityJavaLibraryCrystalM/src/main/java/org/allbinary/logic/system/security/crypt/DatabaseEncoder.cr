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
# package org.allbinary.logic.system.security.crypt

class DatabaseEncoder < JObject
    

    def self.encode(value : Array(Int8)?) : String
        begin
            array : Array(Int8)? = value
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            index : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < array.not_nil!.size
                stringBuffer.not_nil!.append(JByte.new.jinit_JByte(array.not_nil![index]).not_nil!.toString())
                if index < array.not_nil!.size &- 1
                    stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
                end
            end
            return stringBuffer.not_nil!.toString()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.not_nil!.jf_EXCEPTION, "DatabaseEncoder", "decode", e)
            return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
            else
                raise jex1
            end
        end
        return ""
    end
    

    def self.decode(value : String) : Array(Int8)?
        begin
            tokenizer : Tokenizer? = Tokenizer.new.jinit_Tokenizer(CommonSeps.getInstance().not_nil!.jf_SPACE)
            vector : BasicArrayList? = tokenizer.not_nil!.getTokensFromString(value, BasicArrayListD.new.jinit_BasicArrayListD())
            size : Int32 = vector.not_nil!.size()
            decode : Array(Int8)? = Array(Int8).new(size, 0_i8)
            byteOfData : String = ""
            index : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index &+= 1
                end
                jfor2 = true
                break unless index < size
                byteOfData = JR.castString(vector.not_nil!.jf_objectArray.not_nil![index])
                decode.not_nil![index] = JByte.parseByte(byteOfData)
            end
            return decode
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.putSE(commonStrings.not_nil!.jf_EXCEPTION, "DatabaseEncoder", "decode", e)
            return NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
            else
                raise jex2
            end
        end
        return nil
    end
    

    def jinit_DatabaseEncoder : self
        self
    end
end

