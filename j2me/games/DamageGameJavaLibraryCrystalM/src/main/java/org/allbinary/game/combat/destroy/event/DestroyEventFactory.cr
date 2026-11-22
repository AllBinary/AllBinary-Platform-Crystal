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
# package org.allbinary.game.combat.destroy.event

class DestroyEventFactory < JObject
    include AllBinaryEventObjectFactoryInterface
    @combatGameCanvas : AllBinaryGameCanvas? = nil

    def jf_combatGameCanvas : AllBinaryGameCanvas?
        @combatGameCanvas
    end

    def jf_combatGameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @combatGameCanvas = value
    end
    

    def jinit_DestroyEventFactory(combatGameCanvas : AllBinaryGameCanvas?) : self
        @combatGameCanvas = combatGameCanvas
        self
    end
    

    def getInstance : AllBinaryEventObject?
        return DestroyedEvent.new.jinit_DestroyedEvent(@combatGameCanvas)
    end
end

