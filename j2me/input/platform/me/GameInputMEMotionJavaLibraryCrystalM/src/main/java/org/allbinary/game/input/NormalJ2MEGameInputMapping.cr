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

class NormalJ2MEGameInputMapping < J2MEGameInputMapping

    def jinit_NormalJ2MEGameInputMapping : self
        jinit_J2MEGameInputMapping()
        self
    end
    

    def getDefault : InputToGameKeyMapping?
        return NormalJ2MEDefaultGameInputMapping.new.jinit_NormalJ2MEDefaultGameInputMapping().not_nil!.getInputMapping()
    end
end

