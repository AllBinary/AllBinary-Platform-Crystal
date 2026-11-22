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
# package org.allbinary.logic.io.path

class PathUtil < JObject
    @abPathData : AbPathData? = nil

    def jf_abPathData : AbPathData?
        @abPathData
    end

    def jf_abPathData=(value : AbPathData?) : AbPathData?
        @abPathData = value
    end
    @filePathData : FilePathData? = nil

    def jf_filePathData : FilePathData?
        @filePathData
    end

    def jf_filePathData=(value : FilePathData?) : FilePathData?
        @filePathData = value
    end

    @@jst_instance : PathUtil? = nil

    def self.jst_instance : PathUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PathUtil?) : PathUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PathUtil.new.jinit_PathUtil()
    end
    

    def self.getInstance : PathUtil?
        return PathUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PathUtil : Nil
    @abPathData = AbPathData.getInstance()
    @filePathData = FilePathData.getInstance()
    end
    

    def jinit_PathUtil : self
        jfields_PathUtil()
        self
    end
    

    def getExtensionWithAbFilePath(abFilePath : AbFilePath?) : String
        return @abPathData.not_nil!.getExtension(abFilePath.not_nil!.toString())
    end
    

    def getExtensionWithAbPath(abPath : AbPath?) : String
        return @abPathData.not_nil!.getExtension(abPath.not_nil!.toString())
    end
    

    def getWithoutExtensionWithAbFilePath(abFilePath : AbFilePath?) : String
        return self.getWithoutExtension(abFilePath.not_nil!.toString())
    end
    

    def getWithoutExtensionWithAbPath(abPath : AbPath?) : String
        return self.getWithoutExtension(abPath.not_nil!.toString())
    end
    

    def getWithoutExtension(filePath : String) : String
        indexOfFileExtensionDelmiter : Int32 = @abPathData.not_nil!.getExtensionIndex(filePath)
        pathWithoutExtension : String = filePath
        if indexOfFileExtensionDelmiter >= 0
            pathWithoutExtension = filePath.not_nil!.substring(0, indexOfFileExtensionDelmiter)
        end
        return pathWithoutExtension
    end
    

    def isValid(path : String) : Bool
        if self.isValidStart(path)
            if self.isValidEnd(path)
                return true
            end
        end
        return false
    end
    

    def isValidStart(path : String) : Bool
        if path.not_nil!.charAt(0) == @abPathData.not_nil!.jf_SEPARATORCHAR || path.not_nil!.charAt(0) == '.'.ord.to_u16
            return true
        else
            return false
        end
        return false
    end
    

    def isValidEnd(path : String) : Bool
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        if stringValidationUtil.not_nil!.isEmpty(path)
            return false
        end
        if path.not_nil!.charAt(path.not_nil!.length() &- 1) == @abPathData.not_nil!.jf_SEPARATORCHAR
            return true
        else
            return false
        end
        return false
    end
    

    def adjustStart(path : String) : String
        if !self.isValidStart(path)
            path = @abPathData.not_nil!.jf_SEPARATOR + path
        end
        return path
    end
    

    def adjustEnd(path : String) : String
        if !self.isValidEnd(path)
            path = path + @abPathData.not_nil!.jf_SEPARATOR
        end
        return path
    end
    

    def adjust(path : String) : String
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        if stringValidationUtil.not_nil!.isEmpty(path)
            return @abPathData.not_nil!.jf_SEPARATOR
        end
        if path.not_nil!.indexOf("\\") >= 0
            path = path.not_nil!.replace('\\'.ord.to_u16, @abPathData.not_nil!.jf_SEPARATORCHAR)
        end
        return path
    end
    

    def removeNameFromPath(path : String) : AbPath?
        endIndex : Int32 = path.not_nil!.lastIndexOf(@abPathData.not_nil!.jf_SEPARATOR)
        if endIndex < 0
            endIndex = path.not_nil!.lastIndexOf(@filePathData.not_nil!.jf_SEPARATORCHAR)
        end
        if endIndex < 0
            return AbPath.createAbPath()
        end
        if path.not_nil!.length() == endIndex &+ 1
            return self.removeNameFromPath(path.not_nil!.substring(0, endIndex &- 1))
        else
            pathWithoutName : String = path.not_nil!.substring(0, endIndex)
            return AbPath.new.jinit_AbPath(pathWithoutName, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
        end
        return nil
    end
end

