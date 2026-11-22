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
# package org.allbinary.graphics.opengles

class OpenGLFeatureUtil < JObject

    @@jst_instance : OpenGLFeatureUtil? = nil

    def self.jst_instance : OpenGLFeatureUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLFeatureUtil?) : OpenGLFeatureUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLFeatureUtil.new.jinit_OpenGLFeatureUtil()
    end
    

    def self.getInstance : OpenGLFeatureUtil?
        return OpenGLFeatureUtil.jst_instance
    end
    

    def jinit_OpenGLFeatureUtil : self
        self
    end
    

    def isAnyThreed : Bool
        return false
    end
end

