# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

class VectorUtil < JObject

    @@jst_instance : VectorUtil? = nil

    def self.jst_instance : VectorUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : VectorUtil?) : VectorUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = VectorUtil.new.jinit_VectorUtil()
    end
    

    def self.getInstance : VectorUtil?
        return VectorUtil.jst_instance
    end

    def jinit_VectorUtil : self
        self
    end
    

    def getSize(anyType : JAny) : Int32
        vector : JVector? = JR.cast(anyType, JVector)
        return vector.not_nil!.size()
    end
    

    def elementAt(anyType : JAny, index : Int) : JAny
        index = index.to_i32!
        vector : JVector? = JR.cast(anyType, JVector)
        return vector.not_nil!.elementAt(index)
    end
end

