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

class BasicUserRoleFactory < JObject
    @j_INACTIVITYTIMEOUT : Int64 = 0_i64

    def jf_INACTIVITYTIMEOUT : Int64
        @j_INACTIVITYTIMEOUT
    end

    def jf_INACTIVITYTIMEOUT=(value : Int64) : Int64
        @j_INACTIVITYTIMEOUT = value
    end
    @j_CUSTOMERTIMEOUT : Int64 = 0_i64

    def jf_CUSTOMERTIMEOUT : Int64
        @j_CUSTOMERTIMEOUT
    end

    def jf_CUSTOMERTIMEOUT=(value : Int64) : Int64
        @j_CUSTOMERTIMEOUT = value
    end
    @j_CUSTOMERMAXSESSIONTIME : Int64 = 0_i64

    def jf_CUSTOMERMAXSESSIONTIME : Int64
        @j_CUSTOMERMAXSESSIONTIME
    end

    def jf_CUSTOMERMAXSESSIONTIME=(value : Int64) : Int64
        @j_CUSTOMERMAXSESSIONTIME = value
    end
    @j_MAXSESSIONTIME : Int64 = 0_i64

    def jf_MAXSESSIONTIME : Int64
        @j_MAXSESSIONTIME
    end

    def jf_MAXSESSIONTIME=(value : Int64) : Int64
        @j_MAXSESSIONTIME = value
    end
    @j_INSTALLER : BasicUserRole? = nil

    def jf_INSTALLER : BasicUserRole?
        @j_INSTALLER
    end

    def jf_INSTALLER=(value : BasicUserRole?) : BasicUserRole?
        @j_INSTALLER = value
    end
    @j_ADMINISTRATOR : BasicUserRole? = nil

    def jf_ADMINISTRATOR : BasicUserRole?
        @j_ADMINISTRATOR
    end

    def jf_ADMINISTRATOR=(value : BasicUserRole?) : BasicUserRole?
        @j_ADMINISTRATOR = value
    end
    @j_CUSTOMER : BasicUserRole? = nil

    def jf_CUSTOMER : BasicUserRole?
        @j_CUSTOMER
    end

    def jf_CUSTOMER=(value : BasicUserRole?) : BasicUserRole?
        @j_CUSTOMER = value
    end
    @j_SUBSCRIBERCUSTOMER : BasicUserRole? = nil

    def jf_SUBSCRIBERCUSTOMER : BasicUserRole?
        @j_SUBSCRIBERCUSTOMER
    end

    def jf_SUBSCRIBERCUSTOMER=(value : BasicUserRole?) : BasicUserRole?
        @j_SUBSCRIBERCUSTOMER = value
    end
    @j_WHOLESALECUSTOMER : BasicUserRole? = nil

    def jf_WHOLESALECUSTOMER : BasicUserRole?
        @j_WHOLESALECUSTOMER
    end

    def jf_WHOLESALECUSTOMER=(value : BasicUserRole?) : BasicUserRole?
        @j_WHOLESALECUSTOMER = value
    end
    @j_STOREMANAGER : BasicUserRole? = nil

    def jf_STOREMANAGER : BasicUserRole?
        @j_STOREMANAGER
    end

    def jf_STOREMANAGER=(value : BasicUserRole?) : BasicUserRole?
        @j_STOREMANAGER = value
    end
    @j_PRODUCTMANAGER : BasicUserRole? = nil

    def jf_PRODUCTMANAGER : BasicUserRole?
        @j_PRODUCTMANAGER
    end

    def jf_PRODUCTMANAGER=(value : BasicUserRole?) : BasicUserRole?
        @j_PRODUCTMANAGER = value
    end
    @j_CUSTOMERMANAGER : BasicUserRole? = nil

    def jf_CUSTOMERMANAGER : BasicUserRole?
        @j_CUSTOMERMANAGER
    end

    def jf_CUSTOMERMANAGER=(value : BasicUserRole?) : BasicUserRole?
        @j_CUSTOMERMANAGER = value
    end
    @j_PAYMENTMANAGER : BasicUserRole? = nil

    def jf_PAYMENTMANAGER : BasicUserRole?
        @j_PAYMENTMANAGER
    end

    def jf_PAYMENTMANAGER=(value : BasicUserRole?) : BasicUserRole?
        @j_PAYMENTMANAGER = value
    end
    @j_ORDERMANAGER : BasicUserRole? = nil

    def jf_ORDERMANAGER : BasicUserRole?
        @j_ORDERMANAGER
    end

    def jf_ORDERMANAGER=(value : BasicUserRole?) : BasicUserRole?
        @j_ORDERMANAGER = value
    end
    @j_WEBMANAGER : BasicUserRole? = nil

    def jf_WEBMANAGER : BasicUserRole?
        @j_WEBMANAGER
    end

    def jf_WEBMANAGER=(value : BasicUserRole?) : BasicUserRole?
        @j_WEBMANAGER = value
    end
    @j_REVIEWER : BasicUserRole? = nil

    def jf_REVIEWER : BasicUserRole?
        @j_REVIEWER
    end

    def jf_REVIEWER=(value : BasicUserRole?) : BasicUserRole?
        @j_REVIEWER = value
    end
    @j_SHIPPING : BasicUserRole? = nil

    def jf_SHIPPING : BasicUserRole?
        @j_SHIPPING
    end

    def jf_SHIPPING=(value : BasicUserRole?) : BasicUserRole?
        @j_SHIPPING = value
    end
    @j_ADJUSTER : BasicUserRole? = nil

    def jf_ADJUSTER : BasicUserRole?
        @j_ADJUSTER
    end

    def jf_ADJUSTER=(value : BasicUserRole?) : BasicUserRole?
        @j_ADJUSTER = value
    end
    @j_WORKFLOWEDITOR : BasicUserRole? = nil

    def jf_WORKFLOWEDITOR : BasicUserRole?
        @j_WORKFLOWEDITOR
    end

    def jf_WORKFLOWEDITOR=(value : BasicUserRole?) : BasicUserRole?
        @j_WORKFLOWEDITOR = value
    end
    @j_WIZARD : BasicUserRole? = nil

    def jf_WIZARD : BasicUserRole?
        @j_WIZARD
    end

    def jf_WIZARD=(value : BasicUserRole?) : BasicUserRole?
        @j_WIZARD = value
    end
    @j_VIEWEDITOR : BasicUserRole? = nil

    def jf_VIEWEDITOR : BasicUserRole?
        @j_VIEWEDITOR
    end

    def jf_VIEWEDITOR=(value : BasicUserRole?) : BasicUserRole?
        @j_VIEWEDITOR = value
    end

    @@jst_instance : BasicUserRoleFactory? = nil

    def self.jst_instance : BasicUserRoleFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicUserRoleFactory?) : BasicUserRoleFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicUserRoleFactory.new.jinit_BasicUserRoleFactory()
    end
    

    def self.getInstance : BasicUserRoleFactory?
        return BasicUserRoleFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BasicUserRoleFactory : Nil
    @j_INACTIVITYTIMEOUT = 360000000_i64
    @j_CUSTOMERTIMEOUT = 360000000_i64
    @j_CUSTOMERMAXSESSIONTIME = 360000000_i64
    @j_MAXSESSIONTIME = 360000000_i64
    @j_INSTALLER = BasicUserRole.new.jinit_BasicUserRole("Installer", 16, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_ADMINISTRATOR = BasicUserRole.new.jinit_BasicUserRole("Administrator", 0, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_CUSTOMER = BasicUserRole.new.jinit_BasicUserRole("CustomerUser", "Customer User", 1, @j_CUSTOMERTIMEOUT, @j_CUSTOMERMAXSESSIONTIME)
    @j_SUBSCRIBERCUSTOMER = BasicUserRole.new.jinit_BasicUserRole("SubscriberUser", "Subscriber User", 2, @j_CUSTOMERTIMEOUT, @j_CUSTOMERMAXSESSIONTIME)
    @j_WHOLESALECUSTOMER = BasicUserRole.new.jinit_BasicUserRole("WholesaleUser", "Wholesale User", 3, @j_CUSTOMERTIMEOUT, @j_CUSTOMERMAXSESSIONTIME)
    @j_STOREMANAGER = BasicUserRole.new.jinit_BasicUserRole("StoreManager", "Store Manager", 4, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_PRODUCTMANAGER = BasicUserRole.new.jinit_BasicUserRole("ProductManager", "Product Manager", 5, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_CUSTOMERMANAGER = BasicUserRole.new.jinit_BasicUserRole("UserManager", "User Manager", 6, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_PAYMENTMANAGER = BasicUserRole.new.jinit_BasicUserRole("PaymentManager", "Payment Manager", 7, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_ORDERMANAGER = BasicUserRole.new.jinit_BasicUserRole("OrderManager", "Order Manager", 8, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_WEBMANAGER = BasicUserRole.new.jinit_BasicUserRole("WebManager", "Web Manager", 9, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_REVIEWER = BasicUserRole.new.jinit_BasicUserRole("Reviewer", 10, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_SHIPPING = BasicUserRole.new.jinit_BasicUserRole("Shipping", 11, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_ADJUSTER = BasicUserRole.new.jinit_BasicUserRole("Adjuster", 12, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_WORKFLOWEDITOR = BasicUserRole.new.jinit_BasicUserRole("WorkFlowEditor", "WorkFlow Editor", 13, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_WIZARD = BasicUserRole.new.jinit_BasicUserRole("WizardUser", "Wizard User", 14, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    @j_VIEWEDITOR = BasicUserRole.new.jinit_BasicUserRole("ViewEditor", "View Editor", 15, @j_MAXSESSIONTIME, @j_INACTIVITYTIMEOUT)
    end

    def jinit_BasicUserRoleFactory : self
        jfields_BasicUserRoleFactory()
        self
    end
end

