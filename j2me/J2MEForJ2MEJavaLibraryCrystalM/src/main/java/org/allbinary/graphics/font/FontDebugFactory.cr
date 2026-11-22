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
# package org.allbinary.graphics.font

class FontDebugFactory < JObject

    @@jst_instance : FontDebugFactory? = nil

    def self.jst_instance : FontDebugFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FontDebugFactory?) : FontDebugFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FontDebugFactory.new.jinit_FontDebugFactory()
    end
    

    def self.getInstance : FontDebugFactory?
        return FontDebugFactory.jst_instance
    end

    def jinit_FontDebugFactory : self
        self
    end
    

    def setFont(font : Font?, graphics : Graphics?) : Nil
        graphics.not_nil!.setFont(font)
    end
end

