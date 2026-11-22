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
# package org.allbinary.emulator.swt

class SWTProcessor < JObject
    @runnable : JRunnable? = nil

    def jf_runnable : JRunnable?
        @runnable
    end

    def jf_runnable=(value : JRunnable?) : JRunnable?
        @runnable = value
    end

    @@jst_instance : SWTProcessor? = nil

    def self.jst_instance : SWTProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SWTProcessor?) : SWTProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SWTProcessor.new.jinit_SWTProcessor()
    end
    

    def self.getInstance : SWTProcessor?
        return SWTProcessor.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SWTProcessor : Nil
    @runnable = NullRunnable.getInstance()
    end

    def jinit_SWTProcessor : self
        jfields_SWTProcessor()
        self
    end
    

    def process(display : SwtDisplay?) : Nil
        display.not_nil!.sleep_j()
    end
end

