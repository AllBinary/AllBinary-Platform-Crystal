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
# package org.allbinary

class DisposalUtil < JObject

    @@jst_instance : DisposalUtil? = nil

    def self.jst_instance : DisposalUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DisposalUtil?) : DisposalUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DisposalUtil.new.jinit_DisposalUtil()
    end
    

    def self.getInstance : DisposalUtil?
        return DisposalUtil.jst_instance
    end

    def jinit_DisposalUtil : self
        self
    end
    

    def disposeImage(image : Image?) : Nil
    end
    

    def disposeResource(resource : SwtResource?) : Nil
        if !resource.not_nil!.isDisposed()
            resource.not_nil!.dispose()
        end
    end
end

