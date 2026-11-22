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
# package org.allbinary.globals

class AppUrlGlobals < UrlGlobalsInterface
    @path : String = ""

    def jf_path : String
        @path
    end

    def jf_path=(value : String) : String
        @path = value
    end

    @@jst_NULL_APP_URL_GLOBALS : AppUrlGlobals? = nil

    def self.jst_NULL_APP_URL_GLOBALS : AppUrlGlobals?
        jclinit
        @@jst_NULL_APP_URL_GLOBALS
    end

    def self.jst_NULL_APP_URL_GLOBALS=(value : AppUrlGlobals?) : AppUrlGlobals?
        jclinit
        @@jst_NULL_APP_URL_GLOBALS = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_APP_URL_GLOBALS = AppUrlGlobals.new.jinit_AppUrlGlobals()
    end

    # Java field initializers run after the super constructor
    def jfields_AppUrlGlobals : Nil
    @path = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end

    def jinit_AppUrlGlobals : self
        jinit_UrlGlobalsInterface()
        jfields_AppUrlGlobals()
        self
    end
    

    def isTestingMode : Bool
        return false
    end
    

    def getWebappPath : String
        return @path
    end
    

    def setWebappPath(path : String) : Nil
        @path = path
        if !(@path.not_nil!.endsWith("\\") || @path.not_nil!.endsWith("/"))
            @path = @path + "\\"
        end
    end
    

    def getTestHtmlPath : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def getMainPath : String
        return @path
    end
end

