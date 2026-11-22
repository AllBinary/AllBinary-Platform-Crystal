# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package javax.microedition.lcdui

class PlatformImage < JObject

    def jinit_PlatformImage : self
        self
    end
    

    def getImage(graphicsSurface2 : JAny) : JAny
        return NullImage.jst_NULL_IMAGE
    end
    

    def getSurfaceWidth(graphicsSurface2 : JAny, width : Int) : Int32
        width = width.to_i32!
        return width
    end
    

    def getSurfaceHeight(graphicsSurface2 : JAny, height : Int) : Int32
        height = height.to_i32!
        return height
    end
    

    def getWidth(image : Image?, width : Int) : Int32
        width = width.to_i32!
        return width
    end
    

    def getHeight(image : Image?, height : Int) : Int32
        height = height.to_i32!
        return height
    end
    

    def getGraphics(graphicsSurface : JAny, width : Int, height : Int, image : Image?) : Graphics?
        width = width.to_i32!
        height = height.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def drawImage(image : Image?, x : Int, y : Int, anchor : Int, g2 : Graphics?, g : JAny) : Nil
        x = x.to_i32!
        y = y.to_i32!
        anchor = anchor.to_i32!
    end
    

    def drawRegion(image : Image?, x_src : Int, y_src : Int, width : Int, height : Int, transform : Int, x_dst : Int, y_dst : Int, anchor : Int, g : Graphics?) : Nil
        x_src = x_src.to_i32!
        y_src = y_src.to_i32!
        width = width.to_i32!
        height = height.to_i32!
        transform = transform.to_i32!
        x_dst = x_dst.to_i32!
        y_dst = y_dst.to_i32!
        anchor = anchor.to_i32!
    end
    

    def getRGB(argb : Array(Int32)?, offset : Int, scanlength : Int, x : Int, y : Int, width : Int, height : Int, image : Image?) : Nil
        offset = offset.to_i32!
        scanlength = scanlength.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
    end
    

    def setRGB(argb : Array(Int32)?, offset : Int, scanlength : Int, x : Int, y : Int, width : Int, height : Int, image : Image?) : Nil
        offset = offset.to_i32!
        scanlength = scanlength.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        width = width.to_i32!
        height = height.to_i32!
    end
    

    def getData(image : Image?) : Array(Int32)?
        return NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY
    end
end

