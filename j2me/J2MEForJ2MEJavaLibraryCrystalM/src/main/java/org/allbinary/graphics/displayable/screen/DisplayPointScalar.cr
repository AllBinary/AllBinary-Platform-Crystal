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
# package org.allbinary.graphics.displayable.screen

class DisplayPointScalar < JObject

    @@jst_instance : DisplayPointScalar? = nil

    def self.jst_instance : DisplayPointScalar?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DisplayPointScalar?) : DisplayPointScalar?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DisplayPointScalar.new.jinit_DisplayPointScalar()
    end
    

    def self.getInstance : DisplayPointScalar?
        return DisplayPointScalar.jst_instance
    end

    def jinit_DisplayPointScalar : self
        self
    end
    

    def processX(value : Int) : Int32
        value = value.to_i32!
        return value
    end
    

    def processY(value : Int) : Int32
        value = value.to_i32!
        return value
    end
    

    def process(point : GPoint?) : GPoint?
        return point
    end
end

