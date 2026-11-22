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
# package org.allbinary.graphics.canvas.transition.progress

class ProgressCanvasFactory < JObject

    @@jst_PROGRESS_FORM_SCREEN : JAny = nil

    def self.jst_PROGRESS_FORM_SCREEN : JAny
        jclinit
        @@jst_PROGRESS_FORM_SCREEN
    end

    def self.jst_PROGRESS_FORM_SCREEN=(value : JAny) : JAny
        jclinit
        @@jst_PROGRESS_FORM_SCREEN = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_PROGRESS_FORM_SCREEN = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : ProgressCanvas?
        if ProgressCanvasFactory.jst_PROGRESS_FORM_SCREEN == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            ProgressCanvasFactory.jst_PROGRESS_FORM_SCREEN = ProgressCanvas.new.jinit_ProgressCanvas(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        end
        return JR.cast(ProgressCanvasFactory.jst_PROGRESS_FORM_SCREEN, ProgressCanvas)
    end
    

    def self.getLazyInstance : PaintableInterface?
        return NullPaintable.getInstance()
    end

    def jinit_ProgressCanvasFactory : self
        self
    end
end

