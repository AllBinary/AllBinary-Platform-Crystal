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
# package org.allbinary.logic.math.vector

class Vertex < JObject
    @x : BasicDecimal? = nil

    def jf_x : BasicDecimal?
        @x
    end

    def jf_x=(value : BasicDecimal?) : BasicDecimal?
        @x = value
    end
    @y : BasicDecimal? = nil

    def jf_y : BasicDecimal?
        @y
    end

    def jf_y=(value : BasicDecimal?) : BasicDecimal?
        @y = value
    end
    @z : BasicDecimal? = nil

    def jf_z : BasicDecimal?
        @z
    end

    def jf_z=(value : BasicDecimal?) : BasicDecimal?
        @z = value
    end

    # Java field initializers run after the super constructor
    def jfields_Vertex : Nil
    @x = BasicDecimal.new.jinit_BasicDecimal(0)
    @y = BasicDecimal.new.jinit_BasicDecimal(0)
    @z = BasicDecimal.new.jinit_BasicDecimal(0)
    end
    

    def jinit_Vertex : self
        jfields_Vertex()
        self
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        positionStrings : PositionStrings? = PositionStrings.getInstance()
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_X_LABEL)
        stringBuffer.not_nil!.append(@x.not_nil!.toString())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Y_LABEL)
        stringBuffer.not_nil!.append(@y.not_nil!.toString())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Z_LABEL)
        stringBuffer.not_nil!.append(@z.not_nil!.toString())
        return stringBuffer.not_nil!.toString()
    end
end

