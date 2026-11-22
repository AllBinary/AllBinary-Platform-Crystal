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
# package org.allbinary.game.physics.friction

class FrictionData < JObject

    def self.jst_FRICTION_DENOMINATOR : Int32
        100
    end
    

    def self.getFrictionDenominator : Int32
        return FrictionData.jst_FRICTION_DENOMINATOR
    end
    

    def jinit_FrictionData : self
        self
    end
end

