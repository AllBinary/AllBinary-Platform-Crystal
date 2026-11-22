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
# package org.allbinary.media

class AllBinaryVibrationME < JObject

    def jinit_AllBinaryVibrationME : self
        self
    end
    

    def vibrate(duration : Int, type_ : Int, volume : Int) : Nil
        duration = duration.to_i32!
        type_ = type_.to_i32!
        volume = volume.to_i32!
    end
end

