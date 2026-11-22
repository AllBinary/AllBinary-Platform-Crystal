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
# package org.allbinary.data.resource

class ResourceUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @path : String = ""

    def jf_path : String
        @path
    end

    def jf_path=(value : String) : String
        @path = value
    end
    @ext : String = ""

    def jf_ext : String
        @ext
    end

    def jf_ext=(value : String) : String
        @ext = value
    end

    @@jst_instance : ResourceUtil? = nil

    def self.jst_instance : ResourceUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ResourceUtil?) : ResourceUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ResourceUtil.new.jinit_ResourceUtil()
    end
    

    def self.getInstance : ResourceUtil?
        return ResourceUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ResourceUtil : Nil
    @logUtil = LogUtil.getInstance()
    @path = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @ext = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_ResourceUtil : self
        jfields_ResourceUtil()
        self
    end
    

    def setLoadingPaths(path : String, ext : String) : Nil
        @path = path
        @ext = ext
    end
    

    def setClassLoader(classLoader : JClassLoader?) : Nil
    end
    

    def getResourceAsStream(resource : String) : JInputStream?
        inputStream : JInputStream? = self.getResourceAsStreamAtStart(resource, 2)
        if (inputStream).nil?
            inputStream = self.getResourceAsStreamAtStart(resource, 1)
            if (inputStream).nil?
                raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("Unable to obtain: ").not_nil!.append(resource).not_nil!.toString())).not_nil!
            end
        end
        return inputStream
    end
    

    def getResourceAsStreamAtStart(resource : String, startIndex : Int) : JInputStream?
        startIndex = startIndex.to_i32!
        inputStream : JInputStream? = JFileInputStream.new.jinit_JFileInputStream(StringMaker.new.jinit_StringMaker().not_nil!.append(@path).not_nil!.append(resource).not_nil!.append(@ext).not_nil!.toString())
        if !(inputStream).nil?
            byteArray : Array(Int8)? = Array(Int8).new(inputStream.not_nil!.available(), 0_i8)
            StreamUtil.getInstance().not_nil!.getByteArray(inputStream, JByteArrayOutputStream.new.jinit_JByteArrayOutputStream(), byteArray)
            return JByteArrayInputStream.new.jinit_JByteArrayInputStream(byteArray)
        end
        return inputStream
    end
    

    def addResource(resource : String, value : JInteger?) : Nil
    end
end

