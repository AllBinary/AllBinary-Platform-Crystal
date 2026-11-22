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
# package org.allbinary.graphics.color

class BasicColorSetUtil < JObject

    @@jst_instance : BasicColorSetUtil? = nil

    def self.jst_instance : BasicColorSetUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicColorSetUtil.new.jinit_BasicColorSetUtil()
    end
    

    def self.getInstance : BasicColorSetUtil?
        return BasicColorSetUtil.jst_instance
    end
    

    def jinit_BasicColorSetUtil : self
        self
    end
    

    def setBasicColorP(graphics : Graphics?, basicColor : BasicColor?) : Nil
        graphics.not_nil!.setColor(basicColor.not_nil!.intValue())
    end
    

    def setBasicColorP3(graphics : Graphics?, basicColor : BasicColor?, value : Int) : Nil
        value = value.to_i32!
        graphics.not_nil!.setColor(value)
    end
end

