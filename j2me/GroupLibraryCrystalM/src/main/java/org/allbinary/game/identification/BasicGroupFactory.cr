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
# package org.allbinary.game.identification

class BasicGroupFactory < JObject
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end
    @j_NO_SUCH_GROUP : String = ""

    def jf_NO_SUCH_GROUP : String
        @j_NO_SUCH_GROUP
    end

    def jf_NO_SUCH_GROUP=(value : String) : String
        @j_NO_SUCH_GROUP = value
    end
    @j_GOOD : Group? = nil

    def jf_GOOD : Group?
        @j_GOOD
    end

    def jf_GOOD=(value : Group?) : Group?
        @j_GOOD = value
    end
    @j_ENEMY : Group? = nil

    def jf_ENEMY : Group?
        @j_ENEMY
    end

    def jf_ENEMY=(value : Group?) : Group?
        @j_ENEMY = value
    end
    @j_ENEMY_ON_LEVEL : Group? = nil

    def jf_ENEMY_ON_LEVEL : Group?
        @j_ENEMY_ON_LEVEL
    end

    def jf_ENEMY_ON_LEVEL=(value : Group?) : Group?
        @j_ENEMY_ON_LEVEL = value
    end
    @j_NONE : Group? = nil

    def jf_NONE : Group?
        @j_NONE
    end

    def jf_NONE=(value : Group?) : Group?
        @j_NONE = value
    end
    @j_GOOD_ARRAY : Array(Group?)? = nil

    def jf_GOOD_ARRAY : Array(Group?)?
        @j_GOOD_ARRAY
    end

    def jf_GOOD_ARRAY=(value : Array(Group?)?) : Array(Group?)?
        @j_GOOD_ARRAY = value
    end
    @j_ENEMY_ARRAY : Array(Group?)? = nil

    def jf_ENEMY_ARRAY : Array(Group?)?
        @j_ENEMY_ARRAY
    end

    def jf_ENEMY_ARRAY=(value : Array(Group?)?) : Array(Group?)?
        @j_ENEMY_ARRAY = value
    end
    @j_ENEMY_ON_LEVEL_ARRAY : Array(Group?)? = nil

    def jf_ENEMY_ON_LEVEL_ARRAY : Array(Group?)?
        @j_ENEMY_ON_LEVEL_ARRAY
    end

    def jf_ENEMY_ON_LEVEL_ARRAY=(value : Array(Group?)?) : Array(Group?)?
        @j_ENEMY_ON_LEVEL_ARRAY = value
    end
    @j_NONE_ARRAY : Array(Group?)? = nil

    def jf_NONE_ARRAY : Array(Group?)?
        @j_NONE_ARRAY
    end

    def jf_NONE_ARRAY=(value : Array(Group?)?) : Array(Group?)?
        @j_NONE_ARRAY = value
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
    

    def self.getInstance : BasicGroupFactory?
        if BasicGroupFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            BasicGroupFactory.jst_instance = BasicGroupFactory.new.jinit_BasicGroupFactory()
        end
        return JR.cast(BasicGroupFactory.jst_instance, BasicGroupFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_BasicGroupFactory : Nil
    @j_NAME = "GROUP_NAME"
    @j_NO_SUCH_GROUP = "No Such Group: "
    @j_GOOD = Group.new.jinit_Group("Good Guys", 0_i16)
    @j_ENEMY = Group.new.jinit_Group("Bad Guys", 1_i16)
    @j_ENEMY_ON_LEVEL = Group.new.jinit_Group("Bad Guys on Level", 2_i16)
    @j_NONE = Group.new.jinit_Group("Not On A Team", 3_i16)
    @j_GOOD_ARRAY = [@j_GOOD] of Group?
    @j_ENEMY_ARRAY = [@j_ENEMY] of Group?
    @j_ENEMY_ON_LEVEL_ARRAY = [@j_ENEMY, @j_ENEMY_ON_LEVEL] of Group?
    @j_NONE_ARRAY = [@j_NONE] of Group?
    end

    def jinit_BasicGroupFactory : self
        jfields_BasicGroupFactory()
        self
    end
end

