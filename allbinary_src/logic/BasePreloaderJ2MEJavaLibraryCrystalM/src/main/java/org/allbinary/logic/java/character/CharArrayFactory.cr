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
# package org.allbinary.logic.java.character

class CharArrayFactory < JObject
    @zeroCharArray : Array(UInt16)? = nil

    def jf_zeroCharArray : Array(UInt16)?
        @zeroCharArray
    end

    def jf_zeroCharArray=(value : Array(UInt16)?) : Array(UInt16)?
        @zeroCharArray = value
    end

    @@jst_instance : CharArrayFactory? = nil

    def self.jst_instance : CharArrayFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CharArrayFactory?) : CharArrayFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CharArrayFactory.new.jinit_CharArrayFactory()
    end
    

    def self.getInstance : CharArrayFactory?
        return CharArrayFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CharArrayFactory : Nil
    @zeroCharArray = Array(UInt16).new(0, 0_u16)
    end

    def jinit_CharArrayFactory : self
        jfields_CharArrayFactory()
        self
    end
    

    def getZeroCharArray : Array(UInt16)?
        return @zeroCharArray
    end
end

