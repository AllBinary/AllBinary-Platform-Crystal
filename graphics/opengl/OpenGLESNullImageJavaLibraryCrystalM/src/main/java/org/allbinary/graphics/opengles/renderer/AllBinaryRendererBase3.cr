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
# package org.allbinary.graphics.opengles.renderer

class AllBinaryRendererBase3 < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryRendererBase3 : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_AllBinaryRendererBase3 : self
        jfields_AllBinaryRendererBase3()
        self
    end
    

    def update(gl : GL10?) : Nil
        while @list.not_nil!.size() > 0
            openGLESImage : OpenGLESImage? = JR.cast(@list.not_nil!.removeAt(0), OpenGLESImage)
            if !(openGLESImage).nil?
                openGLESImage.not_nil!.set(gl)
            end
        end
    end
    

    def add(image : Image?) : Nil
        @list.not_nil!.add(image)
    end
end

