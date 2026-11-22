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

class GameInputProcessorUtil < JObject
    

    def self.init(inputProcessorArray : Array(GameInputProcessor?)?) : Nil
        noInputProcessor : GameInputProcessor? = GameInputProcessor.getInstance()
        total : Int32 = InputFactory.getInstance().not_nil!.jf_MAX
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < total
            inputProcessorCanBeNull : GameInputProcessor? = inputProcessorArray.not_nil![index]
            if (inputProcessorCanBeNull).nil?
                inputProcessorArray.not_nil![index] = noInputProcessor
            end
        end
    end

    def jinit_GameInputProcessorUtil : self
        self
    end
end

