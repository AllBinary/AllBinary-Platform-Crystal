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
# package org.allbinary.graphics

class ResizableListenerHandler < JObject

    @@jst_instance : ResizableListenerHandler? = nil

    def self.jst_instance : ResizableListenerHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ResizableListenerHandler?) : ResizableListenerHandler?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ResizableListenerHandler.new.jinit_ResizableListenerHandler()
    end
    

    def self.getInstance : ResizableListenerHandler?
        return ResizableListenerHandler.jst_instance
    end

    def jinit_ResizableListenerHandler : self
        self
    end
    

    def setListener(resizableListenerInterface : ResizableListenerInterface?) : Nil
    end
    

    def fire(isFullScreen : Bool) : Nil
    end
    

    def fireEvent(value : Bool) : Nil
    end
end

