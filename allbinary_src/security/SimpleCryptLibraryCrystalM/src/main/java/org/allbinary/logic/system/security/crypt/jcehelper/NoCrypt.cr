# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.system.security.crypt.jcehelper

class NoCrypt < JObject
    include CryptInterface

    def jinit_NoCrypt : self
        self
    end
    

    def encrypt(array : Array(Int8)?) : Array(Int8)?
        return array
    end
    

    def decrypt(array : Array(Int8)?) : Array(Int8)?
        return array
    end
end

