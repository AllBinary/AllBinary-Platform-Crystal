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
# package org.allbinary.media.image

class ImageCompleteUtil < JObject

    @@jst_instance : ImageCompleteUtil? = nil

    def self.jst_instance : ImageCompleteUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ImageCompleteUtil?) : ImageCompleteUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ImageCompleteUtil.new.jinit_ImageCompleteUtil()
    end
    

    def self.getInstance : ImageCompleteUtil?
        return ImageCompleteUtil.jst_instance
    end

    def jinit_ImageCompleteUtil : self
        self
    end
    

    def waitForImage(image : Image?, name : String) : Nil
    end
end

