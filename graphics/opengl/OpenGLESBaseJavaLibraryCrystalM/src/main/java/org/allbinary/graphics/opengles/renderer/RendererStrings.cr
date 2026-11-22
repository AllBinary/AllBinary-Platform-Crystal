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
# package org.allbinary.graphics.opengles.renderer

class RendererStrings < JObject
    @j_ON_SURFACE_CREATED : String = ""

    def jf_ON_SURFACE_CREATED : String
        @j_ON_SURFACE_CREATED
    end

    def jf_ON_SURFACE_CREATED=(value : String) : String
        @j_ON_SURFACE_CREATED = value
    end
    @j_ON_SURFACE_CHANGED : String = ""

    def jf_ON_SURFACE_CHANGED : String
        @j_ON_SURFACE_CHANGED
    end

    def jf_ON_SURFACE_CHANGED=(value : String) : String
        @j_ON_SURFACE_CHANGED = value
    end
    @j_ON_DRAW_FRAME : String = ""

    def jf_ON_DRAW_FRAME : String
        @j_ON_DRAW_FRAME
    end

    def jf_ON_DRAW_FRAME=(value : String) : String
        @j_ON_DRAW_FRAME = value
    end
    @j_ON_DRAW_FRAME_THREED : String = ""

    def jf_ON_DRAW_FRAME_THREED : String
        @j_ON_DRAW_FRAME_THREED
    end

    def jf_ON_DRAW_FRAME_THREED=(value : String) : String
        @j_ON_DRAW_FRAME_THREED = value
    end
    @j_ON_DRAW_FRAME_2D : String = ""

    def jf_ON_DRAW_FRAME_2D : String
        @j_ON_DRAW_FRAME_2D
    end

    def jf_ON_DRAW_FRAME_2D=(value : String) : String
        @j_ON_DRAW_FRAME_2D = value
    end

    @@jst_instance : RendererStrings? = nil

    def self.jst_instance : RendererStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : RendererStrings?) : RendererStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = RendererStrings.new.jinit_RendererStrings()
    end
    

    def self.getInstance : RendererStrings?
        return RendererStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_RendererStrings : Nil
    @j_ON_SURFACE_CREATED = "onSurfaceCreated"
    @j_ON_SURFACE_CHANGED = "onSurfaceChanged"
    @j_ON_DRAW_FRAME = "onDrawFrame"
    @j_ON_DRAW_FRAME_THREED = "onDrawFrameThreed"
    @j_ON_DRAW_FRAME_2D = "onDrawFrame2d"
    end

    def jinit_RendererStrings : self
        jfields_RendererStrings()
        self
    end
end

