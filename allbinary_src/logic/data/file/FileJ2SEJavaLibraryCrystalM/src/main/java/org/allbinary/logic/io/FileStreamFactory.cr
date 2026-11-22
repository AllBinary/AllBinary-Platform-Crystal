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

class FileStreamFactory < JObject

    @@jst_SINGLETON : JAny = nil

    def self.jst_SINGLETON : JAny
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : JAny) : JAny
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : FileStreamFactory?
        if FileStreamFactory.jst_SINGLETON == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            FileStreamFactory.jst_SINGLETON = FileStreamFactory.new.jinit_FileStreamFactory()
        end
        return JR.cast(FileStreamFactory.jst_SINGLETON, FileStreamFactory)
    end
    

    def jinit_FileStreamFactory : self
        self
    end
    

    def getFileInputStreamInstance(path : String, fileName : String) : AbFileInputStream?
        j_FILEABPATH : AbPath? = AbPath.new.jinit_AbPath(path, fileName)
        file : AbFile? = AbFile.createAbFileFromAbPath(j_FILEABPATH)
        return AbFileInputStream.createFromAbFile(file)
    end
    

    def getFileOutputStreamInstance(path : String, fileName : String) : AbFileOutputStream?
        j_FILEABPATH : AbPath? = AbPath.new.jinit_AbPath(path, fileName)
        file : AbFile? = AbFile.createAbFileFromAbPath(j_FILEABPATH)
        if file.not_nil!.exists()
            file.not_nil!.delete()
            file.not_nil!.createNewFile()
        end
        return AbFileOutputStream.createFromAbFile(file)
    end
    

    def delete(path : String, fileName : String) : Nil
        j_FILEABPATH : AbPath? = AbPath.new.jinit_AbPath(path, fileName)
        file : AbFile? = AbFile.createAbFileFromAbPath(j_FILEABPATH)
        file.not_nil!.delete()
    end
end

