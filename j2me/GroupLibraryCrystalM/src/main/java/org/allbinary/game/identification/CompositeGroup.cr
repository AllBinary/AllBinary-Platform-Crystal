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

class CompositeGroup < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @groupInterface : Group? = nil

    def jf_groupInterface : Group?
        @groupInterface
    end

    def jf_groupInterface=(value : Group?) : Group?
        @groupInterface = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    # Java field initializers run after the super constructor
    def jfields_CompositeGroup : Nil
    @logUtil = LogUtil.getInstance()
    
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_CompositeGroup(groupInterface : Group?) : self
        jfields_CompositeGroup()
        @groupInterface = groupInterface
        self
    end
    

    def clear : Nil
        @list.not_nil!.clear()
    end
    

    def add(groupInterface : Group?) : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        groupCommonFactory : GroupCommonFactory? = GroupCommonFactory.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(groupCommonFactory.not_nil!.jf_ADDING_LABEL)
        stringBuffer.not_nil!.append(groupInterface.not_nil!.toString())
        stringBuffer.not_nil!.append(groupCommonFactory.not_nil!.jf_TO_LABEL)
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(@groupInterface))
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, commonStrings.not_nil!.jf_ADD)
        @list.not_nil!.add(groupInterface)
    end
    

    def isInGroup(groupInterface : Group?) : Bool
        if @list.not_nil!.contains(groupInterface)
            return true
        else
            return false
        end
        return false
    end
    

    def getGroup : Group?
        return @groupInterface
    end
end

