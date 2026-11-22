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
# package org.allbinary.graphics.paint

class StringLocationPaintable < LocationPaintable
    @value : String = ""

    def jf_value : String
        @value
    end

    def jf_value=(value : String) : String
        @value = value
    end
    

    def jinit_StringLocationPaintable(value : String) : self
        jinit_LocationPaintable()
        @value = value
        self
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        graphics.not_nil!.drawString(@value, x, y, 0)
    end
end

