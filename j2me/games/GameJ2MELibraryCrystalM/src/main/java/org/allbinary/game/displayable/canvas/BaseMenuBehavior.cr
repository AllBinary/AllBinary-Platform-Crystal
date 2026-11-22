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

class BaseMenuBehavior < JObject

    @@jst_instance : BaseMenuBehavior? = nil

    def self.jst_instance : BaseMenuBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BaseMenuBehavior?) : BaseMenuBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BaseMenuBehavior.new.jinit_BaseMenuBehavior()
    end
    

    def self.getInstance : BaseMenuBehavior?
        return BaseMenuBehavior.jst_instance
    end

    def jinit_BaseMenuBehavior : self
        self
    end
    

    def onDisplayChangeEvent(allBinaryGameCanvas : AllBinaryGameCanvas?, displayChangeEvent : DisplayChangeEvent?) : Nil
    end
    

    def initSpecialPaint(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
        allBinaryGameCanvas.not_nil!.setNonBotPaintableP(NullPaintable.getInstance())
    end
    

    def initMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def updateMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def popupMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
    

    def closeMenu(allBinaryGameCanvas : AllBinaryGameCanvas?) : Nil
    end
end

