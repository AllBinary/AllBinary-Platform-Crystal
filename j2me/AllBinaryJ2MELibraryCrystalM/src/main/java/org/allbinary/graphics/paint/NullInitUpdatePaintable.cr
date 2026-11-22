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

class NullInitUpdatePaintable < InitUpdatePaintable

    @@jst_SINGLETON : NullInitUpdatePaintable? = nil

    def self.jst_SINGLETON : NullInitUpdatePaintable?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NullInitUpdatePaintable?) : NullInitUpdatePaintable?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullInitUpdatePaintable.new.jinit_NullInitUpdatePaintable()
    end
    

    def self.getInstance : InitUpdatePaintable?
        return NullInitUpdatePaintable.jst_SINGLETON
    end
    

    def jinit_NullInitUpdatePaintable : self
        jinit_InitUpdatePaintable()
        self
    end
end

