# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.graphics.geography.pathfinding

class MultipassState < JObject
    @step : Int32 = 0

    def jf_step : Int32
        @step
    end

    def jf_step=(value : Int32) : Int32
        @step = value
    end
    @iteration : Int32 = 0

    def jf_iteration : Int32
        @iteration
    end

    def jf_iteration=(value : Int32) : Int32
        @iteration = value
    end
    @iteration2 : Int32 = 0

    def jf_iteration2 : Int32
        @iteration2
    end

    def jf_iteration2=(value : Int32) : Int32
        @iteration2 = value
    end

    def jinit_MultipassState : self
        self
    end
end

