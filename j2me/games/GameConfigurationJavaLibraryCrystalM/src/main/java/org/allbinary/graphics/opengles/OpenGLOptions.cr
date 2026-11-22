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
# package org.allbinary.graphics.opengles

class OpenGLOptions < JObject

    def jinit_OpenGLOptions : self
        self
    end
    

    def init : Nil
        openGLFeatureFactory : OpenGLFeatureFactory? = OpenGLFeatureFactory.getInstance()
        if Features.getInstance().not_nil!.isFeature(openGLFeatureFactory.not_nil!.jf_OPENGL_OPTIONS)
            openGLMultipleList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            openGLMultipleList.not_nil!.add(openGLFeatureFactory.not_nil!.jf_OPENGL)
            GameFeatureChoiceGroups.getMultipleInstance().not_nil!.add("OpenGL (Complete Restart)", openGLMultipleList)
            openGLVersionSelectorMultipleList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            openGLVersionSelectorMultipleList.not_nil!.add(openGLFeatureFactory.not_nil!.jf_OPENGL_AUTO_SELECT)
            openGLVersionSelectorMultipleList.not_nil!.add(openGLFeatureFactory.not_nil!.jf_OPENGL_MINIMUM)
            GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.add("OpenGL Version Selector", openGLVersionSelectorMultipleList)
            openGLImageColorMultipleList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            openGLImageColorMultipleList.not_nil!.add(openGLFeatureFactory.not_nil!.jf_IMAGE_COLOR_DEPTH_4444)
            openGLImageColorMultipleList.not_nil!.add(openGLFeatureFactory.not_nil!.jf_IMAGE_COLOR_DEPTH_8888)
            GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.add("OpenGL Image Color RGBA", openGLImageColorMultipleList)
        end
    end
end

