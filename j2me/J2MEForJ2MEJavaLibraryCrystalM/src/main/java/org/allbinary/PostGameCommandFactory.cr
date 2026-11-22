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

class PostGameCommandFactory < JObject

    @@jst_instance : PostGameCommandFactory? = nil

    def self.jst_instance : PostGameCommandFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PostGameCommandFactory?) : PostGameCommandFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PostGameCommandFactory.new.jinit_PostGameCommandFactory()
    end
    

    def self.getInstance : PostGameCommandFactory?
        return PostGameCommandFactory.jst_instance
    end

    def jinit_PostGameCommandFactory : self
        self
    end
    

    def addCommands(canvas : MyCanvas?) : Nil
        MultiPlayerGameFeatureFactory.getInstance().not_nil!.addCommands(canvas)
    end
end

