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
# package org.allbinary.canvas

class Processor < JObject

    @@jst_SINGLETON : Processor? = nil

    def self.jst_SINGLETON : Processor?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : Processor?) : Processor?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = Processor.new.jinit_Processor()
    end
    

    def self.getInstance : Processor?
        return Processor.jst_SINGLETON
    end

    def jinit_Processor : self
        self
    end
    

    def process : Nil
    end
    

    def processt(timeDelta : Int) : Nil
        timeDelta = timeDelta.to_i64!
    end
end

