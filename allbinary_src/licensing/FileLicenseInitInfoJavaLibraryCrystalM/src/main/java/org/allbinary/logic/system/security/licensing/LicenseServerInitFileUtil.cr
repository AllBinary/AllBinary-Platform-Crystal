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
# package org.allbinary.logic.system.security.licensing

class LicenseServerInitFileUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @j_NULL_OUTPUT_STREAM : JOutputStream? = nil

    def jf_NULL_OUTPUT_STREAM : JOutputStream?
        @j_NULL_OUTPUT_STREAM
    end

    def jf_NULL_OUTPUT_STREAM=(value : JOutputStream?) : JOutputStream?
        @j_NULL_OUTPUT_STREAM = value
    end

    # Java field initializers run after the super constructor
    def jfields_LicenseServerInitFileUtil : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @j_NULL_OUTPUT_STREAM = SimpleFileUtil.nullOutputStream()
    end

    def jinit_LicenseServerInitFileUtil : self
        jfields_LicenseServerInitFileUtil()
        self
    end
    

    def init : Nil
        begin
            filePath : String = LicenseInitInfoUtil.getInstance().not_nil!.jf_INITFILENAME
            LicenseInitInfoUtil.getInstance().not_nil!.setFilePath(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
            if FileFactory.getInstance().not_nil!.isFile(filePath)
                @logUtil.not_nil!.putF("Using Existing License File", self, @commonStrings.not_nil!.jf_INIT)
            else
                self.write()
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_INIT, e)
            else
                raise jex1
            end
        end
    end
    

    def write : Nil
        fileOutputStream : JOutputStream? = @j_NULL_OUTPUT_STREAM
        begin
            resourceUtil : ResourceUtil? = ResourceUtil.getInstance()
            filePath : String = LicenseInitInfoUtil.getInstance().not_nil!.jf_INITFILENAME
            inputStream : JInputStream? = resourceUtil.not_nil!.getResourceAsStream(filePath)
            @logUtil.not_nil!.putF("Writing Default License File", self, @commonStrings.not_nil!.jf_INIT)
            fileStreamFactory : FileStreamFactory? = FileStreamFactory.getInstance()
            fileOutputStream = fileStreamFactory.not_nil!.getFileOutputStreamInstance(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, filePath)
            b : Int32 = 0
            index : Int32 = 0
            while true
                b = inputStream.not_nil!.read()
                if b == -1
                    break
                end
                fileOutputStream.not_nil!.write(b)
                index &+= 1
            end
            @logUtil.not_nil!.putF("Wrote Bytes: " + JR.str(index), self, @commonStrings.not_nil!.jf_INIT)
            fileOutputStream.not_nil!.flush()
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_INIT, e)
            else
                raise jex2
            end
        ensure
            StreamUtil.getInstance().not_nil!.close(fileOutputStream)
        end
    end
end

