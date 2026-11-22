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
# package org.allbinary.game.layer

class LayerPlacer < JObject
    @enumerationUtil : EnumerationUtil? = nil

    def jf_enumerationUtil : EnumerationUtil?
        @enumerationUtil
    end

    def jf_enumerationUtil=(value : EnumerationUtil?) : EnumerationUtil?
        @enumerationUtil = value
    end
    @layerInterfaceVisitor : LayerInterfaceVisitor? = nil

    def jf_layerInterfaceVisitor : LayerInterfaceVisitor?
        @layerInterfaceVisitor
    end

    def jf_layerInterfaceVisitor=(value : LayerInterfaceVisitor?) : LayerInterfaceVisitor?
        @layerInterfaceVisitor = value
    end
    @dimension : GPoint? = nil

    def jf_dimension : GPoint?
        @dimension
    end

    def jf_dimension=(value : GPoint?) : GPoint?
        @dimension = value
    end

    # Java field initializers run after the super constructor
    def jfields_LayerPlacer : Nil
    @enumerationUtil = EnumerationUtil.getInstance()
    
    
    end
    

    def jinit_LayerPlacer(layerInterfaceVisitor : LayerInterfaceVisitor?, dimension : GPoint?) : self
        jfields_LayerPlacer()
        @layerInterfaceVisitor = layerInterfaceVisitor
        @dimension = dimension
        self
    end
    

    def processList(list : BasicArrayList?) : Nil
        size : Int32 = list.not_nil!.size()
        layerPlacementInterface : LayerPlacementInterface? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            layerPlacementInterface = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], LayerPlacementInterface)
            self.process(layerPlacementInterface)
        end
    end
    

    def process(layerPlacementInterface : LayerPlacementInterface?) : Nil
        relativePoint : GPoint? = self.getPoint(layerPlacementInterface)
        layerInterfaceFactory : LayerInterfaceFactory? = LayerInterfaceFactory.getInstance()
        hashtable : ABHashtable? = layerPlacementInterface.not_nil!.getInstance()
        enumeration : JEnumeration? = hashtable.not_nil!.keys()
        point : GPoint? = nil
        layerHashtable : ABHashtable? = nil
        x : Int32 = 0
        y : Int32 = 0
        z : Int32 = 0
        layerInterface : AllBinaryLayer? = nil
        while @enumerationUtil.not_nil!.hasMoreElements(enumeration)
            point = JR.cast(@enumerationUtil.not_nil!.nextElement(enumeration), GPoint)
            layerHashtable = JR.cast(hashtable.not_nil!.get(point), ABHashtable)
            x = point.not_nil!.getX() &+ relativePoint.not_nil!.getX()
            y = point.not_nil!.getY() &+ relativePoint.not_nil!.getY()
            z = point.not_nil!.getZ() &+ relativePoint.not_nil!.getZ()
            layerInterface = layerInterfaceFactory.not_nil!.getNexInstance(layerHashtable, x, y, z)
            @layerInterfaceVisitor.not_nil!.visit(layerInterface)
        end
    end
    

    def getPoint(layerPlacementInterface : LayerPlacementInterface?) : GPoint?
        pointFactory : PointFactory? = PointFactory.getInstance()
        layerPlacementType : LayerPlacementType? = layerPlacementInterface.not_nil!.getLayerType()
        if layerPlacementType == LayerPlacementTypeFactory.getInstance().not_nil!.jf_MAP
            width = layerPlacementInterface.not_nil!.getWidth()
            height = layerPlacementInterface.not_nil!.getHeight()
            x = ((@dimension.not_nil!.getX() &- width).tdiv(2))
            y = ((@dimension.not_nil!.getY() &- height).tdiv(2))
            return pointFactory.not_nil!.createXY(x, y)
        elsif layerPlacementType == LayerPlacementTypeFactory.getInstance().not_nil!.jf_UP
            width = layerPlacementInterface.not_nil!.getWidth()
            height = layerPlacementInterface.not_nil!.getHeight()
            x = ((@dimension.not_nil!.getX() &- width).tdiv(2))
            y = JR.neg(height)
            return pointFactory.not_nil!.createXY(x, y)
        else
            raise (JException.new.jinit_JException("PlacementType Not Recognized")).not_nil!
        end
        return nil
    end
end

