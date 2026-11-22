# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer.special

class SpecialGameInputFactory < JObject

    @@jst_NO_SPECIAL_GAME_INPUT : SpecialGameInput? = nil

    def self.jst_NO_SPECIAL_GAME_INPUT : SpecialGameInput?
        jclinit
        @@jst_NO_SPECIAL_GAME_INPUT
    end

    def self.jst_NO_SPECIAL_GAME_INPUT=(value : SpecialGameInput?) : SpecialGameInput?
        jclinit
        @@jst_NO_SPECIAL_GAME_INPUT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NO_SPECIAL_GAME_INPUT = SpecialGameInput.new.jinit_SpecialGameInput()
    end

    def jinit_SpecialGameInputFactory : self
        self
    end
end

