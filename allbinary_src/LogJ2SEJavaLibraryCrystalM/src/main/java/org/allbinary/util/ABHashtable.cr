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
# package org.allbinary.util

class ABHashtable < JHashtable
    

    def jinit_ABHashtable(initialCapacity : Int) : self
        initialCapacity = initialCapacity.to_i32!
        jinit_JHashtable(initialCapacity)
        self
    end
    

    def jinit_ABHashtable : self
        jinit_JHashtable()
        self
    end
end

