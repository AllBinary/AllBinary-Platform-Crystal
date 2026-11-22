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
# package org.allbinary.image.opengles

class OpenGLESImageExclusionUtil < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : OpenGLESImageExclusionUtil? = nil

    def self.jst_instance : OpenGLESImageExclusionUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OpenGLESImageExclusionUtil?) : OpenGLESImageExclusionUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OpenGLESImageExclusionUtil.new.jinit_OpenGLESImageExclusionUtil()
    end
    

    def self.getInstance : OpenGLESImageExclusionUtil?
        return OpenGLESImageExclusionUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_OpenGLESImageExclusionUtil : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_OpenGLESImageExclusionUtil : self
        jfields_OpenGLESImageExclusionUtil()
        self
    end
    

    def isCustomScaling(image : Image?) : Bool
        return false
    end
end

