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
# package org.allbinary.business.init

class LicenseInitInfoUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @stringUtil : StringUtil? = nil

    def jf_stringUtil : StringUtil?
        @stringUtil
    end

    def jf_stringUtil=(value : StringUtil?) : StringUtil?
        @stringUtil = value
    end
    @j_INITFILENAME : String = ""

    def jf_INITFILENAME : String
        @j_INITFILENAME
    end

    def jf_INITFILENAME=(value : String) : String
        @j_INITFILENAME = value
    end
    @j_ABOUT : String = ""

    def jf_ABOUT : String
        @j_ABOUT
    end

    def jf_ABOUT=(value : String) : String
        @j_ABOUT = value
    end
    @j_PRIVACY_POLICY : String = ""

    def jf_PRIVACY_POLICY : String
        @j_PRIVACY_POLICY
    end

    def jf_PRIVACY_POLICY=(value : String) : String
        @j_PRIVACY_POLICY = value
    end
    @filePath : String = ""

    def jf_filePath : String
        @filePath
    end

    def jf_filePath=(value : String) : String
        @filePath = value
    end

    @@jst_instance : LicenseInitInfoUtil? = nil

    def self.jst_instance : LicenseInitInfoUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LicenseInitInfoUtil?) : LicenseInitInfoUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LicenseInitInfoUtil.new.jinit_LicenseInitInfoUtil()
    end
    

    def self.getInstance : LicenseInitInfoUtil?
        return LicenseInitInfoUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LicenseInitInfoUtil : Nil
    @logUtil = LogUtil.getInstance()
    @stringUtil = StringUtil.getInstance()
    @j_INITFILENAME = "licenseinitdata.dat"
    @j_ABOUT = "about"
    @j_PRIVACY_POLICY = "privacy_policy"
    @filePath = @stringUtil.not_nil!.jf_EMPTY_STRING
    end

    def jinit_LicenseInitInfoUtil : self
        jfields_LicenseInitInfoUtil()
        self
    end
    

    def setFilePath(filePath : String) : Nil
        @filePath = filePath
    end
    

    def write(initData : LicenseInitInfo?) : Nil
        if @filePath == @stringUtil.not_nil!.jf_EMPTY_STRING
            @filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().not_nil!.jf_INIT_PATH
        end
        begin
            tsUtil : TsUtil? = TsUtil.getInstance()
            dataOutputStream : AbDataOutputStream? = DataOutputStreamFactory.getInstance().not_nil!.getInstance(@filePath, @j_INITFILENAME)
            licenseIdCrypted : Array(Int8)? = tsUtil.not_nil!.getByteArray(WeakCrypt.new.jinit_WeakCrypt(1).not_nil!.encrypt(initData.not_nil!.getLicenseId()))
            dataOutputStream.not_nil!.writeUTF(DatabaseEncoder.encode(licenseIdCrypted))
            numberOfLicenseServers : Int32 = initData.not_nil!.getNumberOfServers()
            dataOutputStream.not_nil!.writeInt(numberOfLicenseServers)
            licenseServerCrypted : Array(Int8)? = nil
            index : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < numberOfLicenseServers
                licenseServerCrypted = tsUtil.not_nil!.getByteArray(WeakCrypt.new.jinit_WeakCrypt(3).not_nil!.encrypt(initData.not_nil!.getServer(index)))
                dataOutputStream.not_nil!.writeUTF(DatabaseEncoder.encode(licenseServerCrypted))
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put("Command Failed: " + @j_INITFILENAME, self, "write", e)
            FileStreamFactory.getInstance().not_nil!.delete(@filePath, @j_INITFILENAME)
            raise (e).not_nil!
            else
                raise jex1
            end
        end
    end
    

    def read : LicenseInitInfo?
        return self.readAgain(0)
    end
    

    def readAgain(initializeCounter : Int) : LicenseInitInfo?
        initializeCounter = initializeCounter.to_i32!
        j_METHOD_NAME : String = "readAgain"
        if @filePath == @stringUtil.not_nil!.jf_EMPTY_STRING
            @filePath = URLGLOBALS.getMainPath() + PATH_GLOBALS.getInstance().not_nil!.jf_INIT_PATH
        end
        begin
            @logUtil.not_nil!.putF("LicenseInitInfo File: " + @j_INITFILENAME, self, j_METHOD_NAME)
            fileStreamFactory : FileStreamFactory? = FileStreamFactory.getInstance()
            iFile : AbFileInputStream? = fileStreamFactory.not_nil!.getFileInputStreamInstance(@filePath, @j_INITFILENAME)
            if !(iFile).nil?
                iData : AbDataInputStream? = AbDataInputStream.new.jinit_AbDataInputStream(iFile)
                initInfo : LicenseInitInfo? = LicenseInitInfo.new.jinit_LicenseInitInfo()
                decodedByteArray : Array(Int8)? = DatabaseEncoder.decode(iData.not_nil!.readUTF())
                licenseIdDecoded : String = JR.newString(decodedByteArray)
                initInfo.not_nil!.setLicenseId(WeakCrypt.new.jinit_WeakCrypt(1).not_nil!.decrypt(licenseIdDecoded))
                numberOfLicenseServers : Int32 = iData.not_nil!.readInt()
                j_NEXT_FILE : String = StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_NEXT).not_nil!.append(" License Server From File: ").not_nil!.toString()
                licenseServerDecoded : String = ""
                index : Int32 = 0
                jfor2 = false
                while true
                    if jfor2
                        index &+= 1
                    end
                    jfor2 = true
                    break unless index < numberOfLicenseServers
                    decodedByteArray = DatabaseEncoder.decode(iData.not_nil!.readUTF())
                    licenseServerDecoded = JR.newString(decodedByteArray)
                    initInfo.not_nil!.setServer(WeakCrypt.new.jinit_WeakCrypt(3).not_nil!.decrypt(licenseServerDecoded), index)
                    @logUtil.not_nil!.putF(j_NEXT_FILE + initInfo.not_nil!.getServer(index), self, j_METHOD_NAME)
                end
                return initInfo
            else
                raise (JException.new.jinit_JException("Could Not Load License InitInfo: " + @j_INITFILENAME)).not_nil!
            end
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            begin
                @logUtil.not_nil!.put("Command Failed: " + @j_INITFILENAME, self, j_METHOD_NAME, e)
            rescue jexc3 : ::Exception
                jex3 = JR.jthrowable(jexc3)
                if jex3.is_a?(JException)
                    e2 = jex3.as(JException)
                @logUtil.not_nil!.put("LicenseInitInfo Read Retry: " + @j_INITFILENAME, self, "readAgain()", e2)
                else
                    raise jex3
                end
            end
            raise (JException.new.jinit_JException("LicenseInitInfo Read Error: " + @j_INITFILENAME)).not_nil!
            else
                raise jex2
            end
        end
        return nil
    end
    

    def getFilePath : String
        return @filePath
    end
end

