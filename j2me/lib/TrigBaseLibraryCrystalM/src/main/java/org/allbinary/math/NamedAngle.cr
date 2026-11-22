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
# package org.allbinary.math

class NamedAngle < Angle
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    

    def jinit_NamedAngle(angle : Int, name : String) : self
        angle = angle.to_i16!
        jinit_Angle(angle)
        @name = name
        self
    end
end

