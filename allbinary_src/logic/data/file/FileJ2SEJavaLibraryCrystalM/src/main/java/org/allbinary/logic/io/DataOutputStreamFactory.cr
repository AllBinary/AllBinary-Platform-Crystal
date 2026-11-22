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

class DataOutputStreamFactory < JObject

    @@jst_instance : DataOutputStreamFactory? = nil

    def self.jst_instance : DataOutputStreamFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DataOutputStreamFactory?) : DataOutputStreamFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DataOutputStreamFactory.new.jinit_DataOutputStreamFactory()
    end
    

    def self.getInstance : DataOutputStreamFactory?
        return DataOutputStreamFactory.jst_instance
    end

    def jinit_DataOutputStreamFactory : self
        self
    end
    

    def getInstanceForAbFile(file : AbFile?) : AbDataOutputStream?
        idFileOutputStream : AbFileOutputStream? = AbFileOutputStream.createFromAbFile(file)
        idOutData : AbDataOutputStream? = AbDataOutputStream.new.jinit_AbDataOutputStream(idFileOutputStream)
        return idOutData
    end
    

    def getInstance(filePath : String, fileName : String) : AbDataOutputStream?
        fileStreamFactory : FileStreamFactory? = FileStreamFactory.getInstance()
        fileOutputStream : AbFileOutputStream? = fileStreamFactory.not_nil!.getFileOutputStreamInstance(filePath, fileName)
        idOutData : AbDataOutputStream? = AbDataOutputStream.new.jinit_AbDataOutputStream(fileOutputStream)
        return idOutData
    end
end

