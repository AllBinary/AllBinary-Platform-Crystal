# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.system.security.crypt.jcehelper

class BaseSecretComposite < JObject

    @@jst_NULL_SECRET_COMPOSITE : BaseSecretComposite? = nil

    def self.jst_NULL_SECRET_COMPOSITE : BaseSecretComposite?
        jclinit
        @@jst_NULL_SECRET_COMPOSITE
    end

    def self.jst_NULL_SECRET_COMPOSITE=(value : BaseSecretComposite?) : BaseSecretComposite?
        jclinit
        @@jst_NULL_SECRET_COMPOSITE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_SECRET_COMPOSITE = BaseSecretComposite.new.jinit_BaseSecretComposite()
    end

    def jinit_BaseSecretComposite : self
        self
    end
    

    def encrypt(array : Array(Int8)?) : Array(Int8)?
        return NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
    end
    

    def decrypt(array : Array(Int8)?) : Array(Int8)?
        return NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
    end
end

