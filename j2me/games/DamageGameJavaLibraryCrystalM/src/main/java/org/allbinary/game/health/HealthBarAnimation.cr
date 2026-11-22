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
# package org.allbinary.game.health

class HealthBarAnimation < Animation
    @basicColorFactory : BasicColorFactory? = nil

    def jf_basicColorFactory : BasicColorFactory?
        @basicColorFactory
    end

    def jf_basicColorFactory=(value : BasicColorFactory?) : BasicColorFactory?
        @basicColorFactory = value
    end
    @x2 : Int32 = 0

    def jf_x2 : Int32
        @x2
    end

    def jf_x2=(value : Int32) : Int32
        @x2 = value
    end
    @thickness : Int32 = 0

    def jf_thickness : Int32
        @thickness
    end

    def jf_thickness=(value : Int32) : Int32
        @thickness = value
    end
    @location : Int32 = 0

    def jf_location : Int32
        @location
    end

    def jf_location=(value : Int32) : Int32
        @location = value
    end
    @allbinaryLayer : AllBinaryLayer? = nil

    def jf_allbinaryLayer : AllBinaryLayer?
        @allbinaryLayer
    end

    def jf_allbinaryLayer=(value : AllBinaryLayer?) : AllBinaryLayer?
        @allbinaryLayer = value
    end

    # Java field initializers run after the super constructor
    def jfields_HealthBarAnimation : Nil
    @basicColorFactory = BasicColorFactory.getInstance()
    
    
    
    
    end
    

    def jinit_HealthBarAnimation(layerInterface : AllBinaryLayer?, location : Int) : self
        location = location.to_i32!
        jinit_Animation()
        jfields_HealthBarAnimation()
        @allbinaryLayer = layerInterface
        @location = location
        basicHudFactory : BasicHudFactory? = BasicHudFactory.getInstance()
        if @location != basicHudFactory.not_nil!.jf_TOPLEFT && @location != basicHudFactory.not_nil!.jf_BOTTOMLEFT
            raise (JException.new.jinit_JException("Location Not Valid")).not_nil!
        end
        if layerInterface.not_nil!.getWidth() > 40
            @thickness = 3
        elsif layerInterface.not_nil!.getWidth() > 20
            @thickness = 2
        else
            @thickness = 1
        end
        self
    end
    

    def onHealthChange(newX2 : Int) : Nil
        newX2 = newX2.to_i32!
        @x2 = newX2
        quarter : Int32 = (JR.shr(@allbinaryLayer.not_nil!.getWidth(), 2))
        if @x2 > quarter &* 3
            @basicColor = @basicColorFactory.not_nil!.jf_GREEN
            @colorP = @basicColor.not_nil!.intValue()
        elsif @x2 > quarter &* 2
            @basicColor = @basicColorFactory.not_nil!.jf_YELLOW
            @colorP = @basicColor.not_nil!.intValue()
        elsif @x2 > quarter
            @basicColor = @basicColorFactory.not_nil!.jf_ORANGE
            @colorP = @basicColor.not_nil!.intValue()
        else
            @basicColor = @basicColorFactory.not_nil!.jf_RED
            @colorP = @basicColor.not_nil!.intValue()
        end
    end
    

    def getY : Int32
        basicHudFactory : BasicHudFactory? = BasicHudFactory.getInstance()
        if @location == basicHudFactory.not_nil!.jf_TOPLEFT
            return @allbinaryLayer.not_nil!.getViewPosition().not_nil!.getY() - 4
        elsif @location == basicHudFactory.not_nil!.jf_BOTTOMLEFT
            return @allbinaryLayer.not_nil!.getViewPosition().not_nil!.getY2() &+ 4
        end
        return -1
    end
end

