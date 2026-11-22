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
# package org.allbinary.game.layer

class LayerPlacementType < JObject
    @type_ : Int32 = 0

    def jf_type : Int32
        @type_
    end

    def jf_type=(value : Int32) : Int32
        @type_ = value
    end
    

    def jinit_LayerPlacementType(type_ : Int) : self
        type_ = type_.to_i32!
        @type_ = type_
        self
    end
    

    def getType : Int32
        return @type_
    end
    

    def setType(type_ : Int) : Nil
        type_ = type_.to_i32!
        @type_ = type_
    end
end

