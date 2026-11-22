# Generated Code Do Not Modify
# package org.allbinary.game.displayable.canvas

class NullDisplayable < Canvas

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
    

    def jinit_NullDisplayable : self
        jinit_Canvas()
        self
    end
    

    def paint(graphics : Graphics?) : Nil
    end
end

