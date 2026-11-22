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
# package org.allbinary.game.configuration.feature

class InputFeatureFactory < JObject
    @j_REMOVE_DUPLICATE_KEY_PRESSES : InputFeature? = nil

    def jf_REMOVE_DUPLICATE_KEY_PRESSES : InputFeature?
        @j_REMOVE_DUPLICATE_KEY_PRESSES
    end

    def jf_REMOVE_DUPLICATE_KEY_PRESSES=(value : InputFeature?) : InputFeature?
        @j_REMOVE_DUPLICATE_KEY_PRESSES = value
    end
    @j_INPUT_MAPPING : InputFeature? = nil

    def jf_INPUT_MAPPING : InputFeature?
        @j_INPUT_MAPPING
    end

    def jf_INPUT_MAPPING=(value : InputFeature?) : InputFeature?
        @j_INPUT_MAPPING = value
    end
    @j_MULTI_KEY_PRESS : InputFeature? = nil

    def jf_MULTI_KEY_PRESS : InputFeature?
        @j_MULTI_KEY_PRESS
    end

    def jf_MULTI_KEY_PRESS=(value : InputFeature?) : InputFeature?
        @j_MULTI_KEY_PRESS = value
    end
    @j_SINGLE_KEY_REPEAT_PRESS : InputFeature? = nil

    def jf_SINGLE_KEY_REPEAT_PRESS : InputFeature?
        @j_SINGLE_KEY_REPEAT_PRESS
    end

    def jf_SINGLE_KEY_REPEAT_PRESS=(value : InputFeature?) : InputFeature?
        @j_SINGLE_KEY_REPEAT_PRESS = value
    end
    @j_SINGLE_KEY_PRESS : InputFeature? = nil

    def jf_SINGLE_KEY_PRESS : InputFeature?
        @j_SINGLE_KEY_PRESS
    end

    def jf_SINGLE_KEY_PRESS=(value : InputFeature?) : InputFeature?
        @j_SINGLE_KEY_PRESS = value
    end

    @@jst_instance : InputFeatureFactory? = nil

    def self.jst_instance : InputFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : InputFeatureFactory?) : InputFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = InputFeatureFactory.new.jinit_InputFeatureFactory()
    end
    

    def self.getInstance : InputFeatureFactory?
        return InputFeatureFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_InputFeatureFactory : Nil
    @j_REMOVE_DUPLICATE_KEY_PRESSES = InputFeature.new.jinit_InputFeature("Remove Duplicate Key Presses")
    @j_INPUT_MAPPING = InputFeature.new.jinit_InputFeature("Input Mapping")
    @j_MULTI_KEY_PRESS = InputFeature.new.jinit_InputFeature("Multi Key Press")
    @j_SINGLE_KEY_REPEAT_PRESS = InputFeature.new.jinit_InputFeature("Single Key Repeat Press")
    @j_SINGLE_KEY_PRESS = InputFeature.new.jinit_InputFeature("Single Key Press")
    end
    

    def jinit_InputFeatureFactory : self
        jfields_InputFeatureFactory()
        self
    end
    

    def isSingleKeyProcessing : Bool
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(@j_SINGLE_KEY_REPEAT_PRESS) || features.not_nil!.isFeature(@j_SINGLE_KEY_PRESS)
            return true
        else
            return false
        end
        return false
    end
end

