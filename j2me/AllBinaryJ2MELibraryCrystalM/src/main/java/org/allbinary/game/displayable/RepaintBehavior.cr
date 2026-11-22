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

class RepaintBehavior < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end

    @@jst_instance : RepaintBehavior? = nil

    def self.jst_instance : RepaintBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : RepaintBehavior?) : RepaintBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = RepaintBehavior.new.jinit_RepaintBehavior()
    end
    

    def self.getInstance : RepaintBehavior?
        return RepaintBehavior.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_RepaintBehavior : Nil
    @logUtil = LogUtil.getInstance()
    @j_NAME = "RepaintBehavior"
    end

    def jinit_RepaintBehavior : self
        jfields_RepaintBehavior()
        self
    end
    

    def repaint(canvas : Canvas?) : Nil
    end
    

    def onChangeRepaint(canvas : Canvas?) : Nil
        features : Features? = Features.getInstance()
        openGLFeatureFactory : OpenGLFeatureFactory? = OpenGLFeatureFactory.getInstance()
        if features.not_nil!.isFeature(openGLFeatureFactory.not_nil!.jf_OPENGL)
            DisplayInfoSingleton.getInstance().not_nil!.process()
        else
            thread : JThread? = JThread.new.jinit_JThread(RepaintRunnable.new.jinit_RepaintRunnable(canvas), @j_NAME)
            thread.not_nil!.start()
        end
    end
end

