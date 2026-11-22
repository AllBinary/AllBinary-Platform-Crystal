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
# package org.allbinary.graphics.displayable.screen

class ScreenRepaintProcessorFactory < JObject

    @@jst_instance : ScreenRepaintProcessorFactory? = nil

    def self.jst_instance : ScreenRepaintProcessorFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ScreenRepaintProcessorFactory?) : ScreenRepaintProcessorFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ScreenRepaintProcessorFactory.new.jinit_ScreenRepaintProcessorFactory()
    end
    

    def self.getInstance : ScreenRepaintProcessorFactory?
        return ScreenRepaintProcessorFactory.jst_instance
    end
    

    def jinit_ScreenRepaintProcessorFactory : self
        self
    end
    

    def create(displayable : Displayable?) : Processor?
        if !J2MEUtil.isJ2ME()
            return ScreenRepaintProcessor.new.jinit_ScreenRepaintProcessor(displayable)
        else
            return Processor.getInstance()
        end
        return nil
    end
end

