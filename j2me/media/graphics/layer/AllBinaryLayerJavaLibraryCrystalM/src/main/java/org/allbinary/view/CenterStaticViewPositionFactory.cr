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
# package org.allbinary.view

class CenterStaticViewPositionFactory < JObject
    

    def jinit_CenterStaticViewPositionFactory : self
        self
    end
    

    def getInstance(z : Int) : ViewPositionBase?
        z = z.to_i32!
        displayInfoSingleton : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        return StaticViewPosition.new.jinit_StaticViewPosition((JR.shr(displayInfoSingleton.not_nil!.getLastWidth(), 1)), (JR.shr(displayInfoSingleton.not_nil!.getLastHeight(), 1)), z)
    end
end

