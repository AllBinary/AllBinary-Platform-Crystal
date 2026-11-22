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

class NotificationUtil < JObject

    @@jst_SINGLETON : NotificationUtil? = nil

    def self.jst_SINGLETON : NotificationUtil?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NotificationUtil?) : NotificationUtil?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NotificationUtil.new.jinit_NotificationUtil()
    end
    

    def self.getInstance : NotificationUtil?
        return NotificationUtil.jst_SINGLETON
    end

    def jinit_NotificationUtil : self
        self
    end
    

    def notify(command : Command?, resource : String, message : String) : Nil
    end
end

