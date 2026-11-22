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
# package org.allbinary.bounds

class LayerBounds < JObject
    include BoundsChangeEventListener
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @rectangle : Rectangle? = nil

    def jf_rectangle : Rectangle?
        @rectangle
    end

    def jf_rectangle=(value : Rectangle?) : Rectangle?
        @rectangle = value
    end

    # Java field initializers run after the super constructor
    def jfields_LayerBounds : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_LayerBounds(rectangle : Rectangle?) : self
        jfields_LayerBounds()
        @rectangle = rectangle
        self
    end
    

    def getRectangleP : Rectangle?
        return @rectangle
    end
    

    def visit(boundsVisitorInterface : BoundsVisitorInterface?) : Nil
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onBoundsChangeEvent(boundsChangeEvent : BoundsChangeEvent?) : Nil
        @rectangle = boundsChangeEvent.not_nil!.getRectangle()
    end
end

