# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.persistance

class PlatformRecordIdUtil < JObject
    @j_PLATFORM_SHORT_NAME : String = ""

    def jf_PLATFORM_SHORT_NAME : String
        @j_PLATFORM_SHORT_NAME
    end

    def jf_PLATFORM_SHORT_NAME=(value : String) : String
        @j_PLATFORM_SHORT_NAME = value
    end

    @@jst_instance : PlatformRecordIdUtil? = nil

    def self.jst_instance : PlatformRecordIdUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PlatformRecordIdUtil?) : PlatformRecordIdUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PlatformRecordIdUtil.new.jinit_PlatformRecordIdUtil()
    end
    

    def self.getInstance : PlatformRecordIdUtil?
        return PlatformRecordIdUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PlatformRecordIdUtil : Nil
    @j_PLATFORM_SHORT_NAME = "JME"
    end

    def jinit_PlatformRecordIdUtil : self
        jfields_PlatformRecordIdUtil()
        self
    end
    

    def getRecordId(abeClientInformation : AbeClientInformationInterface?, baseRecordId : String) : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append((abeClientInformation.not_nil!.toShortString()).as(String)).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_UNDERSCORE).not_nil!.append(@j_PLATFORM_SHORT_NAME).not_nil!.append(baseRecordId).not_nil!.toString()
    end
end

