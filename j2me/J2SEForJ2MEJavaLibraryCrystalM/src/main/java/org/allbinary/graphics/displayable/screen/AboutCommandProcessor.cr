#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen

class AboutCommandProcessor < JObject

    @@jst_instance : AboutCommandProcessor? = nil

    def self.jst_instance : AboutCommandProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AboutCommandProcessor?) : AboutCommandProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AboutCommandProcessor.new.jinit_AboutCommandProcessor()
    end
    

    def self.getInstance : AboutCommandProcessor?
        return AboutCommandProcessor.jst_instance
    end

    def jinit_AboutCommandProcessor : self
        self
    end
    

    def process(midletCommandListener : CommandListener?, command : Command?, canvas : Canvas?) : Nil
        midletCommandListener.not_nil!.commandAction(command, canvas)
    end
end

