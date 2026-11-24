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
# package org.allbinary.game.input

class GameInputProcessorComposite < PlayerGameInput
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @gameInputProcessorInterface : GameInputProcessorInterface? = nil

    def jf_gameInputProcessorInterface : GameInputProcessorInterface?
        @gameInputProcessorInterface
    end

    def jf_gameInputProcessorInterface=(value : GameInputProcessorInterface?) : GameInputProcessorInterface?
        @gameInputProcessorInterface = value
    end
    @j_NAME_LABEL : String = ""

    def jf_NAME_LABEL : String
        @j_NAME_LABEL
    end

    def jf_NAME_LABEL=(value : String) : String
        @j_NAME_LABEL = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameInputProcessorComposite : Nil
    
    
    @j_NAME_LABEL = " GameInputProcessorInterface: "
    end
    

    def jinit_GameInputProcessorComposite(name : String, gameInputProcessorInterface : GameInputProcessorInterface?) : self
        jinit_PlayerGameInput(BasicArrayListD.new.jinit_BasicArrayListD(), BasicArrayListD.new.jinit_BasicArrayListD(), -1)
        jfields_GameInputProcessorComposite()
        @name = name
        @gameInputProcessorInterface = JR.cast(gameInputProcessorInterface, GameInputProcessorInterface)
        self
    end
    

    def update : Nil
        begin
            list : BasicArrayList? = self.getGameKeyEventList()
            @gameInputProcessorInterface.not_nil!.onInput(list)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_UPDATE, e)
            else
                raise jex1
            end
        end
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(super()).not_nil!.append(@j_NAME_LABEL).not_nil!.append(@name).not_nil!.toString()
    end
end

