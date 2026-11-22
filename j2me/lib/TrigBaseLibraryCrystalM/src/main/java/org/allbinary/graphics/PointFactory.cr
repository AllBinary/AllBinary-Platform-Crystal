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

class PointFactory < JObject
    @j_ZERO_ZERO : GPoint? = nil

    def jf_ZERO_ZERO : GPoint?
        @j_ZERO_ZERO
    end

    def jf_ZERO_ZERO=(value : GPoint?) : GPoint?
        @j_ZERO_ZERO = value
    end

    @@jst_instance : PointFactory? = nil

    def self.jst_instance : PointFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PointFactory?) : PointFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PointFactory.new.jinit_PointFactory()
    end
    

    def self.getInstance : PointFactory?
        return PointFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PointFactory : Nil
    @j_ZERO_ZERO = self.createXYZ(0, 0, 0)
    end
    

    def init : Nil
    end
    

    def jinit_PointFactory : self
        jfields_PointFactory()
        self
    end
    

    def createXY(x : Int, y : Int) : GPoint?
        x = x.to_i32!
        y = y.to_i32!
        return GPoint.new.jinit_GPoint(x, y, 0)
    end
    

    def createXYZ(x : Int, y : Int, z : Int) : GPoint?
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        return GPoint.new.jinit_GPoint(x, y, z)
    end
end

