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
# package org.allbinary.logic.util.cache

class BaseBasicArrayListCache < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    # Java field initializers run after the super constructor
    def jfields_BaseBasicArrayListCache : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_BaseBasicArrayListCache : self
        jfields_BaseBasicArrayListCache()
        self
    end
    

    def log : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("S: ")
        stringBuffer.not_nil!.appendint(@list.not_nil!.size())
        return stringBuffer.not_nil!.toString()
    end
end

