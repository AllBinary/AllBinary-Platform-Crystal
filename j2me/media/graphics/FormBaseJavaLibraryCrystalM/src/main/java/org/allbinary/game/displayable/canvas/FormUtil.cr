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
# package org.allbinary.game.displayable.canvas

class FormUtil < JObject

    @@jst_instance : FormUtil? = nil

    def self.jst_instance : FormUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FormUtil?) : FormUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FormUtil.new.jinit_FormUtil()
    end
    

    def self.getInstance : FormUtil?
        return FormUtil.jst_instance
    end

    def jinit_FormUtil : self
        self
    end
    

    def createFormRectangle : Rectangle?
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        pointFactory : PointFactory? = PointFactory.getInstance()
        rectangle : Rectangle? = Rectangle.new.jinit_Rectangle(pointFactory.not_nil!.createXY(30, 10), displayInfo.not_nil!.getLastWidth() &- 30, displayInfo.not_nil!.getLastHeight() &- 35)
        return rectangle
    end
end

