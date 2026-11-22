# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.displayable.screen

class FullScreenPaintableFactory < JObject
    @paintable : Paintable? = nil

    def jf_paintable : Paintable?
        @paintable
    end

    def jf_paintable=(value : Paintable?) : Paintable?
        @paintable = value
    end

    @@jst_instance : FullScreenPaintableFactory? = nil

    def self.jst_instance : FullScreenPaintableFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FullScreenPaintableFactory?) : FullScreenPaintableFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FullScreenPaintableFactory.new.jinit_FullScreenPaintableFactory()
    end
    

    def self.getInstance : FullScreenPaintableFactory?
        return FullScreenPaintableFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_FullScreenPaintableFactory : Nil
    @paintable = NullPaintable.getInstance()
    end

    def jinit_FullScreenPaintableFactory : self
        jfields_FullScreenPaintableFactory()
        self
    end
end

