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
# package org.allbinary.math

class LayerDistanceUtil < JObject
    @mathUtil : MathUtil? = nil

    def jf_mathUtil : MathUtil?
        @mathUtil
    end

    def jf_mathUtil=(value : MathUtil?) : MathUtil?
        @mathUtil = value
    end

    @@jst_instance : LayerDistanceUtil? = nil

    def self.jst_instance : LayerDistanceUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LayerDistanceUtil?) : LayerDistanceUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LayerDistanceUtil.new.jinit_LayerDistanceUtil()
    end
    

    def self.getInstance : LayerDistanceUtil?
        return LayerDistanceUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LayerDistanceUtil : Nil
    @mathUtil = MathUtil.getInstance()
    end

    def jinit_LayerDistanceUtil : self
        jfields_LayerDistanceUtil()
        self
    end
    

    def getDistance(layerInterface : AllBinaryLayer?, layerInterface2 : AllBinaryLayer?) : Int32
        dx : Int32 = (layerInterface.not_nil!.getXP() &+ layerInterface.not_nil!.getHalfWidth()) &- (layerInterface2.not_nil!.getXP() &+ layerInterface2.not_nil!.getHalfWidth())
        dy : Int32 = (layerInterface.not_nil!.getYP() &+ layerInterface.not_nil!.getHalfHeight()) &- (layerInterface2.not_nil!.getYP() &+ layerInterface2.not_nil!.getHalfHeight())
        return @mathUtil.not_nil!.sqrt((dx &* dx) &+ (dy &* dy))
    end
    

    def getDistance3D(layerInterface : AllBinaryLayer?, layerInterface2 : AllBinaryLayer?) : Int32
        dx : Int32 = (layerInterface.not_nil!.getXP() &+ layerInterface.not_nil!.getHalfWidth()) &- (layerInterface2.not_nil!.getXP() &+ layerInterface2.not_nil!.getHalfWidth())
        dy : Int32 = (layerInterface.not_nil!.getYP() &+ layerInterface.not_nil!.getHalfHeight()) &- (layerInterface2.not_nil!.getYP() &+ layerInterface2.not_nil!.getHalfHeight())
        dz : Int32 = (layerInterface.not_nil!.getZP() &+ layerInterface.not_nil!.getHalfDepth()) &- (layerInterface2.not_nil!.getZP() &+ layerInterface2.not_nil!.getHalfDepth())
        return @mathUtil.not_nil!.sqrt((dx &* dx) &+ (dy &* dy) &+ (dz &* dz))
    end
    

    def getDistanceAt(layerInterface : AllBinaryLayer?, point : GPoint?) : Int32
        dx : Int32 = layerInterface.not_nil!.getXP() &- point.not_nil!.getX()
        dy : Int32 = layerInterface.not_nil!.getYP() &- point.not_nil!.getY()
        return @mathUtil.not_nil!.sqrt((dx &* dx) &+ (dy &* dy))
    end
end

