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
# package org.allbinary

class AppletUtil < JObject

    @@jst_applet : Bool = false

    def self.jst_applet : Bool
        jclinit
        @@jst_applet
    end

    def self.jst_applet=(value : Bool) : Bool
        jclinit
        @@jst_applet = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_applet = false
    end
    

    def self.setApplet : Nil
        AppletUtil.jst_applet = true
    end
    

    def self.isAppletLoader(anyType : JAny) : Bool
        return AppletUtil.jst_applet
    end
    

    def jinit_AppletUtil : self
        self
    end
end

