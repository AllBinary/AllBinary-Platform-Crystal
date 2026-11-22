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
# package org.allbinary.content

class CommandUriAction < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : CommandUriAction? = nil

    def self.jst_instance : CommandUriAction?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CommandUriAction?) : CommandUriAction?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CommandUriAction.new.jinit_CommandUriAction()
    end
    

    def self.getInstance : CommandUriAction?
        return CommandUriAction.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CommandUriAction : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_CommandUriAction : self
        jfields_CommandUriAction()
        self
    end
    

    def add(command : Command?, url : String) : Nil
    end
    

    def process(command : Command?) : Nil
    end
end

