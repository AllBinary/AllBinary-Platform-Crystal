# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.io.file

class SimpleFileUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_NULL_WRITER : JWriter? = nil

    def jf_NULL_WRITER : JWriter?
        @j_NULL_WRITER
    end

    def jf_NULL_WRITER=(value : JWriter?) : JWriter?
        @j_NULL_WRITER = value
    end
    @j_NULL_READER : JReader? = nil

    def jf_NULL_READER : JReader?
        @j_NULL_READER
    end

    def jf_NULL_READER=(value : JReader?) : JReader?
        @j_NULL_READER = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @nullUtil : NullUtil? = nil

    def jf_nullUtil : NullUtil?
        @nullUtil
    end

    def jf_nullUtil=(value : NullUtil?) : NullUtil?
        @nullUtil = value
    end
    @streamUtil : StreamUtil? = nil

    def jf_streamUtil : StreamUtil?
        @streamUtil
    end

    def jf_streamUtil=(value : StreamUtil?) : StreamUtil?
        @streamUtil = value
    end

    @@jst_instance : SimpleFileUtil? = nil

    def self.jst_instance : SimpleFileUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SimpleFileUtil?) : SimpleFileUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SimpleFileUtil.new.jinit_SimpleFileUtil()
    end
    

    def self.getInstance : SimpleFileUtil?
        return SimpleFileUtil.jst_instance
    end
    

    def self.nullOutputStream : JOutputStream?
        return NullOutputStream.jst_NULL_OUTPUT_STREAM
    end
    

    def self.nullWriter : JWriter?
        return NullWriter.jst_NULL_WRITER
    end
    

    def self.nullReader : JReader?
        return NullReader.jst_NULL_READER
    end

    # Java field initializers run after the super constructor
    def jfields_SimpleFileUtil : Nil
    @logUtil = LogUtil.getInstance()
    @j_NULL_WRITER = SimpleFileUtil.nullWriter()
    @j_NULL_READER = SimpleFileUtil.nullReader()
    @commonStrings = CommonStrings.getInstance()
    @nullUtil = NullUtil.getInstance()
    @streamUtil = StreamUtil.getInstance()
    end

    def jinit_SimpleFileUtil : self
        jfields_SimpleFileUtil()
        self
    end
    

    def loadFileAsList(inputStream : JInputStream?, max : Int, byteArray1 : Array(Int8)?) : BasicArrayList?
        max = max.to_i32!
        return self.loadFileAsListReturnLine(inputStream, max, byteArray1, 0)
    end
    

    def loadFileAsListReturnLine(inputStream : JInputStream?, max : Int, byteArray1 : Array(Int8)?, includeReturnLine : Int) : BasicArrayList?
        max = max.to_i32!
        includeReturnLine = includeReturnLine.to_i32!
        stringList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        if (inputStream).nil?
            return stringList
        end
        byteArray : Array(Int8)? = @nullUtil.not_nil!.jf_NULL_BYTE_ARRAY
        begin
            outputStream2 : JByteArrayOutputStream? = JByteArrayOutputStream.new.jinit_JByteArrayOutputStream(max)
            byteArray = @streamUtil.not_nil!.getByteArray(inputStream, outputStream2, byteArray1)
            @streamUtil.not_nil!.close(inputStream)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @streamUtil.not_nil!.close(inputStream)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_ADD, e)
            else
                raise jex1
            end
        end
        if (byteArray).nil?
            return stringList
        end
        size : Int32 = byteArray.not_nil!.size
        index : Int32 = 0
        startIndex : Int32 = 0
        returnLine : Int32 = 0
        while index < size
            startIndex = index
            while index < size &- 1 && byteArray.not_nil![index] != ('\n'.ord.to_u16).to_i8!
                index &+= 1
            end
            if includeReturnLine == 0
                if index > 0 && byteArray.not_nil![index &- 1] == ('\r'.ord.to_u16).to_i8!
                    returnLine = 1
                else
                    returnLine = 0
                end
            end
            s : String = JR.newString(byteArray, startIndex, (index &+ includeReturnLine &- returnLine &- startIndex))
            stringList.not_nil!.add(s)
            index &+= 1
        end
        return stringList
    end
    

    def createStringFromArrayOfStrings(stringArray : Array(String)?) : String
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        size : Int32 = stringArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            stringMaker.not_nil!.append(stringArray.not_nil![index])
        end
        return stringMaker.not_nil!.toString()
    end
end

