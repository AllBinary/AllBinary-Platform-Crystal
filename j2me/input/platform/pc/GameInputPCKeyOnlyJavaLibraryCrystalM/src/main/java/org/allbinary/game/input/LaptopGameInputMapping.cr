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

class LaptopGameInputMapping < PCGameInputMapping

    def jinit_LaptopGameInputMapping : self
        jinit_PCGameInputMapping()
        self
    end
    

    def getDefault : InputToGameKeyMapping?
        return LaptopDefaultGameInputMapping.new.jinit_LaptopDefaultGameInputMapping().not_nil!.getInputMapping()
    end
end

