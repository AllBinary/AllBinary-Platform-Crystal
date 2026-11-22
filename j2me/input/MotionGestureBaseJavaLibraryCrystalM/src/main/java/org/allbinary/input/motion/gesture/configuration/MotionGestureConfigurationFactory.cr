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
# package org.allbinary.input.motion.gesture.configuration

class MotionGestureConfigurationFactory < JObject

    @@jst_config : MotionGestureConfiguration? = nil

    def self.jst_config : MotionGestureConfiguration?
        jclinit
        @@jst_config
    end

    def self.jst_config=(value : MotionGestureConfiguration?) : MotionGestureConfiguration?
        jclinit
        @@jst_config = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_config = MotionGestureConfiguration.new.jinit_MotionGestureConfiguration()
    end
    

    def self.getInstance : MotionGestureConfiguration?
        return MotionGestureConfigurationFactory.jst_config
    end
    

    def jinit_MotionGestureConfigurationFactory : self
        self
    end
end

