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
# package org.allbinary.logic.system.loader

class WebappClassLoaderInfo < JObject

    @@jst_classLoader : JAny = nil

    def self.jst_classLoader : JAny
        jclinit
        @@jst_classLoader
    end

    def self.jst_classLoader=(value : JAny) : JAny
        jclinit
        @@jst_classLoader = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_classLoader = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.setLoader(classLoader : JClassLoader?) : Nil
        WebappClassLoaderInfo.jst_classLoader = classLoader
    end
    

    def self.getLoader : JClassLoader?
        return JR.cast(WebappClassLoaderInfo.jst_classLoader, JClassLoader)
    end
    

    def jinit_WebappClassLoaderInfo : self
        self
    end
end

