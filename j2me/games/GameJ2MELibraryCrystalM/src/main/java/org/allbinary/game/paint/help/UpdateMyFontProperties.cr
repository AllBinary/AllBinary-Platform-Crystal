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
# package org.allbinary.game.paint.help

class UpdateMyFontProperties < JObject
    @actionStringArray : Array(String)? = nil

    def jf_actionStringArray : Array(String)?
        @actionStringArray
    end

    def jf_actionStringArray=(value : Array(String)?) : Array(String)?
        @actionStringArray = value
    end
    @keymappingBeginWidthArray : Array(Int32)? = nil

    def jf_keymappingBeginWidthArray : Array(Int32)?
        @keymappingBeginWidthArray
    end

    def jf_keymappingBeginWidthArray=(value : Array(Int32)?) : Array(Int32)?
        @keymappingBeginWidthArray = value
    end
    @actionStringDeltaXArray : Array(Int32)? = nil

    def jf_actionStringDeltaXArray : Array(Int32)?
        @actionStringDeltaXArray
    end

    def jf_actionStringDeltaXArray=(value : Array(Int32)?) : Array(Int32)?
        @actionStringDeltaXArray = value
    end
    @inputDeltaXArray : Array(Array(Int32)?)? = nil

    def jf_inputDeltaXArray : Array(Array(Int32)?)?
        @inputDeltaXArray
    end

    def jf_inputDeltaXArray=(value : Array(Array(Int32)?)?) : Array(Array(Int32)?)?
        @inputDeltaXArray = value
    end
    @sepArray : Array(Array(String)?)? = nil

    def jf_sepArray : Array(Array(String)?)?
        @sepArray
    end

    def jf_sepArray=(value : Array(Array(String)?)?) : Array(Array(String)?)?
        @sepArray = value
    end
    @sepWidthArray : Array(Array(Int32)?)? = nil

    def jf_sepWidthArray : Array(Array(Int32)?)?
        @sepWidthArray
    end

    def jf_sepWidthArray=(value : Array(Array(Int32)?)?) : Array(Array(Int32)?)?
        @sepWidthArray = value
    end
    @charHeight : Int32 = 0

    def jf_charHeight : Int32
        @charHeight
    end

    def jf_charHeight=(value : Int32) : Int32
        @charHeight = value
    end

    # Java field initializers run after the super constructor
    def jfields_UpdateMyFontProperties : Nil
    @actionStringArray = StringUtil.getInstance().not_nil!.getArrayInstance()
    @keymappingBeginWidthArray = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY
    @actionStringDeltaXArray = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY
    @inputDeltaXArray = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY
    @sepArray = StringUtil.getInstance().not_nil!.jf_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
    @sepWidthArray = NullUtil.getInstance().not_nil!.jf_NULL_INT_ARRAY_ARRAY
    
    end

    def jinit_UpdateMyFontProperties : self
        jfields_UpdateMyFontProperties()
        self
    end
end

