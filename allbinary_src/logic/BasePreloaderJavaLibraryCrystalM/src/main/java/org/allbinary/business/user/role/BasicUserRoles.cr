# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.business.user.role

class BasicUserRoles < JObject
    @roleVector : BasicArrayList? = nil

    def jf_roleVector : BasicArrayList?
        @roleVector
    end

    def jf_roleVector=(value : BasicArrayList?) : BasicArrayList?
        @roleVector = value
    end

    @@jst_instance : BasicUserRoles? = nil

    def self.jst_instance : BasicUserRoles?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicUserRoles?) : BasicUserRoles?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicUserRoles.new.jinit_BasicUserRoles()
    end
    

    def self.getInstance : BasicUserRoles?
        return BasicUserRoles.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BasicUserRoles : Nil
    @roleVector = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_BasicUserRoles : self
        jfields_BasicUserRoles()
        self
    end
    

    def getRole(role : String) : BasicUserRole?
        roleVector : BasicArrayList? = self.getAll()
        size : Int32 = roleVector.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            userRole : BasicUserRole? = JR.cast(roleVector.not_nil!.get(index), BasicUserRole)
            if role.not_nil!.compareTo(userRole.not_nil!.toString()) == 0
                return userRole
            end
        end
        raise (JException.new.jinit_JException("Unable to get role - Unknown Role")).not_nil!
    end
    

    def getAll : BasicArrayList?
        return @roleVector
    end
end

