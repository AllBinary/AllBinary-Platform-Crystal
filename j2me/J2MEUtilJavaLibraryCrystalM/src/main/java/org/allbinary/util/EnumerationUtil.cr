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
# package org.allbinary.util

class EnumerationUtil < JObject

    @@jst_instance : EnumerationUtil? = nil

    def self.jst_instance : EnumerationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : EnumerationUtil?) : EnumerationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = EnumerationUtil.new.jinit_EnumerationUtil()
    end
    

    def self.getInstance : EnumerationUtil?
        return EnumerationUtil.jst_instance
    end

    def jinit_EnumerationUtil : self
        self
    end
    

    def hasMoreElements(enumeration : JEnumeration?) : Bool
        return enumeration.not_nil!.hasMoreElements()
    end
    

    def nextElement(enumeration : JEnumeration?) : JAny
        return enumeration.not_nil!.nextElement()
    end
    

    def getAsArray(enumeration : JEnumeration?) : Array(JAny)?
        basicArrayList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        while self.hasMoreElements(enumeration)
            basicArrayList.not_nil!.add(self.nextElement(enumeration))
        end
        return basicArrayList.not_nil!.toArray()
    end
end

