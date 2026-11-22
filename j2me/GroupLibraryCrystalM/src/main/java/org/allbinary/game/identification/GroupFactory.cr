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

class GroupFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_NULL_GROUP_ARRAY : Array(Group?)? = nil

    def jf_NULL_GROUP_ARRAY : Array(Group?)?
        @j_NULL_GROUP_ARRAY
    end

    def jf_NULL_GROUP_ARRAY=(value : Array(Group?)?) : Array(Group?)?
        @j_NULL_GROUP_ARRAY = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @index : Int32 = 0

    def jf_index : Int32
        @index
    end

    def jf_index=(value : Int32) : Int32
        @index = value
    end

    @@jst_instance : GroupFactory? = nil

    def self.jst_instance : GroupFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GroupFactory?) : GroupFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GroupFactory.new.jinit_GroupFactory()
    end
    

    def self.getInstance : GroupFactory?
        return GroupFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GroupFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_NULL_GROUP_ARRAY = Array(Group?).new(0, nil)
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @index = 0
    end

    def jinit_GroupFactory : self
        jfields_GroupFactory()
        self
    end
    

    def getNextGroup : Group?
        group : Group? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![@index], Group)
        @index &+= 1
        return group
    end
    

    def getNextGroupByName(name : String) : Group?
        group : Group? = self.getNextGroup()
        group.not_nil!.setName(name)
        return group
    end
    

    def init(groups : Int, nameArray : Array(String)?) : Nil
        groups = groups.to_i16!
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringUtil : StringUtil? = StringUtil.getInstance()
        j_TEAM : String = "Team "
        @list.not_nil!.clear()
        @index = 0
        size : Int32 = @list.not_nil!.size()
        name : String = ""
        while size < (groups).to_i32!
            name = stringUtil.not_nil!.jf_EMPTY_STRING
            if size < nameArray.not_nil!.size
                name = nameArray.not_nil![size]
            else
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                name = stringMaker.not_nil!.append(j_TEAM).not_nil!.appendint(size).not_nil!.toString()
            end
            @list.not_nil!.add(Group.new.jinit_Group(name, ((size &+ 3)).to_i16!))
            size &+= 1
        end
    end
end

