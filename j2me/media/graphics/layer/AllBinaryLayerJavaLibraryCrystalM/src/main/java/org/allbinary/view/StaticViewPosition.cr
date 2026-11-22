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
# package org.allbinary.view

class StaticViewPosition < ViewPosition
    

    def jinit_StaticViewPosition(x : Int, y : Int, z : Int) : self
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        jinit_ViewPosition(x, y, z)
        self
    end
    

    def getX : Int32
        return self.getRawX()
    end
    

    def getY : Int32
        return self.getRawY()
    end
    

    def getZ : Int32
        return self.getRawZ()
    end
end

