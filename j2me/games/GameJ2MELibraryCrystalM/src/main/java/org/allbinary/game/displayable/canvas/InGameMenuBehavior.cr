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
# package org.allbinary.game.displayable.canvas

class InGameMenuBehavior < BaseMenuBehavior

    @@jst_instanceC : InGameMenuBehavior? = nil

    def self.jst_instanceC : InGameMenuBehavior?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : InGameMenuBehavior?) : InGameMenuBehavior?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = InGameMenuBehavior.new.jinit_InGameMenuBehavior()
    end
    

    def self.getInstance : InGameMenuBehavior?
        return InGameMenuBehavior.jst_instanceC
    end

    def jinit_InGameMenuBehavior : self
        jinit_BaseMenuBehavior()
        self
    end
    

    def onDisplayChangeEvent(allBinaryGameCanvas : AllBinaryGameCanvas?, displayChangeEvent : DisplayChangeEvent?) : Nil
        allBinaryGameCanvas.not_nil!.updateMenuFromEvent(displayChangeEvent)
    end
    

    def initSpecialPaint(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.setNonBotPaintableP(GameCanvasNonBotPaintable.new.jinit_GameCanvasNonBotPaintable(allBinaryGameCanvas))
    end
    

    def initMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.initMenu2()
    end
    

    def updateMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.initMenu2()
    end
    

    def popupMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.popupMenu2()
    end
    

    def closeMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.closeMenu2()
    end
end

