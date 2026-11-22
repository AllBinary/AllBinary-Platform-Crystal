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
# package org.allbinary.layer

class LayerManagerLogging < LayerManagerLoggingBase
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @stringBuilder : StringMaker? = nil

    def jf_stringBuilder : StringMaker?
        @stringBuilder
    end

    def jf_stringBuilder=(value : StringMaker?) : StringMaker?
        @stringBuilder = value
    end
    @j_APPEND : String = ""

    def jf_APPEND : String
        @j_APPEND
    end

    def jf_APPEND=(value : String) : String
        @j_APPEND = value
    end
    @j_APPEND_ : String = ""

    def jf_APPEND_ : String
        @j_APPEND_
    end

    def jf_APPEND_=(value : String) : String
        @j_APPEND_ = value
    end
    @_AT_ : String = ""

    def jf__AT_ : String
        @_AT_
    end

    def jf__AT_=(value : String) : String
        @_AT_ = value
    end
    @j_ATTEMPT_REMOVE_ : String = ""

    def jf_ATTEMPT_REMOVE_ : String
        @j_ATTEMPT_REMOVE_
    end

    def jf_ATTEMPT_REMOVE_=(value : String) : String
        @j_ATTEMPT_REMOVE_ = value
    end
    @j_REMOVE_ : String = ""

    def jf_REMOVE_ : String
        @j_REMOVE_
    end

    def jf_REMOVE_=(value : String) : String
        @j_REMOVE_ = value
    end
    @j_REMOVE : String = ""

    def jf_REMOVE : String
        @j_REMOVE
    end

    def jf_REMOVE=(value : String) : String
        @j_REMOVE = value
    end
    @j_DID_NOT_REMOVE : String = ""

    def jf_DID_NOT_REMOVE : String
        @j_DID_NOT_REMOVE
    end

    def jf_DID_NOT_REMOVE=(value : String) : String
        @j_DID_NOT_REMOVE = value
    end
    @j_CLEAR : String = ""

    def jf_CLEAR : String
        @j_CLEAR
    end

    def jf_CLEAR=(value : String) : String
        @j_CLEAR = value
    end

    @@jst_instance : LayerManagerLogging? = nil

    def self.jst_instance : LayerManagerLogging?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LayerManagerLogging?) : LayerManagerLogging?
        jclinit
        @@jst_instance = value
    end

    @@jst_removeFailed : Bool = false

    def self.jst_removeFailed : Bool
        jclinit
        @@jst_removeFailed
    end

    def self.jst_removeFailed=(value : Bool) : Bool
        jclinit
        @@jst_removeFailed = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LayerManagerLogging.new.jinit_LayerManagerLogging()
        @@jst_removeFailed = false
    end
    

    def self.getInstance : LayerManagerLogging?
        return LayerManagerLogging.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LayerManagerLogging : Nil
    @logUtil = LogUtil.getInstance()
    @stringBuilder = StringMaker.new.jinit_StringMaker()
    @j_APPEND = "append"
    @j_APPEND_ = " append: "
    @_AT_ = " at: "
    @j_ATTEMPT_REMOVE_ = " Remove Attempt: "
    @j_REMOVE_ = " Remove: "
    @j_REMOVE = "remove"
    @j_DID_NOT_REMOVE = " Did not remove: "
    @j_CLEAR = " Clear List"
    end

    def jinit_LayerManagerLogging : self
        jinit_LayerManagerLoggingBase()
        jfields_LayerManagerLogging()
        self
    end
    

    def append(layerInterface : AllBinaryLayer?) : Nil
        @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
        @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_APPEND_).not_nil!.append(layerInterface.not_nil!.getName()).not_nil!.toString(), self, @j_APPEND)
    end
    

    def appendAt(layerInterface : AllBinaryLayer?, index : Int) : Nil
        index = index.to_i32!
        @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
        @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_APPEND_).not_nil!.append(layerInterface.not_nil!.getName()).not_nil!.append(@_AT_).not_nil!.appendint(index).not_nil!.toString(), self, @j_APPEND)
    end
    

    def remove(layerInterface : AllBinaryLayer?) : Nil
        if (layerInterface).nil?
            @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
            @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_ATTEMPT_REMOVE_).not_nil!.append(StringUtil.getInstance().not_nil!.toString(layerInterface)).not_nil!.toString(), self, @j_REMOVE)
        else
            @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
            @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_ATTEMPT_REMOVE_).not_nil!.append(layerInterface.not_nil!.getName()).not_nil!.toString(), self, @j_REMOVE)
        end
    end
    

    def removeResult(layerManager : ABLayerManager?, layerInterface : AllBinaryLayer?, result : Bool) : Nil
        if (layerInterface).nil?
            @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
            @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_REMOVE_).not_nil!.append(StringUtil.getInstance().not_nil!.toString(layerInterface)).not_nil!.toString(), self, @j_REMOVE)
        elsif result
            if LayerManagerLogging.jst_removeFailed
                @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
                @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_REMOVE_).not_nil!.append(layerInterface.not_nil!.getName()).not_nil!.toString(), self, @j_REMOVE)
            end
        else
            @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
            @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_DID_NOT_REMOVE).not_nil!.append(layerInterface.not_nil!.getName()).not_nil!.toString(), self, @j_REMOVE)
            LayerManagerLogging.jst_removeFailed = true
        end
    end
    

    def log(layerManager : ABLayerManager?) : Nil
        @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
        size : Int32 = layerManager.not_nil!.getSize()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        @stringBuilder.not_nil!.append(JInteger.toHexString(TsUtil.getInstance().not_nil!.hashCode(layerManager))).not_nil!.append(commonSeps.not_nil!.jf_COLON_SEP)
        @stringBuilder.not_nil!.appendint(size).not_nil!.append(commonSeps.not_nil!.jf_COLON_SEP)
        allBinaryLayer : AllBinaryLayer? = nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            allBinaryLayer = (JR.cast(layerManager.not_nil!.getLayerAt(index), AllBinaryLayer))
            @stringBuilder.not_nil!.append(allBinaryLayer.not_nil!.getName()).not_nil!.append(commonSeps.not_nil!.jf_COMMA)
        end
        @logUtil.not_nil!.putF(@stringBuilder.not_nil!.toString(), self, @j_REMOVE)
    end
    

    def clear : Nil
        @stringBuilder.not_nil!.delete(0, @stringBuilder.not_nil!.length())
        @logUtil.not_nil!.putF(@stringBuilder.not_nil!.appendint(TsUtil.getInstance().not_nil!.hashCode(self)).not_nil!.append(@j_CLEAR).not_nil!.toString(), self, @j_CLEAR)
    end
end

