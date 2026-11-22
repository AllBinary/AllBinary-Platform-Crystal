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
# package org.allbinary.graphics

class RectangleFactory < JObject

    @@jst_SINGLETON : Rectangle? = nil

    def self.jst_SINGLETON : Rectangle?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : Rectangle?) : Rectangle?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jst_ARRAY_OF_ARRAYS : Array(Array(Rectangle?)?)? = nil

    def self.jst_ARRAY_OF_ARRAYS : Array(Array(Rectangle?)?)?
        jclinit
        @@jst_ARRAY_OF_ARRAYS
    end

    def self.jst_ARRAY_OF_ARRAYS=(value : Array(Array(Rectangle?)?)?) : Array(Array(Rectangle?)?)?
        jclinit
        @@jst_ARRAY_OF_ARRAYS = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, 0, 0)
        @@jst_ARRAY_OF_ARRAYS = Array(Array(Rectangle?)?).new(0) { Array(Rectangle?).new(0, nil).as(Array(Rectangle?)?) }
    end

    def jinit_RectangleFactory : self
        self
    end
end

