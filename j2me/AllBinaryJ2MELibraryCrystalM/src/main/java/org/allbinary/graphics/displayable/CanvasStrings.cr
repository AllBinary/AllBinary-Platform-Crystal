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
# package org.allbinary.graphics.displayable

class CanvasStrings < JObject
    @j_CONSTRUCTOR : String = ""

    def jf_CONSTRUCTOR : String
        @j_CONSTRUCTOR
    end

    def jf_CONSTRUCTOR=(value : String) : String
        @j_CONSTRUCTOR = value
    end
    @j_PAUSE : String = ""

    def jf_PAUSE : String
        @j_PAUSE
    end

    def jf_PAUSE=(value : String) : String
        @j_PAUSE = value
    end
    @j_UN_PAUSE : String = ""

    def jf_UN_PAUSE : String
        @j_UN_PAUSE
    end

    def jf_UN_PAUSE=(value : String) : String
        @j_UN_PAUSE = value
    end
    @j_SET_FULL_SCREEN_MODE : String = ""

    def jf_SET_FULL_SCREEN_MODE : String
        @j_SET_FULL_SCREEN_MODE
    end

    def jf_SET_FULL_SCREEN_MODE=(value : String) : String
        @j_SET_FULL_SCREEN_MODE = value
    end
    @j_SIZE_CHANGED : String = ""

    def jf_SIZE_CHANGED : String
        @j_SIZE_CHANGED
    end

    def jf_SIZE_CHANGED=(value : String) : String
        @j_SIZE_CHANGED = value
    end
    @j_SCALED_IMAGES : String = ""

    def jf_SCALED_IMAGES : String
        @j_SCALED_IMAGES
    end

    def jf_SCALED_IMAGES=(value : String) : String
        @j_SCALED_IMAGES = value
    end
    @j_PAINT : String = ""

    def jf_PAINT : String
        @j_PAINT
    end

    def jf_PAINT=(value : String) : String
        @j_PAINT = value
    end
    @j_ON_DISPLAY_CHANGE_EVENT : String = ""

    def jf_ON_DISPLAY_CHANGE_EVENT : String
        @j_ON_DISPLAY_CHANGE_EVENT
    end

    def jf_ON_DISPLAY_CHANGE_EVENT=(value : String) : String
        @j_ON_DISPLAY_CHANGE_EVENT = value
    end
    @j_UPDATE_MEASUREMENT : String = ""

    def jf_UPDATE_MEASUREMENT : String
        @j_UPDATE_MEASUREMENT
    end

    def jf_UPDATE_MEASUREMENT=(value : String) : String
        @j_UPDATE_MEASUREMENT = value
    end
    @j_FD_WIDTH : String = ""

    def jf_FD_WIDTH : String
        @j_FD_WIDTH
    end

    def jf_FD_WIDTH=(value : String) : String
        @j_FD_WIDTH = value
    end
    @j_FD_HEIGHT : String = ""

    def jf_FD_HEIGHT : String
        @j_FD_HEIGHT
    end

    def jf_FD_HEIGHT=(value : String) : String
        @j_FD_HEIGHT = value
    end
    @j_EMPTY_CHILD_NAME_LIST : BasicArrayList? = nil

    def jf_EMPTY_CHILD_NAME_LIST : BasicArrayList?
        @j_EMPTY_CHILD_NAME_LIST
    end

    def jf_EMPTY_CHILD_NAME_LIST=(value : BasicArrayList?) : BasicArrayList?
        @j_EMPTY_CHILD_NAME_LIST = value
    end
    @j_ABOUT : String = ""

    def jf_ABOUT : String
        @j_ABOUT
    end

    def jf_ABOUT=(value : String) : String
        @j_ABOUT = value
    end
    @j_OPTIONS : String = ""

    def jf_OPTIONS : String
        @j_OPTIONS
    end

    def jf_OPTIONS=(value : String) : String
        @j_OPTIONS = value
    end
    @j_FONT_ATLAS : String = ""

    def jf_FONT_ATLAS : String
        @j_FONT_ATLAS
    end

    def jf_FONT_ATLAS=(value : String) : String
        @j_FONT_ATLAS = value
    end
    @j_OBJ_MODEL : String = ""

    def jf_OBJ_MODEL : String
        @j_OBJ_MODEL
    end

    def jf_OBJ_MODEL=(value : String) : String
        @j_OBJ_MODEL = value
    end
    @j_MD2_MODEL : String = ""

    def jf_MD2_MODEL : String
        @j_MD2_MODEL
    end

    def jf_MD2_MODEL=(value : String) : String
        @j_MD2_MODEL = value
    end
    @_PNG : String = ""

    def jf__PNG : String
        @_PNG
    end

    def jf__PNG=(value : String) : String
        @_PNG = value
    end

    @@jst_instance : CanvasStrings? = nil

    def self.jst_instance : CanvasStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CanvasStrings?) : CanvasStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CanvasStrings.new.jinit_CanvasStrings()
    end
    

    def self.getInstance : CanvasStrings?
        return CanvasStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CanvasStrings : Nil
    @j_CONSTRUCTOR = "MyCanvas::MyCanvas"
    @j_PAUSE = "MyCanvas::pause"
    @j_UN_PAUSE = "MyCanvas::unPause"
    @j_SET_FULL_SCREEN_MODE = "setFullScreenMode"
    @j_SIZE_CHANGED = "sizeChanged"
    @j_SCALED_IMAGES = "scaledImages"
    @j_PAINT = "paint"
    @j_ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent"
    @j_UPDATE_MEASUREMENT = "updateMeasurement"
    @j_FD_WIDTH = " font/display width: "
    @j_FD_HEIGHT = " font/display height: "
    @j_EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    @j_ABOUT = "About"
    @j_OPTIONS = "Options"
    @j_FONT_ATLAS = "/font.png"
    @j_OBJ_MODEL = "_obj"
    @j_MD2_MODEL = "_md2"
    @_PNG = ".png"
    end

    def jinit_CanvasStrings : self
        jfields_CanvasStrings()
        self
    end
end

