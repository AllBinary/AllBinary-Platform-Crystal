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
# package org.allbinary.math

class Angle < JObject
    @value : Int16 = 0_i16

    def jf_value : Int16
        @value
    end

    def jf_value=(value : Int16) : Int16
        @value = value
    end
    

    def jinit_Angle(angle : Int) : self
        angle = angle.to_i16!
        @value = angle
        self
    end
    

    def getValue : Int16
        return @value
    end
end

