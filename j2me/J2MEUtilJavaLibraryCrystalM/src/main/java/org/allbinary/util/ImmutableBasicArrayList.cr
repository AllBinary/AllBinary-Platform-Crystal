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
# package org.allbinary.util

class ImmutableBasicArrayList < BasicArrayListS
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    

    def jinit_ImmutableBasicArrayList(name : String, size : Int) : self
        size = size.to_i32!
        jinit_BasicArrayListS(size)
        @name = name
        self
    end
    

    def add(e : JAny) : Bool
        ForcedLogUtil.log(@name, self)
        return true
    end
    

    def addAt(index : Int, element : JAny) : Nil
        index = index.to_i32!
        ForcedLogUtil.log(@name, self)
    end
    

    def toString : String
        return @name
    end
end

