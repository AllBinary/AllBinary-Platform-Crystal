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

class AbPath < JObject
    @commonSeps : CommonSeps? = nil

    def jf_commonSeps : CommonSeps?
        @commonSeps
    end

    def jf_commonSeps=(value : CommonSeps?) : CommonSeps?
        @commonSeps = value
    end
    @abPathData : AbPathData? = nil

    def jf_abPathData : AbPathData?
        @abPathData
    end

    def jf_abPathData=(value : AbPathData?) : AbPathData?
        @abPathData = value
    end
    @abPathUtil : PathUtil? = nil

    def jf_abPathUtil : PathUtil?
        @abPathUtil
    end

    def jf_abPathUtil=(value : PathUtil?) : PathUtil?
        @abPathUtil = value
    end
    @j_EMPTY_STRING : String = ""

    def jf_EMPTY_STRING : String
        @j_EMPTY_STRING
    end

    def jf_EMPTY_STRING=(value : String) : String
        @j_EMPTY_STRING = value
    end
    @schema : String = ""

    def jf_schema : String
        @schema
    end

    def jf_schema=(value : String) : String
        @schema = value
    end
    @path : String = ""

    def jf_path : String
        @path
    end

    def jf_path=(value : String) : String
        @path = value
    end
    @nameP : String = ""

    def jf_nameP : String
        @nameP
    end

    def jf_nameP=(value : String) : String
        @nameP = value
    end
    @hasSchemaP : Bool = false

    def jf_hasSchemaP : Bool
        @hasSchemaP
    end

    def jf_hasSchemaP=(value : Bool) : Bool
        @hasSchemaP = value
    end
    @numberOfSeps : Int32 = 0

    def jf_numberOfSeps : Int32
        @numberOfSeps
    end

    def jf_numberOfSeps=(value : Int32) : Int32
        @numberOfSeps = value
    end

    def self.jst_NETWORK_SEP : String
        ":/"
    end
    

    def self.createAbPath : AbPath?
        begin
            j_EMPTY_STRING : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
            return AbPath.new.jinit_AbPath(j_EMPTY_STRING, j_EMPTY_STRING)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                ex = jex1.as(JException)
            raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
            else
                raise jex1
            end
        end
        return nil
    end

    # Java field initializers run after the super constructor
    def jfields_AbPath : Nil
    @commonSeps = CommonSeps.getInstance()
    @abPathData = AbPathData.getInstance()
    @abPathUtil = PathUtil.getInstance()
    @j_EMPTY_STRING = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @schema = @j_EMPTY_STRING
    @path = @j_EMPTY_STRING
    @nameP = @j_EMPTY_STRING
    @hasSchemaP = false
    @numberOfSeps = 0
    end
    

    def jinit_AbPath(aPath : String, name : String) : self
        jfields_AbPath()
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        if !stringValidationUtil.not_nil!.isEmpty(aPath)
            @schema = self.getSchema(aPath)
            @nameP = name
            @path = @abPathUtil.not_nil!.adjustEnd(@abPathUtil.not_nil!.adjust(self.getPathFromPath(aPath)))
        else
            self.init()
            if !stringValidationUtil.not_nil!.isEmpty(name)
                @nameP = name
            end
        end
        self
    end
    

    def init : Nil
        @schema = @j_EMPTY_STRING
        self.setPath(@abPathData.not_nil!.jf_SEPARATOR)
        @nameP = @j_EMPTY_STRING
    end
    

    def getSchema(aPath : String) : String
        beginIndex : Int32 = aPath.not_nil!.indexOf(@commonSeps.not_nil!.jf_COLON)
        if beginIndex >= 0
            @hasSchemaP = true
            return aPath.not_nil!.substring(0, beginIndex)
        end
        @hasSchemaP = false
        return @j_EMPTY_STRING
    end
    

    def hasSchema : Bool
        return @hasSchemaP
    end
    

    def getPathFromPath(aPath : String) : String
        filePathData : FilePathData? = FilePathData.getInstance()
        tempPath : String = aPath
        if !self.hasSchema()
            tempPath = @abPathUtil.not_nil!.adjustStart(tempPath)
        else
            beginIndex : Int32 = tempPath.not_nil!.indexOf(@commonSeps.not_nil!.jf_COLON)
            if beginIndex >= 0
                beginIndex &+= 1
                while tempPath.not_nil!.charAt(beginIndex) == @abPathData.not_nil!.jf_SEPARATORCHAR || tempPath.not_nil!.charAt(beginIndex) == filePathData.not_nil!.jf_SEPARATORCHAR
                    beginIndex &+= 1
                    @numberOfSeps &+= 1
                    if @numberOfSeps > 2
                        raise (JException.new.jinit_JException("Should Not Have More Than Two Seps")).not_nil!
                    end
                end
                tempPath = tempPath.not_nil!.substring(beginIndex, tempPath.not_nil!.length())
            end
        end
        return tempPath
    end
    

    def setName(name : String) : Nil
        @nameP = name
    end
    

    def getName : String
        return @nameP
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        if self.hasSchema()
            stringBuffer.not_nil!.append(@schema)
            stringBuffer.not_nil!.append(AbPath.jst_NETWORK_SEP)
        end
        stringBuffer.not_nil!.append(self.getPath())
        stringBuffer.not_nil!.append(@nameP)
        return stringBuffer.not_nil!.toString()
    end
    

    def toFileSystemString : String
        if self.hasSchema()
            filePathData : FilePathData? = FilePathData.getInstance()
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(@schema)
            stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_COLON)
            stringBuffer.not_nil!.append(filePathData.not_nil!.jf_PATH_START)
            stringBuffer.not_nil!.append(FilePathUtil.adjust(self.getPath()))
            stringBuffer.not_nil!.append(@nameP)
            return stringBuffer.not_nil!.toString()
        else
            return FilePathUtil.adjust(self.getPath()) + @nameP
        end
        return ""
    end
    

    def getPath : String
        return @path
    end
    

    def setPath(path : String) : Nil
        @path = path
    end
end

