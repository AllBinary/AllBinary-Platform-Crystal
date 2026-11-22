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
# package org.allbinary.game.displayable.canvas

class GameCanvasPauseRunnable < GameRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @allBinaryGameCanvas : AllBinaryGameCanvas? = nil

    def jf_allBinaryGameCanvas : AllBinaryGameCanvas?
        @allBinaryGameCanvas
    end

    def jf_allBinaryGameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @allBinaryGameCanvas = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameCanvasPauseRunnable : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_GameCanvasPauseRunnable(allBinaryGameCanvas : AllBinaryGameCanvas?) : self
        jinit_GameRunnable()
        jfields_GameCanvasPauseRunnable()
        @allBinaryGameCanvas = allBinaryGameCanvas
        self
    end
    

    def run : Nil
    end
    

    def processLoopSleep : Nil
        begin
            features : Features? = Features.getInstance()
            isOpenGL : Bool = features.not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL)
            if isOpenGL
                @allBinaryGameCanvas.not_nil!.processSleep()
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex1
            end
        end
    end
end

