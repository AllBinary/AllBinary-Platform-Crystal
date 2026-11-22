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
# package org.allbinary.game.ag.layer.weapon.mine

class MineWeaponResources < BasicGameResources
    @j_DROP_TEXT_RESOURCE : String = ""

    def jf_DROP_TEXT_RESOURCE : String
        @j_DROP_TEXT_RESOURCE
    end

    def jf_DROP_TEXT_RESOURCE=(value : String) : String
        @j_DROP_TEXT_RESOURCE = value
    end
    @j_DROP_RESOURCE : String = ""

    def jf_DROP_RESOURCE : String
        @j_DROP_RESOURCE
    end

    def jf_DROP_RESOURCE=(value : String) : String
        @j_DROP_RESOURCE = value
    end
    @j_DROP_ICON_RESOURCE : String = ""

    def jf_DROP_ICON_RESOURCE : String
        @j_DROP_ICON_RESOURCE
    end

    def jf_DROP_ICON_RESOURCE=(value : String) : String
        @j_DROP_ICON_RESOURCE = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : MineWeaponResources?
        if MineWeaponResources.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            MineWeaponResources.jst_instance = MineWeaponResources.new.jinit_MineWeaponResources()
        end
        return JR.cast(MineWeaponResources.jst_instance, MineWeaponResources)
    end

    # Java field initializers run after the super constructor
    def jfields_MineWeaponResources : Nil
    @j_DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png"
    @j_DROP_RESOURCE = "/mine_drop_20_by_20.png"
    @j_DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png"
    end
    

    def jinit_MineWeaponResources : self
        jinit_BasicGameResources()
        jfields_MineWeaponResources()
        j_ROOT : String = "/mine"
        j_SMALL : String = "_20_by_20.png"
        j_MEDIUM : String = j_SMALL
        j_SIZE_FOUR : String = j_SMALL
        j_SIZE_FIVE : String = j_SMALL
        j_SIZE_SIX : String = j_SMALL
        j_SIZE : Array(String)? = [j_SMALL, j_MEDIUM, j_SIZE_FOUR, j_SIZE_FIVE, j_SIZE_SIX] of String
        init(j_ROOT, j_SIZE)
        self
    end
end

