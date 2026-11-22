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

class ModifierOpenGLESImageProcessor < OpenGLESImageProcessor

    @@jst_instanceC : ModifierOpenGLESImageProcessor? = nil

    def self.jst_instanceC : ModifierOpenGLESImageProcessor?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : ModifierOpenGLESImageProcessor?) : ModifierOpenGLESImageProcessor?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = ModifierOpenGLESImageProcessor.new.jinit_ModifierOpenGLESImageProcessor()
    end
    

    def self.getInstance : ModifierOpenGLESImageProcessor?
        return ModifierOpenGLESImageProcessor.jst_instanceC
    end

    def jinit_ModifierOpenGLESImageProcessor : self
        jinit_OpenGLESImageProcessor()
        self
    end
end

