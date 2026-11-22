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
# package org.allbinary.logic.math.permutations

class ComparableObject < JObject
    include JComparable

    def jinit_ComparableObject : self
        self
    end
    

    def compareTo(anyType : JAny) : Int32
        if TsUtil.getInstance().not_nil!.hashCode(self) < TsUtil.getInstance().not_nil!.hashCode(anyType)
            return -1
        elsif TsUtil.getInstance().not_nil!.hashCode(self) > TsUtil.getInstance().not_nil!.hashCode(anyType)
            return 1
        end
        return 0
    end
end

