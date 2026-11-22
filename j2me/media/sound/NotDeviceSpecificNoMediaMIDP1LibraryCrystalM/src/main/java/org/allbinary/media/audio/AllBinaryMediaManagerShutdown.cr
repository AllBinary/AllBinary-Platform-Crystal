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
# package org.allbinary.media.audio

class AllBinaryMediaManagerShutdown < JObject

    @@jst_instance : AllBinaryMediaManagerShutdown? = nil

    def self.jst_instance : AllBinaryMediaManagerShutdown?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AllBinaryMediaManagerShutdown?) : AllBinaryMediaManagerShutdown?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AllBinaryMediaManagerShutdown.new.jinit_AllBinaryMediaManagerShutdown()
    end
    

    def self.shutdown(soundsFactoryInterface : SoundsFactoryInterface?) : Nil
        logUtil : LogUtil? = LogUtil.getInstance()
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        logUtil.not_nil!.putF(commonStrings.not_nil!.jf_START, AllBinaryMediaManagerShutdown.jst_instance, "shutdown")
        AllBinaryMediaManager.shutdown(soundsFactoryInterface)
    end

    def jinit_AllBinaryMediaManagerShutdown : self
        self
    end
end

