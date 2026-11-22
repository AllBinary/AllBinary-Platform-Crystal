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
# package org.allbinary.game.displayable

class RepaintRunnable < ARunnable
    @canvas : Canvas? = nil

    def jf_canvas : Canvas?
        @canvas
    end

    def jf_canvas=(value : Canvas?) : Canvas?
        @canvas = value
    end
    

    def jinit_RepaintRunnable(canvas : Canvas?) : self
        jinit_ARunnable()
        @canvas = canvas
        self
    end
    

    def run : Nil
        begin
            @canvas.not_nil!.repaint()
            DisplayInfoSingleton.getInstance().not_nil!.process()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            logUtil : LogUtil? = LogUtil.getInstance()
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex1
            end
        end
    end
end

