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

class ViewPositionBase < GPoint

    @@jst_NULL_VIEW_POSITION : ViewPositionBase? = nil

    def self.jst_NULL_VIEW_POSITION : ViewPositionBase?
        jclinit
        @@jst_NULL_VIEW_POSITION
    end

    def self.jst_NULL_VIEW_POSITION=(value : ViewPositionBase?) : ViewPositionBase?
        jclinit
        @@jst_NULL_VIEW_POSITION = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_VIEW_POSITION = ViewPositionBase.new.jinit_ViewPositionBase(0, 0, 0)
    end
    

    def jinit_ViewPositionBase(x : Int, y : Int, z : Int) : self
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        jinit_GPoint(x, y, z)
        self
    end
    

    def getX2 : Int32
        return self.getX()
    end
    

    def getY2 : Int32
        return self.getY()
    end
    

    def getZ2 : Int32
        return self.getZ()
    end
    

    def setAllbinaryLayer(allbinaryLayer : JAny) : Nil
    end
end

