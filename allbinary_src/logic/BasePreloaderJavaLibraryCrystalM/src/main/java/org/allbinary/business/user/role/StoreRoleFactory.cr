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

class StoreRoleFactory < JObject
    @roles : BasicArrayList? = nil

    def jf_roles : BasicArrayList?
        @roles
    end

    def jf_roles=(value : BasicArrayList?) : BasicArrayList?
        @roles = value
    end
    @subscriberRoles : BasicArrayList? = nil

    def jf_subscriberRoles : BasicArrayList?
        @subscriberRoles
    end

    def jf_subscriberRoles=(value : BasicArrayList?) : BasicArrayList?
        @subscriberRoles = value
    end
    @wholesaleRoles : BasicArrayList? = nil

    def jf_wholesaleRoles : BasicArrayList?
        @wholesaleRoles
    end

    def jf_wholesaleRoles=(value : BasicArrayList?) : BasicArrayList?
        @wholesaleRoles = value
    end

    @@jst_instance : StoreRoleFactory? = nil

    def self.jst_instance : StoreRoleFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : StoreRoleFactory?) : StoreRoleFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = StoreRoleFactory.new.jinit_StoreRoleFactory()
    end
    

    def self.getInstance : StoreRoleFactory?
        return StoreRoleFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_StoreRoleFactory : Nil
    @roles = BasicArrayListD.new.jinit_BasicArrayListD()
    @subscriberRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @wholesaleRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_StoreRoleFactory : self
        jfields_StoreRoleFactory()
        basicUserRoleFactory : BasicUserRoleFactory? = BasicUserRoleFactory.getInstance()
        @roles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_CUSTOMER)
        @roles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_SUBSCRIBERCUSTOMER)
        @roles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_WHOLESALECUSTOMER)
        @subscriberRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_SUBSCRIBERCUSTOMER)
        @wholesaleRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_WHOLESALECUSTOMER)
        self
    end
    

    def getRoles : BasicArrayList?
        return @roles
    end
    

    def getSubscriberRoles : BasicArrayList?
        return @subscriberRoles
    end
    

    def getWholesaleRoles : BasicArrayList?
        return @wholesaleRoles
    end
end

