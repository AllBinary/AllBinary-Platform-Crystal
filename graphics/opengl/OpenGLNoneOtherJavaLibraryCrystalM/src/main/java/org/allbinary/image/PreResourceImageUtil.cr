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
# package org.allbinary.image

class PreResourceImageUtil < JObject

    @@jst_instance : PreResourceImageUtil? = nil

    def self.jst_instance : PreResourceImageUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PreResourceImageUtil?) : PreResourceImageUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PreResourceImageUtil.new.jinit_PreResourceImageUtil()
    end
    

    def self.getInstance : PreResourceImageUtil?
        return PreResourceImageUtil.jst_instance
    end

    def jinit_PreResourceImageUtil : self
        self
    end
    

    def encapsulate(image : Image?) : Image?
        return image
    end
    

    def updateGL(gl : GL?, image : Image?) : Nil
    end
    

    def update(graphics : Graphics?, image : Image?) : Nil
    end
end

