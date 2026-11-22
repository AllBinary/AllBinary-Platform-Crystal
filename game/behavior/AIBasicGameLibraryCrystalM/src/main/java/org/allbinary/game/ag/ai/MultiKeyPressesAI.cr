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
# package org.allbinary.game.ag.ai

class MultiKeyPressesAI < KeyPressesAI
    @toggleTimeHelper : TimeDelayHelper? = nil

    def jf_toggleTimeHelper : TimeDelayHelper?
        @toggleTimeHelper
    end

    def jf_toggleTimeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @toggleTimeHelper = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_MultiKeyPressesAI : Nil
    @toggleTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(600)
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    end
    

    def jinit_MultiKeyPressesAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_KeyPressesAI(hashtable, ownerLayerInterface, gameInput)
        jfields_MultiKeyPressesAI()
        self.update()
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
    end
    

    def update : Nil
        gameInput : GameInput? = self.getGameInput()
        keys : Array(JInteger?)? = @keys
        size : Int32 = keys.not_nil!.size
        if self.isOn()
            index = 0
            jfor2 = false
            while true
                if jfor2
                    index &+= 1
                end
                jfor2 = true
                break unless index < size
                key = keys.not_nil![index].not_nil!.intValue()
                if key != -1
                    gameInput.not_nil!.add(@gameKeyEventFactory.not_nil!.getInstanceForKey(self, key))
                end
            end
        else
            index = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                key = keys.not_nil![index].not_nil!.intValue()
                if key != -1
                    gameInput.not_nil!.addForRemoval(@gameKeyEventFactory.not_nil!.getInstanceForKey(self, key))
                end
            end
        end
    end
    

    def toggle : Nil
        if @toggleTimeHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
            super()
            self.update()
        end
    end
    

    def disable : Nil
        if @toggleTimeHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
            super()
            self.update()
        end
    end
    

    def enable : Nil
        if @toggleTimeHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
            super()
            self.update()
        end
    end
end

