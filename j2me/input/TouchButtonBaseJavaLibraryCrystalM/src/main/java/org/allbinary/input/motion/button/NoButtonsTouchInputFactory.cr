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

class NoButtonsTouchInputFactory < JObject

    @@jst_instance : BaseTouchInput? = nil

    def self.jst_instance : BaseTouchInput?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BaseTouchInput?) : BaseTouchInput?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BaseTouchInput.new.jinit_BaseTouchInput()
    end
    

    def self.getInstance : BaseTouchInput?
        return NoButtonsTouchInputFactory.jst_instance
    end

    def jinit_NoButtonsTouchInputFactory : self
        self
    end
end

