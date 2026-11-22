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
# package org.allbinary.game.layer.special

class AnalogInputBuilder < JObject

    @@jst_instance : AnalogInputBuilder? = nil

    def self.jst_instance : AnalogInputBuilder?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnalogInputBuilder?) : AnalogInputBuilder?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnalogInputBuilder.new.jinit_AnalogInputBuilder()
    end
    

    def self.getInstance : AnalogInputBuilder?
        return AnalogInputBuilder.jst_instance
    end

    def jinit_AnalogInputBuilder : self
        self
    end
    

    def disable(inputProcessorArray : Array(GameInputProcessor?)?, collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer?) : Nil
        inputProcessorArray.not_nil![Canvas.jst_UP] = SpecialUpGameInputProcessor.new.jinit_SpecialUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_DOWN] = SpecialDownGameInputProcessor.new.jinit_SpecialDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_RIGHT] = SpecialRightGameInputProcessor.new.jinit_SpecialRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_LEFT] = SpecialLeftGameInputProcessor.new.jinit_SpecialLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_KEY_NUM0] = Special1GameInputProcessor.new.jinit_Special1GameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_KEY_NUM5] = Special3GameInputProcessor.new.jinit_Special3GameInputProcessor(collidableDestroyableDamageableLayer)
    end
    

    def enable(inputProcessorArray : Array(GameInputProcessor?)?, collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer?) : Nil
        inputProcessorArray.not_nil![Canvas.jst_UP] = SpecialAnalogUpGameInputProcessor.new.jinit_SpecialAnalogUpGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_DOWN] = SpecialAnalogDownGameInputProcessor.new.jinit_SpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_RIGHT] = SpecialAnalogRightGameInputProcessor.new.jinit_SpecialAnalogRightGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_LEFT] = SpecialAnalogLeftGameInputProcessor.new.jinit_SpecialAnalogLeftGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_KEY_NUM0] = SpecialAnalogLeftTriggerGameInputProcessor.new.jinit_SpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
        inputProcessorArray.not_nil![Canvas.jst_KEY_NUM5] = SpecialAnalogRightTriggerGameInputProcessor.new.jinit_SpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer)
    end
end

