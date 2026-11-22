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
# package org.allbinary.logic.io.path

class AbFilePath < AbPath
    

    def jinit_AbFilePath(aPath : String) : self
        jinit_AbPath(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
        pathData : AbPathData? = AbPathData.getInstance()
        abPathUtil : PathUtil? = PathUtil.getInstance()
        @schema = self.getSchema(aPath)
        self.setName(pathData.not_nil!.getNameFromPath(aPath))
        self.setPath(abPathUtil.not_nil!.adjust(self.getPathFromPath(abPathUtil.not_nil!.removeNameFromPath(aPath).not_nil!.toString())))
        self
    end
end

