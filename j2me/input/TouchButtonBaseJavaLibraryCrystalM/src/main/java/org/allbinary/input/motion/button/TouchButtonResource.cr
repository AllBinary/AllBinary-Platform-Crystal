# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# package org.allbinary.input.motion.button

class TouchButtonResource < JObject
    @j_RESOURCE : String = ""

    def jf_RESOURCE : String
        @j_RESOURCE
    end

    def jf_RESOURCE=(value : String) : String
        @j_RESOURCE = value
    end
    @j_HINT : String = ""

    def jf_HINT : String
        @j_HINT
    end

    def jf_HINT=(value : String) : String
        @j_HINT = value
    end
    

    def jinit_TouchButtonResource(resource : String, hint : String) : self
        @j_RESOURCE = resource
        @j_HINT = hint
        self
    end
end

