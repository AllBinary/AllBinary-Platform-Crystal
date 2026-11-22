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

class TouchButtonTurnRightResource < TouchButtonResource

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
        @@jst_instance = TouchButtonTurnRightResource.new.jinit_TouchButtonTurnRightResource()
    end
    

    def self.getInstance : TouchButtonResource?
        return TouchButtonTurnRightResource.jst_instance
    end
    

    def jinit_TouchButtonTurnRightResource : self
        jinit_TouchButtonResource("/touch_button_turn_right_arrow_64_by_64.png", "/touch_button_turn_right_arrow_hint_64_by_64.png")
        self
    end
end

