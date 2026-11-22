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
# package org.allbinary.game.displayable.canvas

class CommandRunnable < JObject
    include JRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @commandFormInputProcessor : CommandFormInputProcessor? = nil

    def jf_commandFormInputProcessor : CommandFormInputProcessor?
        @commandFormInputProcessor
    end

    def jf_commandFormInputProcessor=(value : CommandFormInputProcessor?) : CommandFormInputProcessor?
        @commandFormInputProcessor = value
    end
    @command : Command? = nil

    def jf_command : Command?
        @command
    end

    def jf_command=(value : Command?) : Command?
        @command = value
    end

    # Java field initializers run after the super constructor
    def jfields_CommandRunnable : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    end
    

    def jinit_CommandRunnable(commandFormInputProcessor : CommandFormInputProcessor?, command : Command?) : self
        jfields_CommandRunnable()
        @commandFormInputProcessor = commandFormInputProcessor
        @command = command
        self
    end
    

    def run : Nil
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
            canvas : MyCanvas? = @commandFormInputProcessor.not_nil!.getCanvas()
            commandListener : CommandListener? = canvas.not_nil!.getCustomCommandListener()
            commandListener.not_nil!.commandAction(@command, canvas)
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex1
            end
        end
    end
end

