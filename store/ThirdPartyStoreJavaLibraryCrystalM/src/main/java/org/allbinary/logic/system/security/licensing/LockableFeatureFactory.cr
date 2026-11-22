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
# package org.allbinary.logic.system.security.licensing

class LockableFeatureFactory < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : LockableFeatureFactory? = nil

    def self.jst_instance : LockableFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LockableFeatureFactory?) : LockableFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LockableFeatureFactory.new.jinit_LockableFeatureFactory()
    end
    

    def self.getInstance : LockableFeatureFactory?
        return LockableFeatureFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LockableFeatureFactory : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_LockableFeatureFactory : self
        jfields_LockableFeatureFactory()
        self
    end
    

    def getList : BasicArrayList?
        return @list
    end
end

