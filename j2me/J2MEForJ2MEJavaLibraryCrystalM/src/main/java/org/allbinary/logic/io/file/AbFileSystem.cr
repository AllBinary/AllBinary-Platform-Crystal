# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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

class AbFileSystem < JObject
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

    @@jst_instance : AbFileSystem? = nil

    def self.jst_instance : AbFileSystem?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AbFileSystem?) : AbFileSystem?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AbFileSystem.new.jinit_AbFileSystem()
    end
    

    def self.getInstance : AbFileSystem?
        return AbFileSystem.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AbFileSystem : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    end

    def jinit_AbFileSystem : self
        jfields_AbFileSystem()
        self
    end
    

    def isDirectoryOrFile(path : String) : Bool
        return false
    end
    

    def isDirectory(path : String) : Bool
        return false
    end
    

    def getFilesAsStringArrayForPath(currentDirPath : String) : Array(String)?
        return StringUtil.getInstance().not_nil!.getArrayInstance()
    end
    

    def readAsString(fileName : String) : String
        bytes : Array(Int8)? = Array(Int8).new(1000000, 0_i8)
        return self.readAsString(fileName, bytes)
    end
    

    def readAsString(fileName : String, bytes : Array(Int8)?) : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def close(closeable : JAny) : Bool
        begin
            if !(closeable).nil?
                inputStream : JInputStream? = (JR.cast(closeable, JInputStream))
                inputStream.not_nil!.close()
            end
            return true
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_CLOSE, e)
            return false
            else
                raise jex1
            end
        end
        return false
    end
end

