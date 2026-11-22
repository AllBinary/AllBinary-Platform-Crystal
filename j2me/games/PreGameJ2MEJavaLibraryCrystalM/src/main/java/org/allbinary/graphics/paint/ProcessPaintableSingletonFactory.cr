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
# package org.allbinary.graphics.paint

class ProcessPaintableSingletonFactory < JObject

    @@jst_SINGLETON : ProcessPaintable? = nil

    def self.jst_SINGLETON : ProcessPaintable?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : ProcessPaintable?) : ProcessPaintable?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = ProcessPaintable.new.jinit_ProcessPaintable()
    end
    

    def self.getInstance : ProcessPaintable?
        return ProcessPaintableSingletonFactory.jst_SINGLETON
    end
    

    def jinit_ProcessPaintableSingletonFactory : self
        self
    end
end

