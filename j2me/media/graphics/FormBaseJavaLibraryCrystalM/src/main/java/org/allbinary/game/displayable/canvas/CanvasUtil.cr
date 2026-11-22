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

class CanvasUtil < JObject
    

    def self.getKeyName(key : Int) : String
        key = key.to_i32!
        commonPhoneStrings : CommonPhoneStrings? = CommonPhoneStrings.getInstance()
        if key == Canvas.jst_UP
            return commonPhoneStrings.not_nil!.jf_UP
        elsif key == Canvas.jst_DOWN
            return commonPhoneStrings.not_nil!.jf_DOWN
        elsif key == Canvas.jst_RIGHT
            return commonPhoneStrings.not_nil!.jf_RIGHT
        elsif key == Canvas.jst_LEFT
            return commonPhoneStrings.not_nil!.jf_LEFT
        elsif key == Canvas.jst_FIRE
            return commonPhoneStrings.not_nil!.jf_FIRE
        end
        return "UNKNOWN KEY"
    end
    

    def jinit_CanvasUtil : self
        self
    end
end

