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
# package org.allbinary.midlet

class MidletExitProcessorFactory < JObject

    @@jst_instance : MidletExitProcessorFactory? = nil

    def self.jst_instance : MidletExitProcessorFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MidletExitProcessorFactory?) : MidletExitProcessorFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MidletExitProcessorFactory.new.jinit_MidletExitProcessorFactory()
    end
    

    def self.getInstance : MidletExitProcessorFactory?
        return MidletExitProcessorFactory.jst_instance
    end

    def jinit_MidletExitProcessorFactory : self
        self
    end
    

    def getExitInstance(midlet : MIDlet?) : Processor?
        if AppletUtil.isAppletLoader(midlet) || J2MEUtil.isJ2ME()
            return Processor.getInstance()
        else
            return MidletExitProcessor.new.jinit_MidletExitProcessor(midlet)
        end
        return nil
    end
end

