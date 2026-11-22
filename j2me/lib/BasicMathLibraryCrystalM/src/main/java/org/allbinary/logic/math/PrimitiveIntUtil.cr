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
# package org.allbinary.logic.math

class PrimitiveIntUtil < JObject
    

    def self.getArrayInstance : Array(Int32)?
        return NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY
    end
    

    def self.getTwoDimensionalArrayInstance : Array(Array(Int32)?)?
        return NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY
    end
    

    def jinit_PrimitiveIntUtil : self
        self
    end
end

