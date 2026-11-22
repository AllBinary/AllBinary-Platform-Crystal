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

class URLGLOBALS < JObject

    @@jst_urlGlobalsInterface : UrlGlobalsInterface? = nil

    def self.jst_urlGlobalsInterface : UrlGlobalsInterface?
        jclinit
        @@jst_urlGlobalsInterface
    end

    def self.jst_urlGlobalsInterface=(value : UrlGlobalsInterface?) : UrlGlobalsInterface?
        jclinit
        @@jst_urlGlobalsInterface = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_urlGlobalsInterface = AppUrlGlobals.jst_NULL_APP_URL_GLOBALS
    end
    

    def self.init(urlGlobalsInterface : UrlGlobalsInterface?) : Nil
        URLGLOBALS.jst_urlGlobalsInterface = urlGlobalsInterface
    end
    

    def self.isTestingMode : Bool
        return URLGLOBALS.jst_urlGlobalsInterface.not_nil!.isTestingMode()
    end
    

    def self.getWebappPath : String
        return URLGLOBALS.jst_urlGlobalsInterface.not_nil!.getWebappPath()
    end
    

    def self.getTestHtmlPath : String
        return URLGLOBALS.jst_urlGlobalsInterface.not_nil!.getTestHtmlPath()
    end
    

    def self.getMainPath : String
        return URLGLOBALS.jst_urlGlobalsInterface.not_nil!.getMainPath()
    end

    def jinit_URLGLOBALS : self
        self
    end
end

