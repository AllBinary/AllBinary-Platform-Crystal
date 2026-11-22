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
# package org.allbinary.midlet

class AllBinaryMidlet < MIDlet
    include CommandListener
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
    @j_SET_DISPLAY : String = ""

    def jf_SET_DISPLAY : String
        @j_SET_DISPLAY
    end

    def jf_SET_DISPLAY=(value : String) : String
        @j_SET_DISPLAY = value
    end
    @j_SETTING_ : String = ""

    def jf_SETTING_ : String
        @j_SETTING_
    end

    def jf_SETTING_=(value : String) : String
        @j_SETTING_ = value
    end
    @_DISPLAY_ : String = ""

    def jf__DISPLAY_ : String
        @_DISPLAY_
    end

    def jf__DISPLAY_=(value : String) : String
        @_DISPLAY_ = value
    end
    @j_SETTING_NO_TITLE : String = ""

    def jf_SETTING_NO_TITLE : String
        @j_SETTING_NO_TITLE
    end

    def jf_SETTING_NO_TITLE=(value : String) : String
        @j_SETTING_NO_TITLE = value
    end
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end
    @midletDestroyed : Bool = false

    def jf_midletDestroyed : Bool
        @midletDestroyed
    end

    def jf_midletDestroyed=(value : Bool) : Bool
        @midletDestroyed = value
    end

    @@jst_NULL_ALLBINARY_MIDLET : JAny = nil

    def self.jst_NULL_ALLBINARY_MIDLET : JAny
        jclinit
        @@jst_NULL_ALLBINARY_MIDLET
    end

    def self.jst_NULL_ALLBINARY_MIDLET=(value : JAny) : JAny
        jclinit
        @@jst_NULL_ALLBINARY_MIDLET = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ALLBINARY_MIDLET = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullInstance : AllBinaryMidlet?
        if AllBinaryMidlet.jst_NULL_ALLBINARY_MIDLET == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            AllBinaryMidlet.jst_NULL_ALLBINARY_MIDLET = AllBinaryMidlet.new.jinit_AllBinaryMidlet()
        end
        return JR.cast(AllBinaryMidlet.jst_NULL_ALLBINARY_MIDLET, AllBinaryMidlet)
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryMidlet : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @j_SET_DISPLAY = "setDisplay"
    @j_SETTING_ = "Setting: "
    @_DISPLAY_ = " Display: "
    @j_SETTING_NO_TITLE = "Setting: No Title, Display: "
    @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    
    end
    

    def jinit_AllBinaryMidlet : self
        jinit_MIDlet()
        jfields_AllBinaryMidlet()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_CONSTRUCTOR, self, "AllBinaryMidlet::AllBinaryMidlet")
        self
    end
    

    def setDisplay(newDisplay : Displayable?) : Nil
        title : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        if newDisplay != NullCanvas.jst_NULL_CANVAS
            title = newDisplay.not_nil!.getTitle()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_SETTING_).not_nil!.append(title).not_nil!.append(@_DISPLAY_).not_nil!.append(StringUtil.getInstance().not_nil!.toString(newDisplay)).not_nil!.toString(), self, @j_SET_DISPLAY)
        end
        display : Display? = self.getDisplay()
        display.not_nil!.setCurrent(newDisplay)
    end
    

    def getDisplay : Display?
        return Display.getDisplay(self)
    end
    

    def getCurrentDisplayable : Displayable?
        return Display.getDisplay(self).not_nil!.getCurrent()
    end
    

    def setDestroyed(destroyed : Bool) : Nil
        @midletDestroyed = destroyed
    end
    

    def isDestroyed : Bool
        return @midletDestroyed
    end
    

    def startApp : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def pauseApp : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def destroyAppInRunnable(unconditional : Bool, isProgress : Bool) : Nil
    end
    

    def destroyApp(unconditional : Bool) : Nil
        j_METHOD_NAME : String = "AllBinaryMidlet::destroyApp"
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, j_METHOD_NAME)
            PreLogUtil.put(Memory.getInfo(), self, j_METHOD_NAME)
            self.setDestroyed(true)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, j_METHOD_NAME, e)
            else
                raise jex1
            end
        end
    end
    

    def setStartStateHashtable(hashtable : ABHashtable?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(StringUtil.getInstance().not_nil!.toString(hashtable)).not_nil!.toString(), self, "setStartStateHashtable")
        @hashtable = hashtable
    end
    

    def getStartStateHashtable : ABHashtable?
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(StringUtil.getInstance().not_nil!.toString(@hashtable)).not_nil!.toString(), self, "getStartStateHashtable")
        return @hashtable
    end
    

    def getCurrentStateHashtable : ABHashtable?
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, "getStateHashtable")
        return StdUtil.getInstance().not_nil!.jf_NULL_TABLE
    end
    

    def commandAction(command : Command?, displayable : Displayable?) : Nil
    end
end

