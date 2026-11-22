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
# package org.allbinary.input.motion.button

class TouchScreenTypeFactory < JObject

    @@jst_instance : TouchScreenTypeFactory? = nil

    def self.jst_instance : TouchScreenTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TouchScreenTypeFactory?) : TouchScreenTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TouchScreenTypeFactory.new.jinit_TouchScreenTypeFactory()
    end
    

    def self.getInstance : TouchScreenTypeFactory?
        return TouchScreenTypeFactory.jst_instance
    end
    

    def jinit_TouchScreenTypeFactory : self
        touchScreenFactory : TouchScreenFactory? = TouchScreenFactory.getInstance()
        touchScreenFactory.not_nil!.setTouch(true)
        self
    end
end

