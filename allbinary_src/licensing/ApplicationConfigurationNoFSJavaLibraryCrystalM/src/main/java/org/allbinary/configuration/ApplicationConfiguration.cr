# Generated Code Do Not Modify
# package org.allbinary.configuration

class ApplicationConfiguration < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @fullscreen : Bool = false

    def jf_fullscreen : Bool
        @fullscreen
    end

    def jf_fullscreen=(value : Bool) : Bool
        @fullscreen = value
    end
    @showTitleBar : Bool = false

    def jf_showTitleBar : Bool
        @showTitleBar
    end

    def jf_showTitleBar=(value : Bool) : Bool
        @showTitleBar = value
    end
    @progressBarView : Bool = false

    def jf_progressBarView : Bool
        @progressBarView
    end

    def jf_progressBarView=(value : Bool) : Bool
        @progressBarView = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : ApplicationConfiguration?
        if ApplicationConfiguration.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            ApplicationConfiguration.jst_instance = ApplicationConfiguration.new.jinit_ApplicationConfiguration()
        end
        return JR.cast(ApplicationConfiguration.jst_instance, ApplicationConfiguration)
    end

    # Java field initializers run after the super constructor
    def jfields_ApplicationConfiguration : Nil
    @logUtil = LogUtil.getInstance()
    @fullscreen = true
    @showTitleBar = false
    @progressBarView = false
    end
    

    def jinit_ApplicationConfiguration : self
        jfields_ApplicationConfiguration()
        begin
            self.read()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
        self
    end
    

    def read : Nil
        self.setFullscreen(true)
        self.setProgressBarView(false)
        self.setShowTitleBar(false)
        @logUtil.not_nil!.putF("Read Configuration: " + self.toString(), self, "read")
    end
    

    def write : Nil
    end
    

    def update(gameFeature : Feature?) : Nil
        if gameFeature == MainFeatureFactory.getInstance().not_nil!.jf_FULL_SCREEN
            features : Features? = Features.getInstance()
            if features.not_nil!.isFeature(gameFeature)
                if !self.isFullscreen()
                    self.setFullscreen(true)
                    self.write()
                end
            else
                if self.isFullscreen()
                    self.setFullscreen(false)
                    self.write()
                end
            end
        end
    end
    

    def setFullscreen(fullscreen : Bool) : Nil
        @fullscreen = fullscreen
    end
    

    def isFullscreen : Bool
        return @fullscreen
    end
    

    def setShowTitleBar(showTitleBar : Bool) : Nil
        @showTitleBar = showTitleBar
    end
    

    def isShowTitleBar : Bool
        return @showTitleBar
    end
    

    def setProgressBarView(progressBarView : Bool) : Nil
        @progressBarView = progressBarView
    end
    

    def isProgressBarView : Bool
        return @progressBarView
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("isFullscreen: ")
        stringBuffer.not_nil!.appendboolean(self.isFullscreen())
        stringBuffer.not_nil!.append(" isProgressBarView: ")
        stringBuffer.not_nil!.appendboolean(self.isProgressBarView())
        stringBuffer.not_nil!.append(" isShowTitleBar: ")
        stringBuffer.not_nil!.appendboolean(self.isShowTitleBar())
        return stringBuffer.not_nil!.toString()
    end
end

