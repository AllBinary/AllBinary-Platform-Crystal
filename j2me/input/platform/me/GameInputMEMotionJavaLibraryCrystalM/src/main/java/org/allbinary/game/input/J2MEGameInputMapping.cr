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

class J2MEGameInputMapping < PersistentInputMapping
    

    def jinit_J2MEGameInputMapping : self
        jinit_PersistentInputMapping(GamePersistanceStrings.getInstance().not_nil!.jf_SAVED_INPUT_CONFIGURATION_RECORD_ID)
        self
    end
    

    def init(abeClientInformation : AbeClientInformationInterface?) : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_INIT)
        J2MEKeyFactory.getInstance().not_nil!.init()
        super(abeClientInformation)
        if self.getTotalMapped() == 0 || self.isDefaultNew()
            self.getInputMapping().not_nil!.addMapping(self.getDefault())
            self.save(abeClientInformation)
        end
    end
    

    def isDelete(input : Input?) : Bool
        if input == GameKeyFactory.getInstance().not_nil!.jf_GAME_D
            return true
        else
            return false
        end
        return false
    end
    

    def isSystemInput(input : Input?) : Bool
        return false
    end
end

