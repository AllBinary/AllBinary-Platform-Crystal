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
# package org.allbinary.bounds.event

class BoundsChangeEvent < AllBinaryEventObject
    

    def jinit_BoundsChangeEvent(rectangle : Rectangle?) : self
        jinit_AllBinaryEventObject(rectangle)
        self
    end
    

    def getRectangle : Rectangle?
        return JR.cast(self.getSource(), Rectangle)
    end
end

