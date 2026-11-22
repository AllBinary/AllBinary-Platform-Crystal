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

class TouchButtonUpResource < TouchButtonResource

    @@jst_instance : TouchButtonResource? = nil

    def self.jst_instance : TouchButtonResource?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TouchButtonResource?) : TouchButtonResource?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TouchButtonUpResource.new.jinit_TouchButtonUpResource()
    end
    

    def self.getInstance : TouchButtonResource?
        return TouchButtonUpResource.jst_instance
    end
    

    def jinit_TouchButtonUpResource : self
        jinit_TouchButtonResource("/touch_button_up_arrow_64_by_64.png", "/touch_button_up_arrow_hint_64_by_64.png")
        self
    end
end

