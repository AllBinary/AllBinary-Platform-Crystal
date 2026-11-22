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
# package org.allbinary.logic.system

class PlatformAssetManager < JObject

    @@jst_instance : PlatformAssetManager? = nil

    def self.jst_instance : PlatformAssetManager?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PlatformAssetManager?) : PlatformAssetManager?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PlatformAssetManager.new.jinit_PlatformAssetManager()
    end
    

    def self.getInstance : PlatformAssetManager?
        return PlatformAssetManager.jst_instance
    end

    def jinit_PlatformAssetManager : self
        self
    end
    

    def getResourceAsStream(resource : String) : JInputStream?
        resourceUtil : ResourceUtil? = ResourceUtil.getInstance()
        inputStream : JInputStream? = resourceUtil.not_nil!.getResourceAsStream(resource)
        return inputStream
    end
end

