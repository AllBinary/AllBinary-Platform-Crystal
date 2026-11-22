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
# package org.allbinary.graphics.paint

class NullLocationPaintable < LocationPaintable

    @@jst_instanceC : NullLocationPaintable? = nil

    def self.jst_instanceC : NullLocationPaintable?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : NullLocationPaintable?) : NullLocationPaintable?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = NullLocationPaintable.new.jinit_NullLocationPaintable()
    end
    

    def self.getInstance : NullLocationPaintable?
        return NullLocationPaintable.jst_instanceC
    end

    def jinit_NullLocationPaintable : self
        jinit_LocationPaintable()
        self
    end
end

