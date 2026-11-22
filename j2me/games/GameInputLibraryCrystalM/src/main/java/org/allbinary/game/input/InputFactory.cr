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
# package org.allbinary.game.input

class InputFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @j_KEY_CODE_LABEL : String = ""

    def jf_KEY_CODE_LABEL : String
        @j_KEY_CODE_LABEL
    end

    def jf_KEY_CODE_LABEL=(value : String) : String
        @j_KEY_CODE_LABEL = value
    end
    @j_DEVICE_ID_LABEL : String = ""

    def jf_DEVICE_ID_LABEL : String
        @j_DEVICE_ID_LABEL
    end

    def jf_DEVICE_ID_LABEL=(value : String) : String
        @j_DEVICE_ID_LABEL = value
    end
    @j_MAX : Int32 = 0

    def jf_MAX : Int32
        @j_MAX
    end

    def jf_MAX=(value : Int32) : Int32
        @j_MAX = value
    end
    @inputIntegerArray : Array(Input?)? = nil

    def jf_inputIntegerArray : Array(Input?)?
        @inputIntegerArray
    end

    def jf_inputIntegerArray=(value : Array(Input?)?) : Array(Input?)?
        @inputIntegerArray = value
    end
    @j_NO_INPUT : Input? = nil

    def jf_NO_INPUT : Input?
        @j_NO_INPUT
    end

    def jf_NO_INPUT=(value : Input?) : Input?
        @j_NO_INPUT = value
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
    

    def self.getInstance : InputFactory?
        if InputFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            InputFactory.jst_instance = InputFactory.new.jinit_InputFactory()
        end
        return JR.cast(InputFactory.jst_instance, InputFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_InputFactory : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @j_KEY_CODE_LABEL = "KeyCode: "
    @j_DEVICE_ID_LABEL = "DeviceId: "
    @j_MAX = SmallIntegerSingletonFactory.getInstance().not_nil!.getMin()
    @inputIntegerArray = Array(Input?).new(@j_MAX, nil)
    @j_NO_INPUT = Input.new.jinit_Input(0, @commonStrings.not_nil!.jf_UNKNOWN)
    end
    

    def jinit_InputFactory : self
        jfields_InputFactory()
        size : Int32 = @inputIntegerArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            @inputIntegerArray.not_nil![index] = @j_NO_INPUT
        end
        self
    end
    

    def add(id : Int, input : Input?) : Nil
        id = id.to_i32!
        @inputIntegerArray.not_nil![id] = input
    end
    

    def getInstanceById(id : Int) : Input?
        id = id.to_i32!
        if id < 0
            id = JR.neg(id)
        end
        if id > @inputIntegerArray.not_nil!.size
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Warning id: ").not_nil!.appendint(id).not_nil!.toString(), self, @commonStrings.not_nil!.jf_GET_INSTANCE)
            return @j_NO_INPUT
        end
        return @inputIntegerArray.not_nil![id]
    end
end

