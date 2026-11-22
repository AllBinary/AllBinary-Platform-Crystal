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
# package org.allbinary.logic.io

class StreamUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : StreamUtil? = nil

    def self.jst_instance : StreamUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : StreamUtil?) : StreamUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = StreamUtil.new.jinit_StreamUtil()
    end
    

    def self.getInstance : StreamUtil?
        return StreamUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_StreamUtil : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_StreamUtil : self
        jfields_StreamUtil()
        self
    end
    

    def get(inputStream : JInputStream?, outputStream : JOutputStream?, buffer : Array(Int8)?) : JOutputStream?
        len : Int32 = 0
        while true
            len = inputStream.not_nil!.read(buffer, 0, buffer.not_nil!.size)
            if len != -1
            else
                break
            end
            outputStream.not_nil!.write(buffer, 0, len)
        end
        return outputStream
    end
    

    def getByteArray(inputStream : JInputStream?, outputStream2 : JByteArrayOutputStream?, byteArray : Array(Int8)?) : Array(Int8)?
        outputStream : JByteArrayOutputStream? = outputStream2
        begin
            self.get(inputStream, outputStream, byteArray)
            return outputStream.not_nil!.toByteArray()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            raise (e).not_nil!
            else
                raise jex1
            end
        ensure
            self.close(outputStream)
        end
        return nil
    end
    

    def close(closeable : JCloseable?) : Bool
        begin
            if !(closeable).nil?
                closeable.not_nil!.close()
            end
            return true
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CLOSE, e)
            return false
            else
                raise jex2
            end
        end
        return false
    end
end

