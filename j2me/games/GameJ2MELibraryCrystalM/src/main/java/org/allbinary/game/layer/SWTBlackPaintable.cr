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
# package org.allbinary.game.layer

class SWTBlackPaintable < Paintable
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @j_BLACK : BasicColor? = nil

    def jf_BLACK : BasicColor?
        @j_BLACK
    end

    def jf_BLACK=(value : BasicColor?) : BasicColor?
        @j_BLACK = value
    end

    # Java field initializers run after the super constructor
    def jfields_SWTBlackPaintable : Nil
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    @j_BLACK = BasicColorFactory.getInstance().not_nil!.jf_BLACK
    end

    def jinit_SWTBlackPaintable : self
        jinit_Paintable()
        jfields_SWTBlackPaintable()
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, @j_BLACK)
    end
end

