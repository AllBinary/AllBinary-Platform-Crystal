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
# package org.allbinary.android

class AndroidInfoFactory < JObject
    @version : Int32 = 0

    def jf_version : Int32
        @version
    end

    def jf_version=(value : Int32) : Int32
        @version = value
    end

    @@jst_instance : AndroidInfoFactory? = nil

    def self.jst_instance : AndroidInfoFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AndroidInfoFactory?) : AndroidInfoFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AndroidInfoFactory.new.jinit_AndroidInfoFactory()
    end
    

    def self.getInstance : AndroidInfoFactory?
        return AndroidInfoFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AndroidInfoFactory : Nil
    @version = 8
    end

    def jinit_AndroidInfoFactory : self
        jfields_AndroidInfoFactory()
        self
    end
    

    def getVersion : Int32
        return @version
    end
end

