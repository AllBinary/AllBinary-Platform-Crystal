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
# package org.allbinary.layer.event

class ScrollMapEvent < AllBinaryEventObject
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    

    def jinit_ScrollMapEvent(anyType : JAny) : self
        jinit_AllBinaryEventObject(anyType)
        self
    end
    

    def setDx(dx : Int) : Nil
        dx = dx.to_i32!
        @dx = dx
    end
    

    def getDx : Int32
        return @dx
    end
    

    def setDy(dy : Int) : Nil
        dy = dy.to_i32!
        @dy = dy
    end
    

    def getDy : Int32
        return @dy
    end
    

    def setDxDy(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        @dx = dx
        @dy = dy
    end
end

