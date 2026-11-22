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
# package org.allbinary.resources

class KeyValueFactory < JObject
    @j_MAP : ABHashtable? = nil

    def jf_MAP : ABHashtable?
        @j_MAP
    end

    def jf_MAP=(value : ABHashtable?) : ABHashtable?
        @j_MAP = value
    end

    @@jst_instance : KeyValueFactory? = nil

    def self.jst_instance : KeyValueFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : KeyValueFactory?) : KeyValueFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = KeyValueFactory.new.jinit_KeyValueFactory()
    end
    

    def self.getInstance : KeyValueFactory?
        return KeyValueFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_KeyValueFactory : Nil
    @j_MAP = StdUtil.getInstance().not_nil!.createHashtable()
    end

    def jinit_KeyValueFactory : self
        jfields_KeyValueFactory()
        self
    end
    

    def get(key : String) : String
        if !@j_MAP.not_nil!.containsKey(key)
            return key
        end
        return JR.castString(@j_MAP.not_nil!.get(key))
    end
end

