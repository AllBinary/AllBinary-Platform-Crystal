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
# package org.allbinary.input

class TouchJ2ME < JObject
    

    def jinit_TouchJ2ME : self
        self
    end
    

    def pointerDragged(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def pointerPressed(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def pointerReleased(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
end

