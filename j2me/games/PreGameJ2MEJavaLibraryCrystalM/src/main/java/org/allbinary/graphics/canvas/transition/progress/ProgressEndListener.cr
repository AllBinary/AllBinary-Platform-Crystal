# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.graphics.canvas.transition.progress

class ProgressEndListener < JObject

    @@jst_instance : ProgressEndListener? = nil

    def self.jst_instance : ProgressEndListener?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ProgressEndListener?) : ProgressEndListener?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ProgressEndListener.new.jinit_ProgressEndListener()
    end

    def jinit_ProgressEndListener : self
        self
    end
    

    def onEndEvent : Nil
    end
end

