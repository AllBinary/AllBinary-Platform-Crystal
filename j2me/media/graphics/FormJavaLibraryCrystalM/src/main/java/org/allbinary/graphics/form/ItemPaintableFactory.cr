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
# package org.allbinary.graphics.form

class ItemPaintableFactory < ItemPaintable

    @@jst_instance : ItemPaintableFactory? = nil

    def self.jst_instance : ItemPaintableFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ItemPaintableFactory?) : ItemPaintableFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ItemPaintableFactory.new.jinit_ItemPaintableFactory()
    end
    

    def self.getInstance : ItemPaintableFactory?
        return ItemPaintableFactory.jst_instance
    end

    def jinit_ItemPaintableFactory : self
        jinit_ItemPaintable()
        self
    end
    

    def getInstanceItemPaintable(paintableForm : PaintableForm?) : ItemPaintable?
        return ItemPaintableFactory.jst_instance
    end
end

