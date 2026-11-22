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

class TouchButtonsBuilderFactory < JObject

    @@jst_NO_TOUCH_BUTTON_BUILDER_FACTORY : TouchButtonsBuilderFactory? = nil

    def self.jst_NO_TOUCH_BUTTON_BUILDER_FACTORY : TouchButtonsBuilderFactory?
        jclinit
        @@jst_NO_TOUCH_BUTTON_BUILDER_FACTORY
    end

    def self.jst_NO_TOUCH_BUTTON_BUILDER_FACTORY=(value : TouchButtonsBuilderFactory?) : TouchButtonsBuilderFactory?
        jclinit
        @@jst_NO_TOUCH_BUTTON_BUILDER_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NO_TOUCH_BUTTON_BUILDER_FACTORY = TouchButtonsBuilderFactory.new.jinit_TouchButtonsBuilderFactory()
    end

    def jinit_TouchButtonsBuilderFactory : self
        self
    end
    

    def getInstance : BaseTouchInput?
        return NoButtonsTouchInputFactory.getInstance()
    end
end

