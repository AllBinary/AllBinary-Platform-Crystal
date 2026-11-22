# Generated Code Do Not Modify
# package org.allbinary.graphics.form

class ABCustomForm < CustomScreen
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    # Java field initializers run after the super constructor
    def jfields_ABCustomForm : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    end
    

    def jinit_ABCustomForm(title : String, items : Array(ABCustomItem?)?, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_CustomScreen()
        jfields_ABCustomForm()
        self
    end
    

    def getAllitems : Array(ABCustomItem?)?
        return Array(ABCustomItem?).new(0, nil)
    end
    

    def size : Int32
        return 0
    end
    

    def setSelectedIndex(index : Int) : Nil
        index = index.to_i32!
    end
    

    def getSelectedIndex : Int32
        return 0
    end
    

    def deleteAll : Nil
    end
    

    def delete(itemNum : Int) : Nil
        itemNum = itemNum.to_i32!
    end
    

    def append(item : ABCustomItem?) : Int32
        return -1
    end
    

    def insert(itemNum : Int, item : ABCustomItem?) : Nil
        itemNum = itemNum.to_i32!
    end
    

    def set(itemNum : Int, item : ABCustomItem?) : Nil
        itemNum = itemNum.to_i32!
    end
    

    def get(itemNum : Int) : ABCustomItem?
        itemNum = itemNum.to_i32!
        return ABCustomItem.getNullInstance()
    end
    

    def getWidth : Int32
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def getTitle : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
end

