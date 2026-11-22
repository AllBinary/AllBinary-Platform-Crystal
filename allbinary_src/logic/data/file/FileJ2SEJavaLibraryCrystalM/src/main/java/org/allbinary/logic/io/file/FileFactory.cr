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
# package org.allbinary.logic.io.file

class FileFactory < JObject

    @@jst_instance : FileFactory? = nil

    def self.jst_instance : FileFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FileFactory?) : FileFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FileFactory.new.jinit_FileFactory()
    end
    

    def self.getInstance : FileFactory?
        return FileFactory.jst_instance
    end

    def jinit_FileFactory : self
        self
    end
    

    def getInstance(filePath : String) : AbFile?
        return AbFile.createAbFileFromRawPath(filePath)
    end
    

    def getInstance(file : AbFile?, childFilePath : String) : AbFile?
        return AbFile.createAbFileWithChild(file, childFilePath)
    end
    

    def isFile(path : String) : Bool
        file : AbFile? = AbFile.createAbFile(path)
        if file.not_nil!.exists()
            return true
        else
            return false
        end
        return false
    end
end

