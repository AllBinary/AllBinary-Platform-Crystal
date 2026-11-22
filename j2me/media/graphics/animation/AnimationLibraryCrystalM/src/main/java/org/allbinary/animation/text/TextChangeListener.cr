# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.animation.text

class TextChangeListener < JObject

    @@jst_instance : TextChangeListener? = nil

    def self.jst_instance : TextChangeListener?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TextChangeListener?) : TextChangeListener?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TextChangeListener.new.jinit_TextChangeListener()
    end
    

    def self.getInstance : TextChangeListener?
        return TextChangeListener.jst_instance
    end

    def jinit_TextChangeListener : self
        self
    end
    

    def onMeasure : Nil
    end
end

