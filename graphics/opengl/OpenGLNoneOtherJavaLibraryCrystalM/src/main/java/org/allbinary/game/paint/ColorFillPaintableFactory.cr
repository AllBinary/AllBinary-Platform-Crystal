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
# package org.allbinary.game.paint

class ColorFillPaintableFactory < JObject

    @@jst_instance : ColorFillPaintableFactory? = nil

    def self.jst_instance : ColorFillPaintableFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ColorFillPaintableFactory?) : ColorFillPaintableFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ColorFillPaintableFactory.new.jinit_ColorFillPaintableFactory()
    end
    

    def self.getInstance : ColorFillPaintableFactory?
        return ColorFillPaintableFactory.jst_instance
    end

    def jinit_ColorFillPaintableFactory : self
        self
    end
    

    def getInstance(basicColor : BasicColor?, forThreedCanvas : Bool) : ColorFillBasePaintable?
        operatingSystem : GenericOperatingSystem? = OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
        if operatingSystem.not_nil!.isOverScan()
            return OverScanColorFillPaintable.new.jinit_OverScanColorFillPaintable(basicColor)
        else
            return ColorFillPaintable.new.jinit_ColorFillPaintable(basicColor)
        end
        return nil
    end
end

