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
# package org.allbinary.canvas

class CustomGameMenuUtil < JObject
    

    def self.add(canvas : MyCanvas?) : Nil
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        if AppletUtil.isAppletLoader(canvas)
        elsif J2MEUtil.isHTML()
        else
            canvas.not_nil!.addCommand(gameCommandsFactory.not_nil!.jf_EXIT_COMMAND)
        end
    end

    def jinit_CustomGameMenuUtil : self
        self
    end
end

