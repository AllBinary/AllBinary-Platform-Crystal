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
    @j_FILE : String = ""

    def jf_FILE : String
        @j_FILE
    end

    def jf_FILE=(value : String) : String
        @j_FILE = value
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
    @j_FILE = "ReloadConfiguration.dat"
    end
    

    def jinit_ApplicationConfiguration : self
        jfields_ApplicationConfiguration()
        begin
            if FileFactory.getInstance().not_nil!.isFile(@j_FILE)
                self.read()
            else
                self.write()
            end
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
        fileInputStreamFactory : FileStreamFactory? = FileStreamFactory.getInstance()
        fileInputStream : JInputStream? = fileInputStreamFactory.not_nil!.getFileInputStreamInstance(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, @j_FILE)
        dataInputStream : AbDataInputStream? = AbDataInputStream.new.jinit_AbDataInputStream(fileInputStream)
        fullScreen : Int32 = dataInputStream.not_nil!.readInt()
        if fullScreen == 0
            self.setFullscreen(false)
        elsif fullScreen == 1
            self.setFullscreen(true)
        else
            raise (JException.new.jinit_JException("Invalid FullScreen ActivityConfiguration")).not_nil!
        end
        progressBarView : Int32 = dataInputStream.not_nil!.readInt()
        if progressBarView == 0
            self.setProgressBarView(false)
        elsif progressBarView == 1
            self.setProgressBarView(true)
        else
            raise (JException.new.jinit_JException("Invalid ProgressBarView ActivityConfiguration")).not_nil!
        end
        showTitleBar : Int32 = dataInputStream.not_nil!.readInt()
        if showTitleBar == 0
            self.setShowTitleBar(false)
        elsif showTitleBar == 1
            self.setShowTitleBar(true)
        else
            raise (JException.new.jinit_JException("Invalid ShowTitleBar ActivityConfiguration")).not_nil!
        end
        @logUtil.not_nil!.putF("Read Configuration: " + self.toString(), self, "read")
    end
    

    def write : Nil
        closeable : JCloseable? = NullCloseable.jst_NULL_CLOSEABLE
        begin
            @logUtil.not_nil!.putF("Write Configuration: " + self.toString(), self, "write")
            fileInputStreamFactory : FileStreamFactory? = FileStreamFactory.getInstance()
            fileOutputStream : JOutputStream? = fileInputStreamFactory.not_nil!.getFileOutputStreamInstance(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, @j_FILE)
            dataOutputStream : AbDataOutputStream? = AbDataOutputStream.new.jinit_AbDataOutputStream(fileOutputStream)
            closeable = dataOutputStream
            if self.isFullscreen()
                dataOutputStream.not_nil!.writeInt(1)
            else
                dataOutputStream.not_nil!.writeInt(0)
            end
            if self.isProgressBarView()
                dataOutputStream.not_nil!.writeInt(1)
            else
                dataOutputStream.not_nil!.writeInt(0)
            end
            if self.isShowTitleBar()
                dataOutputStream.not_nil!.writeInt(1)
            else
                dataOutputStream.not_nil!.writeInt(0)
            end
            dataOutputStream.not_nil!.flush()
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            raise (e).not_nil!
            else
                raise jex2
            end
        ensure
            StreamUtil.getInstance().not_nil!.close(closeable)
        end
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

