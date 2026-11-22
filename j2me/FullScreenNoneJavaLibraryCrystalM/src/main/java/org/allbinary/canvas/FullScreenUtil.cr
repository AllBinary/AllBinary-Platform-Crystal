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

class FullScreenUtil < JObject

    @@jst_instance : FullScreenUtil? = nil

    def self.jst_instance : FullScreenUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FullScreenUtil?) : FullScreenUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FullScreenUtil.new.jinit_FullScreenUtil()
    end
    

    def self.getInstance : FullScreenUtil?
        return FullScreenUtil.jst_instance
    end

    def jinit_FullScreenUtil : self
        self
    end
    

    def initOnRun(fullScreenInterface : Canvas?, commandListener : CommandListener?) : Nil
        if !(commandListener).nil?
            self.init(fullScreenInterface)
        end
    end
    

    def init(fullScreenInterface : Canvas?) : Nil
    end
    

    def isScreenChange(isFullScreen : Bool) : Bool
        mainFeatureFactory : MainFeatureFactory? = MainFeatureFactory.getInstance()
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(mainFeatureFactory.not_nil!.jf_FULL_SCREEN) != isFullScreen
            return true
        end
        return false
    end
    

    def isScreenChangeCanvas(fullScreenInterface : Canvas?) : Bool
        return self.isScreenChange(false)
    end
end

