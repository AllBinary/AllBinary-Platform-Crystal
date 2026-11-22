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
# package org.allbinary.graphics.form

class ItemPaintable < JObject

    def jinit_ItemPaintable : self
        self
    end
    

    def paint(graphics : Graphics?, currentIndex : Int, x : Int, y : Int) : Nil
        currentIndex = currentIndex.to_i32!
        x = x.to_i32!
        y = y.to_i32!
    end
end

