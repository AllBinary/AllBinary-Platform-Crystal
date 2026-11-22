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
# package org.allbinary.graphics.displayable.command

class MyCommandsFactory < JObject
    @j_NO_COMMAND : Command? = nil

    def jf_NO_COMMAND : Command?
        @j_NO_COMMAND
    end

    def jf_NO_COMMAND=(value : Command?) : Command?
        @j_NO_COMMAND = value
    end
    @j_GAUGE_CHANGE : Command? = nil

    def jf_GAUGE_CHANGE : Command?
        @j_GAUGE_CHANGE
    end

    def jf_GAUGE_CHANGE=(value : Command?) : Command?
        @j_GAUGE_CHANGE = value
    end
    @j_SET_DISPLAYABLE : Command? = nil

    def jf_SET_DISPLAYABLE : Command?
        @j_SET_DISPLAYABLE
    end

    def jf_SET_DISPLAYABLE=(value : Command?) : Command?
        @j_SET_DISPLAYABLE = value
    end
    @j_PAUSE_COMMAND : Command? = nil

    def jf_PAUSE_COMMAND : Command?
        @j_PAUSE_COMMAND
    end

    def jf_PAUSE_COMMAND=(value : Command?) : Command?
        @j_PAUSE_COMMAND = value
    end
    @j_RESUME_COMMAND : Command? = nil

    def jf_RESUME_COMMAND : Command?
        @j_RESUME_COMMAND
    end

    def jf_RESUME_COMMAND=(value : Command?) : Command?
        @j_RESUME_COMMAND = value
    end

    @@jst_instance : MyCommandsFactory? = nil

    def self.jst_instance : MyCommandsFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MyCommandsFactory?) : MyCommandsFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MyCommandsFactory.new.jinit_MyCommandsFactory()
    end
    

    def self.getInstance : MyCommandsFactory?
        return MyCommandsFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_MyCommandsFactory : Nil
    @j_NO_COMMAND = Command.new.jinit_Command(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, -1, -1)
    @j_GAUGE_CHANGE = Command.new.jinit_Command("GAUGE_CHANGE", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_ITEM, 1)
    @j_SET_DISPLAYABLE = Command.new.jinit_Command("Display", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 2)
    @j_PAUSE_COMMAND = Command.new.jinit_Command("Pause", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 0)
    @j_RESUME_COMMAND = Command.new.jinit_Command("Resume", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 0)
    end
    

    def jinit_MyCommandsFactory : self
        jfields_MyCommandsFactory()
        self
    end
end

