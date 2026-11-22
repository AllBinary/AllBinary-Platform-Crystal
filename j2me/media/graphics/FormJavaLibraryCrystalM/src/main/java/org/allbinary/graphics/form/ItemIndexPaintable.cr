# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class ItemIndexPaintable < JObject

    @@jst_instance : ItemIndexPaintable? = nil

    def self.jst_instance : ItemIndexPaintable?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ItemIndexPaintable?) : ItemIndexPaintable?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ItemIndexPaintable.new.jinit_ItemIndexPaintable()
    end
    

    def self.getInstance : ItemIndexPaintable?
        return ItemIndexPaintable.jst_instance
    end

    def jinit_ItemIndexPaintable : self
        self
    end
    

    def paint(graphics : Graphics?, index : Int, item : ABCustomItem?, dx : Int, dy : Int) : Int32
        index = index.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        return 0
    end
end

