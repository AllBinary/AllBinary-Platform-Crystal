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

class NullPaintable < Paintable

    @@jst_SINGLETON : NullPaintable? = nil

    def self.jst_SINGLETON : NullPaintable?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NullPaintable?) : NullPaintable?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullPaintable.new.jinit_NullPaintable()
    end
    

    def self.getInstance : Paintable?
        return NullPaintable.jst_SINGLETON
    end
    

    def jinit_NullPaintable : self
        jinit_Paintable()
        self
    end
end

