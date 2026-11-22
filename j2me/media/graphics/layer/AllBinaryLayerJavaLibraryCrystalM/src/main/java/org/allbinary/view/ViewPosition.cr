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
# package org.allbinary.view

class ViewPosition < ViewPositionBase
    @allbinaryLayer : AllBinaryLayer? = nil

    def jf_allbinaryLayer : AllBinaryLayer?
        @allbinaryLayer
    end

    def jf_allbinaryLayer=(value : AllBinaryLayer?) : AllBinaryLayer?
        @allbinaryLayer = value
    end
    

    def self.getInstanceD : ViewPosition?
        return ViewPosition.new.jinit_ViewPosition(0, 0, 0)
    end

    # Java field initializers run after the super constructor
    def jfields_ViewPosition : Nil
    @allbinaryLayer = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    end
    

    def jinit_ViewPosition(x : Int, y : Int, z : Int) : self
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        jinit_ViewPositionBase(x, y, z)
        jfields_ViewPosition()
        self
    end
    

    def getX : Int32
        return @allbinaryLayer.not_nil!.getXP()
    end
    

    def getY : Int32
        return @allbinaryLayer.not_nil!.getYP()
    end
    

    def getZ : Int32
        return @allbinaryLayer.not_nil!.getZP()
    end
    

    def getX2 : Int32
        return self.getX() &+ @allbinaryLayer.not_nil!.getWidth()
    end
    

    def getY2 : Int32
        return self.getY() &+ @allbinaryLayer.not_nil!.getHeight()
    end
    

    def getZ2 : Int32
        return (((self.getZ()).to_i64! &+ @allbinaryLayer.not_nil!.getDepth())).to_i32!
    end
    

    def setAllbinaryLayer(allbinaryLayer : JAny) : Nil
        @allbinaryLayer = JR.cast(allbinaryLayer, AllBinaryLayer)
    end
end

