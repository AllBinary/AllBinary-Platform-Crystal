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

class BasicArrayListCacheable < BasicArrayListD
    include CacheableInterface

    def jinit_BasicArrayListCacheable : self
        jinit_BasicArrayListD()
        self
    end
    

    def getKey : JAny
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
end

