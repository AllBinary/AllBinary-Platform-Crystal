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
# package org.allbinary.animation.image

class AnimationFactoryInitializationVisitor < JObject
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end
    @height : Int32 = 0

    def jf_height : Int32
        @height
    end

    def jf_height=(value : Int32) : Int32
        @height = value
    end
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    @originalDx : Int32 = 0

    def jf_originalDx : Int32
        @originalDx
    end

    def jf_originalDx=(value : Int32) : Int32
        @originalDx = value
    end
    @originalDy : Int32 = 0

    def jf_originalDy : Int32
        @originalDy
    end

    def jf_originalDy=(value : Int32) : Int32
        @originalDy = value
    end

    def jinit_AnimationFactoryInitializationVisitor : self
        self
    end
    

    def visit : Nil
    end
    

    def toString : String
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        commonLabels : CommonLabels? = CommonLabels.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(PositionStrings.getInstance().not_nil!.jf_DX_LABEL).not_nil!.appendfloat((@dx).to_f32)
        stringBuffer.not_nil!.append(PositionStrings.getInstance().not_nil!.jf_DY_LABEL).not_nil!.appendfloat((@dy).to_f32)
        stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_WIDTH_LABEL)
        stringBuffer.not_nil!.appendint(@width)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_HEIGHT_LABEL)
        stringBuffer.not_nil!.appendint(@height)
        return stringBuffer.not_nil!.toString()
    end
end

