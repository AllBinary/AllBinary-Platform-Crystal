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

class BasicArrayListS < BasicArrayList
    

    def jinit_BasicArrayListS(size : Int) : self
        size = size.to_i32!
        jinit_BasicArrayList(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT_ARRAY)
        if size < 0
            raise (JIllegalArgumentException.new.jinit_JIllegalArgumentException(StringMaker.new.jinit_StringMaker().not_nil!.append("Init Size Exception: ").not_nil!.appendint(size).not_nil!.toString())).not_nil!
        end
        @objectArray = Array(JAny).new(size, nil)
        self
    end
end

