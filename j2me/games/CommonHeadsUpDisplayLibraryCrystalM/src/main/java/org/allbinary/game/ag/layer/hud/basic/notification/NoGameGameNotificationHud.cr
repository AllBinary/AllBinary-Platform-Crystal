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
# package org.allbinary.game.ag.layer.hud.basic.notification

class NoGameGameNotificationHud < GameNotificationHud
    

    def jinit_NoGameGameNotificationHud : self
        jinit_GameNotificationHud(BasicHudFactory.getInstance().not_nil!.jf_TOPCENTER, BasicHudFactory.getInstance().not_nil!.jf_HORIZONTAL, 2, BasicColorFactory.getInstance().not_nil!.jf_RED)
        @updateMaxWidth = 40
        @updateMaxHeight = 14
        self
    end
end

