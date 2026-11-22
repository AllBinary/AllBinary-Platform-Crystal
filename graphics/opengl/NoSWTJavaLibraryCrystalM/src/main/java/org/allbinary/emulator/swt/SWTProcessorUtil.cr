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

class SWTProcessorUtil < JObject
    @swtProcessor : SWTProcessor? = nil

    def jf_swtProcessor : SWTProcessor?
        @swtProcessor
    end

    def jf_swtProcessor=(value : SWTProcessor?) : SWTProcessor?
        @swtProcessor = value
    end

    @@jst_instance : SWTProcessorUtil? = nil

    def self.jst_instance : SWTProcessorUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SWTProcessorUtil?) : SWTProcessorUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SWTProcessorUtil.new.jinit_SWTProcessorUtil()
    end
    

    def self.getInstance : SWTProcessorUtil?
        return SWTProcessorUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SWTProcessorUtil : Nil
    @swtProcessor = SWTProcessor.getInstance()
    end

    def jinit_SWTProcessorUtil : self
        jfields_SWTProcessorUtil()
        self
    end
end

