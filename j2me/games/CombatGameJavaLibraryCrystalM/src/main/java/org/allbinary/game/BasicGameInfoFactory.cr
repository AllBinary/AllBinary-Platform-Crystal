# Generated Code Do Not Modify
# package org.allbinary.game

class BasicGameInfoFactory < JObject
    @currentReleaseIndex : Int32 = 0

    def jf_currentReleaseIndex : Int32
        @currentReleaseIndex
    end

    def jf_currentReleaseIndex=(value : Int32) : Int32
        @currentReleaseIndex = value
    end
    @currentDestroyIndex : Int32 = 0

    def jf_currentDestroyIndex : Int32
        @currentDestroyIndex
    end

    def jf_currentDestroyIndex=(value : Int32) : Int32
        @currentDestroyIndex = value
    end
    @total : Int32 = 0

    def jf_total : Int32
        @total
    end

    def jf_total=(value : Int32) : Int32
        @total = value
    end

    @@jst_SINGLETON : BasicGameInfoFactory? = nil

    def self.jst_SINGLETON : BasicGameInfoFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : BasicGameInfoFactory?) : BasicGameInfoFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = BasicGameInfoFactory.new.jinit_BasicGameInfoFactory()
    end
    

    def self.getInstance : BasicGameInfoFactory?
        return BasicGameInfoFactory.jst_SINGLETON
    end
    

    def jinit_BasicGameInfoFactory : self
        self
    end
    

    def init(total : Int) : Nil
        total = total.to_i32!
        @currentReleaseIndex = 0
        @currentDestroyIndex = 0
        @total = total
    end
    

    def isPeaked : Bool
        if @currentDestroyIndex >= @total
            return true
        else
            return false
        end
        return false
    end
    

    def howManyLeft : Int32
        return @total &- @currentDestroyIndex
    end
end

