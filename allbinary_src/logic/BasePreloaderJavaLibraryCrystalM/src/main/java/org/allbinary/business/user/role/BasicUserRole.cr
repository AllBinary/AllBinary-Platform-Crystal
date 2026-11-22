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
# package org.allbinary.business.user.role

class BasicUserRole < JObject
    include JSerializable
    @m_int_RoleId : Int32 = 0

    def jf_m_int_RoleId : Int32
        @m_int_RoleId
    end

    def jf_m_int_RoleId=(value : Int32) : Int32
        @m_int_RoleId = value
    end
    @role : String = ""

    def jf_role : String
        @role
    end

    def jf_role=(value : String) : String
        @role = value
    end
    @displayValue : String = ""

    def jf_displayValue : String
        @displayValue
    end

    def jf_displayValue=(value : String) : String
        @displayValue = value
    end
    @sessionTimeout : Int64 = 0_i64

    def jf_sessionTimeout : Int64
        @sessionTimeout
    end

    def jf_sessionTimeout=(value : Int64) : Int64
        @sessionTimeout = value
    end
    @sessionInactivityTimeout : Int64 = 0_i64

    def jf_sessionInactivityTimeout : Int64
        @sessionInactivityTimeout
    end

    def jf_sessionInactivityTimeout=(value : Int64) : Int64
        @sessionInactivityTimeout = value
    end
    

    def jinit_BasicUserRole(aRole : String, a_int_RoleId : Int, aSessionTimeout : Int, aSessionInactivityTimeout : Int) : self
        a_int_RoleId = a_int_RoleId.to_i32!
        aSessionTimeout = aSessionTimeout.to_i64!
        aSessionInactivityTimeout = aSessionInactivityTimeout.to_i64!
        jinit_BasicUserRole(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout)
        self
    end
    

    def jinit_BasicUserRole(aRole : String, aDisplayValue : String, a_int_RoleId : Int, aSessionTimeout : Int, aSessionInactivityTimeout : Int) : self
        a_int_RoleId = a_int_RoleId.to_i32!
        aSessionTimeout = aSessionTimeout.to_i64!
        aSessionInactivityTimeout = aSessionInactivityTimeout.to_i64!
        @m_int_RoleId = a_int_RoleId
        @role = aRole
        @displayValue = aDisplayValue
        @sessionTimeout = aSessionTimeout
        @sessionInactivityTimeout = aSessionInactivityTimeout
        BasicUserRoles.getInstance().not_nil!.jf_roleVector.not_nil!.add(self)
        self
    end
    

    def getRoleId : Int32
        return @m_int_RoleId
    end
    

    def getRole : String
        return @role
    end
    

    def getSessionTimeout : Int64
        return @sessionTimeout
    end
    

    def getSessionInactivityTimeout : Int64
        return @sessionInactivityTimeout
    end
    

    def equals(basicUserRole : BasicUserRole?) : Bool
        if self.getRoleId() == basicUserRole.not_nil!.getRoleId()
            return true
        end
        return false
    end
    

    def toString : String
        return self.getRole()
    end
end

