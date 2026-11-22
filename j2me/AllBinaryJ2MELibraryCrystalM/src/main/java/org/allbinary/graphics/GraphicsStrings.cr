# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics

class GraphicsStrings < JObject
    @j_ANIMATION : String = ""

    def jf_ANIMATION : String
        @j_ANIMATION
    end

    def jf_ANIMATION=(value : String) : String
        @j_ANIMATION = value
    end
    @j_ANGLE : String = ""

    def jf_ANGLE : String
        @j_ANGLE
    end

    def jf_ANGLE=(value : String) : String
        @j_ANGLE = value
    end
    @j_MOVEMENT_ANGLE : String = ""

    def jf_MOVEMENT_ANGLE : String
        @j_MOVEMENT_ANGLE
    end

    def jf_MOVEMENT_ANGLE=(value : String) : String
        @j_MOVEMENT_ANGLE = value
    end
    @j_ROTATION : String = ""

    def jf_ROTATION : String
        @j_ROTATION
    end

    def jf_ROTATION=(value : String) : String
        @j_ROTATION = value
    end
    @j_OPACITY : String = ""

    def jf_OPACITY : String
        @j_OPACITY
    end

    def jf_OPACITY=(value : String) : String
        @j_OPACITY = value
    end
    @j_HTML : String = ""

    def jf_HTML : String
        @j_HTML
    end

    def jf_HTML=(value : String) : String
        @j_HTML = value
    end
    @j_WIDTH : String = ""

    def jf_WIDTH : String
        @j_WIDTH
    end

    def jf_WIDTH=(value : String) : String
        @j_WIDTH = value
    end
    @j_HEIGHT : String = ""

    def jf_HEIGHT : String
        @j_HEIGHT
    end

    def jf_HEIGHT=(value : String) : String
        @j_HEIGHT = value
    end

    @@jst_instance : GraphicsStrings? = nil

    def self.jst_instance : GraphicsStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GraphicsStrings?) : GraphicsStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GraphicsStrings.new.jinit_GraphicsStrings()
    end
    

    def self.getInstance : GraphicsStrings?
        return GraphicsStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GraphicsStrings : Nil
    @j_ANIMATION = "animation"
    @j_ANGLE = "angle"
    @j_MOVEMENT_ANGLE = "movement_angle"
    @j_ROTATION = "rotation"
    @j_OPACITY = "opacity"
    @j_HTML = "HTML"
    @j_WIDTH = "width"
    @j_HEIGHT = "height"
    end

    def jinit_GraphicsStrings : self
        jfields_GraphicsStrings()
        self
    end
end

