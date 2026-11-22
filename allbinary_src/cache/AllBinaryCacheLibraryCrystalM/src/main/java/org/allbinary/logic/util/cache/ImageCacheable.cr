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
# package org.allbinary.logic.util.cache

class ImageCacheable < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end

    # Java field initializers run after the super constructor
    def jfields_ImageCacheable : Nil
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_ImageCacheable(name : String, anyType : JAny) : self
        jfields_ImageCacheable()
        self
    end
    

    def getKey : JAny
        return @name
    end
    

    def toString : String
        return @name
    end
end

