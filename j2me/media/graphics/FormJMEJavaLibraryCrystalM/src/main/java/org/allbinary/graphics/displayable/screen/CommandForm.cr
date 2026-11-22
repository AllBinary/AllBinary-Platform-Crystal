# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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

class CommandForm < Form
    include MyCommandInterface
    include MenuListener
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
    @repaintProcessor : Processor? = nil

    def jf_repaintProcessor : Processor?
        @repaintProcessor
    end

    def jf_repaintProcessor=(value : Processor?) : Processor?
        @repaintProcessor = value
    end
    @commandStack : ABStack? = nil

    def jf_commandStack : ABStack?
        @commandStack
    end

    def jf_commandStack=(value : ABStack?) : ABStack?
        @commandStack = value
    end

    @@jst_NULL_COMMAND_FORM : JAny = nil

    def self.jst_NULL_COMMAND_FORM : JAny
        jclinit
        @@jst_NULL_COMMAND_FORM
    end

    def self.jst_NULL_COMMAND_FORM=(value : JAny) : JAny
        jclinit
        @@jst_NULL_COMMAND_FORM = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COMMAND_FORM = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullCommandForm : CommandForm?
        if CommandForm.jst_NULL_COMMAND_FORM == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            CommandForm.jst_NULL_COMMAND_FORM = CommandForm.new.jinit_CommandForm(NullCommandListener.jst_NULL_COMMAND_LISTENER, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        end
        return JR.cast(CommandForm.jst_NULL_COMMAND_FORM, CommandForm)
    end

    # Java field initializers run after the super constructor
    def jfields_CommandForm : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @repaintProcessor = ScreenRepaintProcessorFactory.getInstance().not_nil!.create(self)
    
    end
    

    def jinit_CommandForm(commandListener : CommandListener?, formTitle : String, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_Form(formTitle)
        jfields_CommandForm()
        @commandStack = StdUtil.getInstance().not_nil!.createStack()
        begin
            @repaintProcessor.not_nil!.process()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
    end
    

    def open : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "open")
    end
    

    def close : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CLOSE)
    end
    

    def update : Nil
        @repaintProcessor.not_nil!.process()
    end
    

    def getSourceId : Int32
        return 0
    end
    

    def addCommand(command : Command?) : Nil
        @commandStack.not_nil!.push(command)
        super(command)
    end
    

    def removeAllCommands : Nil
        size : Int32 = @commandStack.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            removeCommand(JR.cast(@commandStack.not_nil!.pop(), Command))
        end
    end
end

