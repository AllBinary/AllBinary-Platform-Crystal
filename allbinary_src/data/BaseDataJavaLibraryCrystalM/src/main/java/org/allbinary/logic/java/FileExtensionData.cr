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
# package org.allbinary.logic.java

class FileExtensionData < JObject
    @j_DOT_JAVA_SOURCE : String = ""

    def jf_DOT_JAVA_SOURCE : String
        @j_DOT_JAVA_SOURCE
    end

    def jf_DOT_JAVA_SOURCE=(value : String) : String
        @j_DOT_JAVA_SOURCE = value
    end
    @j_JAVA_SOURCE : String = ""

    def jf_JAVA_SOURCE : String
        @j_JAVA_SOURCE
    end

    def jf_JAVA_SOURCE=(value : String) : String
        @j_JAVA_SOURCE = value
    end

    @@jst_instance : FileExtensionData? = nil

    def self.jst_instance : FileExtensionData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FileExtensionData?) : FileExtensionData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FileExtensionData.new.jinit_FileExtensionData()
    end
    

    def self.getInstance : FileExtensionData?
        return FileExtensionData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_FileExtensionData : Nil
    @j_DOT_JAVA_SOURCE = ".java"
    @j_JAVA_SOURCE = "java"
    end
    

    def jinit_FileExtensionData : self
        jfields_FileExtensionData()
        self
    end
end

