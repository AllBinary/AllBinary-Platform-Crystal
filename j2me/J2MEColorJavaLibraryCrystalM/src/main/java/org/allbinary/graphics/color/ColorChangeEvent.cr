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
# package org.allbinary.graphics.color

class ColorChangeEvent < AllBinaryEventObject
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end

    # Java field initializers run after the super constructor
    def jfields_ColorChangeEvent : Nil
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_WHITE
    end
    

    def jinit_ColorChangeEvent(anyType : JAny) : self
        jinit_AllBinaryEventObject(anyType)
        jfields_ColorChangeEvent()
        self
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
end

