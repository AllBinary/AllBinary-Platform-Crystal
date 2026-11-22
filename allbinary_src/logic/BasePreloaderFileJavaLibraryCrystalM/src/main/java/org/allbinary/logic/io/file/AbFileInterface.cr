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
# package org.allbinary.logic.io.file

module AbFileInterface
    include JObjectI
end

module JObjectI
    def canRead(*jargs) : NoReturn
        raise JR.abstractMethod("canRead")
    end
    def canWrite(*jargs) : NoReturn
        raise JR.abstractMethod("canWrite")
    end
    def createNewFile(*jargs) : NoReturn
        raise JR.abstractMethod("createNewFile")
    end
    def delete(*jargs) : NoReturn
        raise JR.abstractMethod("delete")
    end
    def deleteOnExit(*jargs) : NoReturn
        raise JR.abstractMethod("deleteOnExit")
    end
    def exists(*jargs) : NoReturn
        raise JR.abstractMethod("exists")
    end
    def getAbsolutePath(*jargs) : NoReturn
        raise JR.abstractMethod("getAbsolutePath")
    end
    def getCanonicalPath(*jargs) : NoReturn
        raise JR.abstractMethod("getCanonicalPath")
    end
    def getParent(*jargs) : NoReturn
        raise JR.abstractMethod("getParent")
    end
    def getPath(*jargs) : NoReturn
        raise JR.abstractMethod("getPath")
    end
    def isAbsolute(*jargs) : NoReturn
        raise JR.abstractMethod("isAbsolute")
    end
    def isDirectory(*jargs) : NoReturn
        raise JR.abstractMethod("isDirectory")
    end
    def isFile(*jargs) : NoReturn
        raise JR.abstractMethod("isFile")
    end
    def isHidden(*jargs) : NoReturn
        raise JR.abstractMethod("isHidden")
    end
    def lastModified(*jargs) : NoReturn
        raise JR.abstractMethod("lastModified")
    end
    def length(*jargs) : NoReturn
        raise JR.abstractMethod("length")
    end
    def list(*jargs) : NoReturn
        raise JR.abstractMethod("list")
    end
    def listWithFilter(*jargs) : NoReturn
        raise JR.abstractMethod("listWithFilter")
    end
    def mkdir(*jargs) : NoReturn
        raise JR.abstractMethod("mkdir")
    end
    def mkdirs(*jargs) : NoReturn
        raise JR.abstractMethod("mkdirs")
    end
    def setLastModified(*jargs) : NoReturn
        raise JR.abstractMethod("setLastModified")
    end
    def setReadOnly(*jargs) : NoReturn
        raise JR.abstractMethod("setReadOnly")
    end
    def toURI(*jargs) : NoReturn
        raise JR.abstractMethod("toURI")
    end
end

