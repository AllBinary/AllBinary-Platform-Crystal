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

class CancelTouchButtonInputFactory < JObject
    @cancelInputArray : Array(TouchButtonInput?)? = nil

    def jf_cancelInputArray : Array(TouchButtonInput?)?
        @cancelInputArray
    end

    def jf_cancelInputArray=(value : Array(TouchButtonInput?)?) : Array(TouchButtonInput?)?
        @cancelInputArray = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : CancelTouchButtonInputFactory?
        if CancelTouchButtonInputFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            CancelTouchButtonInputFactory.jst_instance = CancelTouchButtonInputFactory.new.jinit_CancelTouchButtonInputFactory()
        end
        return JR.cast(CancelTouchButtonInputFactory.jst_instance, CancelTouchButtonInputFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_CancelTouchButtonInputFactory : Nil
    @cancelInputArray = Array(TouchButtonInput?).new(InputFactory.getInstance().not_nil!.jf_MAX, nil)
    end
    

    def jinit_CancelTouchButtonInputFactory : self
        jfields_CancelTouchButtonInputFactory()
        basicTouchInputFactory : BasicTouchInputFactory? = BasicTouchInputFactory.getInstance()
        index : Int32 = @cancelInputArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @cancelInputArray.not_nil![index] = basicTouchInputFactory.not_nil!.jf_NONE
        end
        @cancelInputArray.not_nil![basicTouchInputFactory.not_nil!.jf_UP.not_nil!.getSourceId()] = basicTouchInputFactory.not_nil!.jf_DOWN
        @cancelInputArray.not_nil![basicTouchInputFactory.not_nil!.jf_DOWN.not_nil!.getSourceId()] = basicTouchInputFactory.not_nil!.jf_UP
        @cancelInputArray.not_nil![basicTouchInputFactory.not_nil!.jf_LEFT.not_nil!.getSourceId()] = basicTouchInputFactory.not_nil!.jf_RIGHT
        @cancelInputArray.not_nil![basicTouchInputFactory.not_nil!.jf_RIGHT.not_nil!.getSourceId()] = basicTouchInputFactory.not_nil!.jf_LEFT
        self
    end
    

    def getCancel(touchButtonInput : TouchButtonInput?) : TouchButtonInput?
        return @cancelInputArray.not_nil![touchButtonInput.not_nil!.getSourceId()]
    end
end

