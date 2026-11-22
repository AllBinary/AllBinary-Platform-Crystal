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

class AlwaysRepaintBehavior < RepaintBehavior
    # NAME is the field of RepaintBehavior

    @@jst_instanceC : AlwaysRepaintBehavior? = nil

    def self.jst_instanceC : AlwaysRepaintBehavior?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : AlwaysRepaintBehavior?) : AlwaysRepaintBehavior?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = AlwaysRepaintBehavior.new.jinit_AlwaysRepaintBehavior()
    end
    

    def self.getInstance : AlwaysRepaintBehavior?
        return AlwaysRepaintBehavior.jst_instanceC
    end

    # Java field initializers run after the super constructor
    def jfields_AlwaysRepaintBehavior : Nil
    @j_NAME = "AlwaysRepaintBehavior"
    end

    def jinit_AlwaysRepaintBehavior : self
        jinit_RepaintBehavior()
        jfields_AlwaysRepaintBehavior()
        self
    end
    

    def repaint(canvas : Canvas?) : Nil
        features : Features? = Features.getInstance()
        openGLFeatureFactory : OpenGLFeatureFactory? = OpenGLFeatureFactory.getInstance()
        if features.not_nil!.isFeature(openGLFeatureFactory.not_nil!.jf_OPENGL)
            DisplayInfoSingleton.getInstance().not_nil!.process()
        else
            thread : JThread? = JThread.new.jinit_JThread(RepaintRunnable.new.jinit_RepaintRunnable(canvas), @j_NAME)
            thread.not_nil!.start()
        end
    end
    

    def onChangeRepaint(canvas : Canvas?) : Nil
    end
end

