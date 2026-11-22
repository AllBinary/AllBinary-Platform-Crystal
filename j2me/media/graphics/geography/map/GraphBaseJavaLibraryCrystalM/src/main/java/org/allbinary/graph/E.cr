# Generated Code Do Not Modify
# package org.allbinary.graph

class E < JObject

    @@jst_e : E? = nil

    def self.jst_e : E?
        jclinit
        @@jst_e
    end

    def self.jst_e=(value : E?) : E?
        jclinit
        @@jst_e = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_e = E.new.jinit_E()
    end

    def jinit_E : self
        self
    end
    

    def newInstance : E?
        return E.jst_e
    end
end

