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

class AbFile < JObject
    include AbFileInterface
    @file : JFile? = nil

    def jf_file : JFile?
        @file
    end

    def jf_file=(value : JFile?) : JFile?
        @file = value
    end

    @@jst_NULL_FILE : AbFile? = nil

    def self.jst_NULL_FILE : AbFile?
        jclinit
        @@jst_NULL_FILE
    end

    def self.jst_NULL_FILE=(value : AbFile?) : AbFile?
        jclinit
        @@jst_NULL_FILE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_FILE = AbFile.createAbFileFromRawPath(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
    end
    

    def self.createAbFileWithChild(file : AbFile?, childPathName : String) : AbFile?
        return AbFile.new.jinit_AbFile(JFile.new.jinit_JFile(file.not_nil!.getFile(), childPathName))
    end
    

    def self.createAbFile(filePath : String) : AbFile?
        return AbFile.new.jinit_AbFile(JFile.new.jinit_JFile(AbPath.new.jinit_AbPath(filePath, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING).not_nil!.toFileSystemString()))
    end
    

    def self.createAbFilePathAndName(filePath : String, fileName : String) : AbFile?
        return AbFile.new.jinit_AbFile(JFile.new.jinit_JFile(AbPath.new.jinit_AbPath(filePath, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING).not_nil!.toFileSystemString(), fileName))
    end
    

    def self.createAbFileFromAbPath(abPath : AbPath?) : AbFile?
        return AbFile.new.jinit_AbFile(JFile.new.jinit_JFile(abPath.not_nil!.toFileSystemString()))
    end
    

    def self.createAbFileFromRawPath(filePath : String) : AbFile?
        return AbFile.new.jinit_AbFile(JFile.new.jinit_JFile(filePath))
    end
    

    def jinit_AbFile(file : JFile?) : self
        @file = file
        self
    end
    

    def getFile : JFile?
        return @file
    end
    

    def getName : String
        return @file.not_nil!.getName()
    end
    

    def getParent : String
        return @file.not_nil!.getParent()
    end
    

    def getParentFile : JAny
        return @file.not_nil!.getParentFile()
    end
    

    def getPath : String
        return @file.not_nil!.getPath()
    end
    

    def isAbsolute : Bool
        return @file.not_nil!.isAbsolute()
    end
    

    def getAbsolutePath : String
        return @file.not_nil!.getAbsolutePath()
    end
    

    def getAbsoluteFile : JAny
        return @file.not_nil!.getAbsoluteFile()
    end
    

    def getCanonicalPath : String
        return @file.not_nil!.getCanonicalPath()
    end
    

    def getCanonicalFile : JAny
        return @file.not_nil!.getCanonicalFile()
    end
    

    def toURI : JURI?
        return @file.not_nil!.toURI()
    end
    

    def canRead : Bool
        return @file.not_nil!.canRead()
    end
    

    def canWrite : Bool
        return @file.not_nil!.canWrite()
    end
    

    def exists : Bool
        return @file.not_nil!.exists()
    end
    

    def isDirectory : Bool
        return @file.not_nil!.isDirectory()
    end
    

    def isFile : Bool
        return @file.not_nil!.isFile()
    end
    

    def isHidden : Bool
        return @file.not_nil!.isHidden()
    end
    

    def lastModified : Int64
        return @file.not_nil!.lastModified()
    end
    

    def length : Int64
        return (@file.not_nil!.length()).to_i64!
    end
    

    def createNewFile : Bool
        return @file.not_nil!.createNewFile()
    end
    

    def delete : Bool
        return @file.not_nil!.delete()
    end
    

    def deleteOnExit : Nil
        @file.not_nil!.deleteOnExit()
    end
    

    def list : Array(String)?
        return @file.not_nil!.list()
    end
    

    def listWithFilter(filter : JFilenameFilter?) : Array(String)?
        return @file.not_nil!.list(filter)
    end
    

    def listFiles : Array(JAny)?
        return JR.unbox(@file.not_nil!.listFiles(), Array(JAny))
    end
    

    def listFilesFileNameFilter(filter : JFilenameFilter?) : Array(JAny)?
        return JR.unbox(@file.not_nil!.listFiles(filter), Array(JAny))
    end
    

    def listFilesFileFilter(filter : JFileFilter?) : Array(JAny)?
        return JR.unbox(@file.not_nil!.listFiles(filter), Array(JAny))
    end
    

    def mkdir : Bool
        return @file.not_nil!.mkdir()
    end
    

    def mkdirs : Bool
        return @file.not_nil!.mkdirs()
    end
    

    def renameTo(dest : AbFile?) : Bool
        return @file.not_nil!.renameTo(dest.not_nil!.getFile())
    end
    

    def setLastModified(time : Int) : Bool
        time = time.to_i64!
        return @file.not_nil!.setLastModified(time)
    end
    

    def setReadOnly : Bool
        return @file.not_nil!.setReadOnly()
    end
    

    def setWritable(writable : Bool, ownerOnly : Bool) : Bool
        return @file.not_nil!.setExecutable(writable, ownerOnly)
    end
    

    def setWritable(writable : Bool) : Bool
        return @file.not_nil!.setWritable(writable)
    end
    

    def setReadable(readable : Bool, ownerOnly : Bool) : Bool
        return @file.not_nil!.setReadable(readable, ownerOnly)
    end
    

    def setReadable(readable : Bool) : Bool
        return @file.not_nil!.setReadable(readable)
    end
    

    def setExecutable(executable : Bool, ownerOnly : Bool) : Bool
        return @file.not_nil!.setExecutable(executable, ownerOnly)
    end
    

    def setExecutable(executable : Bool) : Bool
        return @file.not_nil!.setExecutable(executable)
    end
    

    def canExecute : Bool
        return @file.not_nil!.canExecute()
    end
    

    def getTotalSpace : Int64
        return @file.not_nil!.getTotalSpace()
    end
    

    def getFreeSpace : Int64
        return @file.not_nil!.getFreeSpace()
    end
    

    def getUsableSpace : Int64
        return @file.not_nil!.getUsableSpace()
    end
    

    def compareTo(pathname : JFile?) : Int32
        return @file.not_nil!.compareTo(pathname)
    end
    

    def equals(obj : JAny) : Bool
        return TsUtil.getInstance().not_nil!.equalsNotstring(@file, obj)
    end
    

    def hashCode : Int32
        return @file.not_nil!.hashCode()
    end
    

    def toString : String
        return @file.not_nil!.toString()
    end
end

