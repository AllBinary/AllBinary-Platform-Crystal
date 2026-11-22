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
# package org.allbinary.input.motion.button

class TouchButtonsPaintable < Paintable
    @foregroundBasicColor : BasicColor? = nil

    def jf_foregroundBasicColor : BasicColor?
        @foregroundBasicColor
    end

    def jf_foregroundBasicColor=(value : BasicColor?) : BasicColor?
        @foregroundBasicColor = value
    end
    @foregroundColor : Int32 = 0

    def jf_foregroundColor : Int32
        @foregroundColor
    end

    def jf_foregroundColor=(value : Int32) : Int32
        @foregroundColor = value
    end
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @touchButtonFactory : TouchButtonFactory? = nil

    def jf_touchButtonFactory : TouchButtonFactory?
        @touchButtonFactory
    end

    def jf_touchButtonFactory=(value : TouchButtonFactory?) : TouchButtonFactory?
        @touchButtonFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_TouchButtonsPaintable : Nil
    
    
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    @touchButtonFactory = TouchButtonFactory.getInstance()
    end
    

    def jinit_TouchButtonsPaintable(basicColor : BasicColor?) : self
        jinit_Paintable()
        jfields_TouchButtonsPaintable()
        @foregroundBasicColor = basicColor
        @foregroundColor = basicColor.not_nil!.intValue()
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        list : BasicArrayList? = @touchButtonFactory.not_nil!.getList()
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, @foregroundBasicColor, @foregroundColor)
        touchButton : TouchButton? = nil
        index = list.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            touchButton = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], TouchButton)
            touchButton.not_nil!.paint(graphics)
        end
        index = list.not_nil!.size()
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            touchButton = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], TouchButton)
            touchButton.not_nil!.paintHint(graphics)
        end
    end
end

