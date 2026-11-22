# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

class NullDisplayable < Canvas
    @baseGameStatistics : BaseGameStatistics? = nil

    def jf_baseGameStatistics : BaseGameStatistics?
        @baseGameStatistics
    end

    def jf_baseGameStatistics=(value : BaseGameStatistics?) : BaseGameStatistics?
        @baseGameStatistics = value
    end

    @@jst_SINGLETON : NullDisplayable? = nil

    def self.jst_SINGLETON : NullDisplayable?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NullDisplayable?) : NullDisplayable?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullDisplayable.new.jinit_NullDisplayable()
    end
    

    def self.getInstance : NullDisplayable?
        return NullDisplayable.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_NullDisplayable : Nil
    @baseGameStatistics = GameStatisticsFactory.getInstance()
    end
    

    def jinit_NullDisplayable : self
        jinit_Canvas()
        jfields_NullDisplayable()
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @baseGameStatistics.not_nil!.nextRefresh()
    end
end

