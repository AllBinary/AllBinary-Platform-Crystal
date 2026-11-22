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

class FilePathData < JObject
    @j_SEPARATORCHAR : UInt16 = 0_u16

    def jf_SEPARATORCHAR : UInt16
        @j_SEPARATORCHAR
    end

    def jf_SEPARATORCHAR=(value : UInt16) : UInt16
        @j_SEPARATORCHAR = value
    end
    @j_PATH_START : String = ""

    def jf_PATH_START : String
        @j_PATH_START
    end

    def jf_PATH_START=(value : String) : String
        @j_PATH_START = value
    end

    @@jst_instance : FilePathData? = nil

    def self.jst_instance : FilePathData?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FilePathData?) : FilePathData?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FilePathData.new.jinit_FilePathData()
    end
    

    def self.getInstance : FilePathData?
        return FilePathData.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_FilePathData : Nil
    @j_SEPARATORCHAR = '\\'.ord.to_u16
    @j_PATH_START = "\\\\"
    end
    

    def jinit_FilePathData : self
        jfields_FilePathData()
        self
    end
end

