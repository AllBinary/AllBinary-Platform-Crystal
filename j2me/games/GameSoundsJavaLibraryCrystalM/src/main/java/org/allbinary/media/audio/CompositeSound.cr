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
# package org.allbinary.media.audio

class CompositeSound < Sound
    

    def jinit_CompositeSound(resource : String) : self
        jinit_Sound(resource)
        self
    end
    

    def init : Nil
        self.setPlayerP(PlayerComposite.new.jinit_PlayerComposite(AllBinaryMediaManager.createPlayer(self.getResource()), 570))
    end
end

