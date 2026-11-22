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
# package org.allbinary.game.canvas

class ABToGBUtil < JObject
    @abCanvas : Canvas? = nil

    def jf_abCanvas : Canvas?
        @abCanvas
    end

    def jf_abCanvas=(value : Canvas?) : Canvas?
        @abCanvas = value
    end
    @allBinaryGameLayerManager : AllBinaryGameLayerManager? = nil

    def jf_allBinaryGameLayerManager : AllBinaryGameLayerManager?
        @allBinaryGameLayerManager
    end

    def jf_allBinaryGameLayerManager=(value : AllBinaryGameLayerManager?) : AllBinaryGameLayerManager?
        @allBinaryGameLayerManager = value
    end

    @@jst_instance : ABToGBUtil? = nil

    def self.jst_instance : ABToGBUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ABToGBUtil?) : ABToGBUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ABToGBUtil.new.jinit_ABToGBUtil()
    end
    

    def self.getInstance : ABToGBUtil?
        return ABToGBUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ABToGBUtil : Nil
    @abCanvas = NullCanvas.jst_NULL_CANVAS
    @allBinaryGameLayerManager = AllBinaryGameLayerManager.getNullInstance()
    end

    def jinit_ABToGBUtil : self
        jfields_ABToGBUtil()
        self
    end
end

