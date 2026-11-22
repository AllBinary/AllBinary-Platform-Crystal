# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class GroupCommonFactory < JObject
    @j_ID : JInteger? = nil

    def jf_ID : JInteger?
        @j_ID
    end

    def jf_ID=(value : JInteger?) : JInteger?
        @j_ID = value
    end
    @j_GROUP_NAME_LABEL : String = ""

    def jf_GROUP_NAME_LABEL : String
        @j_GROUP_NAME_LABEL
    end

    def jf_GROUP_NAME_LABEL=(value : String) : String
        @j_GROUP_NAME_LABEL = value
    end
    @j_ID_LABEL : String = ""

    def jf_ID_LABEL : String
        @j_ID_LABEL
    end

    def jf_ID_LABEL=(value : String) : String
        @j_ID_LABEL = value
    end
    @j_ADDING_LABEL : String = ""

    def jf_ADDING_LABEL : String
        @j_ADDING_LABEL
    end

    def jf_ADDING_LABEL=(value : String) : String
        @j_ADDING_LABEL = value
    end
    @j_TO_LABEL : String = ""

    def jf_TO_LABEL : String
        @j_TO_LABEL
    end

    def jf_TO_LABEL=(value : String) : String
        @j_TO_LABEL = value
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
    

    def self.getInstance : GroupCommonFactory?
        if GroupCommonFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            GroupCommonFactory.jst_instance = GroupCommonFactory.new.jinit_GroupCommonFactory()
        end
        return JR.cast(GroupCommonFactory.jst_instance, GroupCommonFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_GroupCommonFactory : Nil
    @j_ID = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(10)
    @j_GROUP_NAME_LABEL = "Group Name: "
    @j_ID_LABEL = " Id: "
    @j_ADDING_LABEL = "Adding: "
    @j_TO_LABEL = " to: "
    end

    def jinit_GroupCommonFactory : self
        jfields_GroupCommonFactory()
        self
    end
end

