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
# package org.allbinary.graphics.form

class FormTypeFactory < JObject
    @j_UNK : String = ""

    def jf_UNK : String
        @j_UNK
    end

    def jf_UNK=(value : String) : String
        @j_UNK = value
    end
    @j_NULL_FORM_TYPE : FormType? = nil

    def jf_NULL_FORM_TYPE : FormType?
        @j_NULL_FORM_TYPE
    end

    def jf_NULL_FORM_TYPE=(value : FormType?) : FormType?
        @j_NULL_FORM_TYPE = value
    end
    @j_TEMP_HORIZONTAL_FORM : FormType? = nil

    def jf_TEMP_HORIZONTAL_FORM : FormType?
        @j_TEMP_HORIZONTAL_FORM
    end

    def jf_TEMP_HORIZONTAL_FORM=(value : FormType?) : FormType?
        @j_TEMP_HORIZONTAL_FORM = value
    end
    @j_HORIZONTAL_FORM : FormType? = nil

    def jf_HORIZONTAL_FORM : FormType?
        @j_HORIZONTAL_FORM
    end

    def jf_HORIZONTAL_FORM=(value : FormType?) : FormType?
        @j_HORIZONTAL_FORM = value
    end
    @j_VERTICAL_CENTER_FORM : FormType? = nil

    def jf_VERTICAL_CENTER_FORM : FormType?
        @j_VERTICAL_CENTER_FORM
    end

    def jf_VERTICAL_CENTER_FORM=(value : FormType?) : FormType?
        @j_VERTICAL_CENTER_FORM = value
    end

    @@jst_instance : FormTypeFactory? = nil

    def self.jst_instance : FormTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FormTypeFactory?) : FormTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FormTypeFactory.new.jinit_FormTypeFactory()
    end
    

    def self.getInstance : FormTypeFactory?
        return FormTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_FormTypeFactory : Nil
    @j_UNK = "Unknown FormType"
    @j_NULL_FORM_TYPE = FormType.new.jinit_FormType(StringUtil.getInstance().not_nil!.jf_NULL_STRING)
    @j_TEMP_HORIZONTAL_FORM = FormType.new.jinit_FormType("TempHorizontal")
    @j_HORIZONTAL_FORM = FormType.new.jinit_FormType("Horizontal")
    @j_VERTICAL_CENTER_FORM = FormType.new.jinit_FormType("Vertical")
    end

    def jinit_FormTypeFactory : self
        jfields_FormTypeFactory()
        self
    end
    

    def getFormType : FormType?
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        formType : FormType? = nil
        if displayInfo.not_nil!.isPortrait()
            formType = @j_VERTICAL_CENTER_FORM
        else
            formType = @j_HORIZONTAL_FORM
        end
        return formType
    end
end

