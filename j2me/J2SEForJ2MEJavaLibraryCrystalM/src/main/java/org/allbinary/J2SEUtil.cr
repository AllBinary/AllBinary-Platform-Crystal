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
# package org.allbinary

class J2SEUtil < JObject

    @@jst_instance : J2SEUtil? = nil

    def self.jst_instance : J2SEUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : J2SEUtil?) : J2SEUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = J2SEUtil.new.jinit_J2SEUtil()
    end
    

    def self.getInstance : J2SEUtil?
        return J2SEUtil.jst_instance
    end

    def jinit_J2SEUtil : self
        self
    end
    

    def getHashMapAsArray(hashMap : JHashMap?) : Array(JAny)?
        objectArray : Array(JAny)? = hashMap.not_nil!.keySet().not_nil!.toArray()
        return objectArray
    end
    

    def getMapAsArray(map : JMap?) : Array(JAny)?
        objectArray : Array(JAny)? = map.not_nil!.keySet().not_nil!.toArray()
        return objectArray
    end
    

    def getSetAsArray(set : JSet?) : Array(JAny)?
        objectArray : Array(JAny)? = set.not_nil!.toArray()
        return objectArray
    end
end

