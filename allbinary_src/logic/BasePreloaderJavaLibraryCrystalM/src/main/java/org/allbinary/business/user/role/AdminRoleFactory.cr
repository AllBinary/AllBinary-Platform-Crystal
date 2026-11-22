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

class AdminRoleFactory < JObject
    @adminRoles : BasicArrayList? = nil

    def jf_adminRoles : BasicArrayList?
        @adminRoles
    end

    def jf_adminRoles=(value : BasicArrayList?) : BasicArrayList?
        @adminRoles = value
    end
    @storeAdminRoles : BasicArrayList? = nil

    def jf_storeAdminRoles : BasicArrayList?
        @storeAdminRoles
    end

    def jf_storeAdminRoles=(value : BasicArrayList?) : BasicArrayList?
        @storeAdminRoles = value
    end
    @storeManagementRoles : BasicArrayList? = nil

    def jf_storeManagementRoles : BasicArrayList?
        @storeManagementRoles
    end

    def jf_storeManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @storeManagementRoles = value
    end
    @productManagementRoles : BasicArrayList? = nil

    def jf_productManagementRoles : BasicArrayList?
        @productManagementRoles
    end

    def jf_productManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @productManagementRoles = value
    end
    @reviewManagementRoles : BasicArrayList? = nil

    def jf_reviewManagementRoles : BasicArrayList?
        @reviewManagementRoles
    end

    def jf_reviewManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @reviewManagementRoles = value
    end
    @customerManagementRoles : BasicArrayList? = nil

    def jf_customerManagementRoles : BasicArrayList?
        @customerManagementRoles
    end

    def jf_customerManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @customerManagementRoles = value
    end
    @workflowManagementRoles : BasicArrayList? = nil

    def jf_workflowManagementRoles : BasicArrayList?
        @workflowManagementRoles
    end

    def jf_workflowManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @workflowManagementRoles = value
    end
    @orderManagementRoles : BasicArrayList? = nil

    def jf_orderManagementRoles : BasicArrayList?
        @orderManagementRoles
    end

    def jf_orderManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @orderManagementRoles = value
    end
    @adjusterManagementRoles : BasicArrayList? = nil

    def jf_adjusterManagementRoles : BasicArrayList?
        @adjusterManagementRoles
    end

    def jf_adjusterManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @adjusterManagementRoles = value
    end
    @shippingManagementRoles : BasicArrayList? = nil

    def jf_shippingManagementRoles : BasicArrayList?
        @shippingManagementRoles
    end

    def jf_shippingManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @shippingManagementRoles = value
    end
    @webManagementRoles : BasicArrayList? = nil

    def jf_webManagementRoles : BasicArrayList?
        @webManagementRoles
    end

    def jf_webManagementRoles=(value : BasicArrayList?) : BasicArrayList?
        @webManagementRoles = value
    end

    @@jst_instance : AdminRoleFactory? = nil

    def self.jst_instance : AdminRoleFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AdminRoleFactory?) : AdminRoleFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AdminRoleFactory.new.jinit_AdminRoleFactory()
    end
    

    def self.getInstance : AdminRoleFactory?
        return AdminRoleFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AdminRoleFactory : Nil
    @adminRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @storeAdminRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @storeManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @productManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @reviewManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @customerManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @workflowManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @orderManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @adjusterManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @shippingManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    @webManagementRoles = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_AdminRoleFactory : self
        jfields_AdminRoleFactory()
        basicUserRoleFactory : BasicUserRoleFactory? = BasicUserRoleFactory.getInstance()
        @adminRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @storeAdminRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @storeAdminRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @storeManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @storeManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @storeManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_CUSTOMERMANAGER)
        @storeManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADJUSTER)
        @storeManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_PRODUCTMANAGER)
        @storeManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_REVIEWER)
        @storeManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_SHIPPING)
        @productManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @productManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @productManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_PRODUCTMANAGER)
        @reviewManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @reviewManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @reviewManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_REVIEWER)
        @customerManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @customerManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @customerManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_CUSTOMERMANAGER)
        @workflowManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @workflowManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @workflowManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_WORKFLOWEDITOR)
        @orderManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @orderManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @adjusterManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @adjusterManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @adjusterManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADJUSTER)
        @shippingManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @shippingManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @shippingManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_SHIPPING)
        @webManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_ADMINISTRATOR)
        @webManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_STOREMANAGER)
        @webManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_WEBMANAGER)
        @webManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_WORKFLOWEDITOR)
        @webManagementRoles.not_nil!.add(basicUserRoleFactory.not_nil!.jf_VIEWEDITOR)
        self
    end
    

    def getProductManagementRoles : BasicArrayList?
        return @productManagementRoles
    end
    

    def getAdminRoles : BasicArrayList?
        return @adminRoles
    end
    

    def getStoreAdminRoles : BasicArrayList?
        return @storeAdminRoles
    end
    

    def getStoreManagementRoles : BasicArrayList?
        return @storeManagementRoles
    end
    

    def getReviewManagementRoles : BasicArrayList?
        return @reviewManagementRoles
    end
    

    def getCustomerManagementRoles : BasicArrayList?
        return @customerManagementRoles
    end
    

    def getWorkflowManagementRoles : BasicArrayList?
        return @workflowManagementRoles
    end
    

    def getWebManagementRoles : BasicArrayList?
        return @webManagementRoles
    end
    

    def getShippingManagementRoles : BasicArrayList?
        return @shippingManagementRoles
    end
    

    def getAdjusterManagementRoles : BasicArrayList?
        return @adjusterManagementRoles
    end
    

    def getOrderManagementRoles : BasicArrayList?
        return @orderManagementRoles
    end
end

