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

class Group < JObject
    include GroupInterface
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @teamId : Int16 = 0_i16

    def jf_teamId : Int16
        @teamId
    end

    def jf_teamId=(value : Int16) : Int16
        @teamId = value
    end
    @string : String = ""

    def jf_string : String
        @string
    end

    def jf_string=(value : String) : String
        @string = value
    end

    # Java field initializers run after the super constructor
    def jfields_Group : Nil
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    
    @string = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_Group(teamName : String, teamId : Int) : self
        teamId = teamId.to_i16!
        jfields_Group()
        @teamId = teamId
        self.setName(teamName)
        self
    end
    

    def getGroupName : String
        return @name
    end
    

    def setName(name : String) : Nil
        @name = name
        groupCommonFactory : GroupCommonFactory? = GroupCommonFactory.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(groupCommonFactory.not_nil!.jf_GROUP_NAME_LABEL)
        stringBuffer.not_nil!.append(@name)
        stringBuffer.not_nil!.append(groupCommonFactory.not_nil!.jf_ID_LABEL)
        stringBuffer.not_nil!.appendshort(@teamId)
        @string = stringBuffer.not_nil!.toString()
    end
    

    def getGroupId : Int16
        return @teamId
    end
    

    def toString : String
        return @string
    end
end

