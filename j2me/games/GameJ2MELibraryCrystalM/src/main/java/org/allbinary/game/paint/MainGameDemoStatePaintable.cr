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

class MainGameDemoStatePaintable < Paintable
    @ownershipPaintableInterface : Paintable? = nil

    def jf_ownershipPaintableInterface : Paintable?
        @ownershipPaintableInterface
    end

    def jf_ownershipPaintableInterface=(value : Paintable?) : Paintable?
        @ownershipPaintableInterface = value
    end
    @menuPaintableInterface : Paintable? = nil

    def jf_menuPaintableInterface : Paintable?
        @menuPaintableInterface
    end

    def jf_menuPaintableInterface=(value : Paintable?) : Paintable?
        @menuPaintableInterface = value
    end
    

    def jinit_MainGameDemoStatePaintable(ownershipPaintableInterface : Paintable?, menuPaintableInterface : Paintable?) : self
        jinit_Paintable()
        @ownershipPaintableInterface = ownershipPaintableInterface
        @menuPaintableInterface = menuPaintableInterface
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @menuPaintableInterface.not_nil!.paint(graphics)
        @ownershipPaintableInterface.not_nil!.paint(graphics)
    end
    

    def getOwnershipPaintableInterface : Paintable?
        return @ownershipPaintableInterface
    end
    

    def getMenuPaintableInterface : Paintable?
        return @menuPaintableInterface
    end
end

