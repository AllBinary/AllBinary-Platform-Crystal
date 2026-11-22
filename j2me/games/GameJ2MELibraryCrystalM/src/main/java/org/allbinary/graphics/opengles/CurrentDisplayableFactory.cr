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
# package org.allbinary.graphics.opengles

class CurrentDisplayableFactory < JObject
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @canvasStrings : CanvasStrings? = nil

    def jf_canvasStrings : CanvasStrings?
        @canvasStrings
    end

    def jf_canvasStrings=(value : CanvasStrings?) : CanvasStrings?
        @canvasStrings = value
    end
    @stringUtil : StringUtil? = nil

    def jf_stringUtil : StringUtil?
        @stringUtil
    end

    def jf_stringUtil=(value : StringUtil?) : StringUtil?
        @stringUtil = value
    end
    @j_SET_DISPLAYABLE : String = ""

    def jf_SET_DISPLAYABLE : String
        @j_SET_DISPLAYABLE
    end

    def jf_SET_DISPLAYABLE=(value : String) : String
        @j_SET_DISPLAYABLE = value
    end
    @j_SET_RUNNABLE : String = ""

    def jf_SET_RUNNABLE : String
        @j_SET_RUNNABLE
    end

    def jf_SET_RUNNABLE=(value : String) : String
        @j_SET_RUNNABLE = value
    end
    @j_CLEAR_RUNNABLE : String = ""

    def jf_CLEAR_RUNNABLE : String
        @j_CLEAR_RUNNABLE
    end

    def jf_CLEAR_RUNNABLE=(value : String) : String
        @j_CLEAR_RUNNABLE = value
    end
    @j_SET_USED_RUNNABLE : String = ""

    def jf_SET_USED_RUNNABLE : String
        @j_SET_USED_RUNNABLE
    end

    def jf_SET_USED_RUNNABLE=(value : String) : String
        @j_SET_USED_RUNNABLE = value
    end
    @j_RUNNABLE : String = ""

    def jf_RUNNABLE : String
        @j_RUNNABLE
    end

    def jf_RUNNABLE=(value : String) : String
        @j_RUNNABLE = value
    end
    @j_RUNNABLE_WAS_ALREADY_IN_USE : String = ""

    def jf_RUNNABLE_WAS_ALREADY_IN_USE : String
        @j_RUNNABLE_WAS_ALREADY_IN_USE
    end

    def jf_RUNNABLE_WAS_ALREADY_IN_USE=(value : String) : String
        @j_RUNNABLE_WAS_ALREADY_IN_USE = value
    end
    @j_DEFAULT_CHILD_NAME_LIST : BasicArrayList? = nil

    def jf_DEFAULT_CHILD_NAME_LIST : BasicArrayList?
        @j_DEFAULT_CHILD_NAME_LIST
    end

    def jf_DEFAULT_CHILD_NAME_LIST=(value : BasicArrayList?) : BasicArrayList?
        @j_DEFAULT_CHILD_NAME_LIST = value
    end
    @displayable : Displayable? = nil

    def jf_displayable : Displayable?
        @displayable
    end

    def jf_displayable=(value : Displayable?) : Displayable?
        @displayable = value
    end
    @openGlReadydisplayable : Displayable? = nil

    def jf_openGlReadydisplayable : Displayable?
        @openGlReadydisplayable
    end

    def jf_openGlReadydisplayable=(value : Displayable?) : Displayable?
        @openGlReadydisplayable = value
    end
    @runnable : GameRunnable? = nil

    def jf_runnable : GameRunnable?
        @runnable
    end

    def jf_runnable=(value : GameRunnable?) : GameRunnable?
        @runnable = value
    end
    @usedRunnable : GameRunnable? = nil

    def jf_usedRunnable : GameRunnable?
        @usedRunnable
    end

    def jf_usedRunnable=(value : GameRunnable?) : GameRunnable?
        @usedRunnable = value
    end

    @@jst_instance : CurrentDisplayableFactory? = nil

    def self.jst_instance : CurrentDisplayableFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CurrentDisplayableFactory?) : CurrentDisplayableFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CurrentDisplayableFactory.new.jinit_CurrentDisplayableFactory()
    end
    

    def self.getInstance : CurrentDisplayableFactory?
        return CurrentDisplayableFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CurrentDisplayableFactory : Nil
    @commonStrings = CommonStrings.getInstance()
    @canvasStrings = CanvasStrings.getInstance()
    @stringUtil = StringUtil.getInstance()
    @j_SET_DISPLAYABLE = "setDisplayable"
    @j_SET_RUNNABLE = "setRunnable"
    @j_CLEAR_RUNNABLE = "clearRunnable"
    @j_SET_USED_RUNNABLE = "setUsedRunnable"
    @j_RUNNABLE = "Runnable: "
    @j_RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: "
    @j_DEFAULT_CHILD_NAME_LIST = BasicArrayListD.new.jinit_BasicArrayListD()
    @displayable = NullDisplayable.getInstance()
    @openGlReadydisplayable = NullDisplayable.getInstance()
    @runnable = NullWaitGameRunnable.getInstance()
    @usedRunnable = NullWaitGameRunnable.getInstance()
    end
    

    def jinit_CurrentDisplayableFactory : self
        jfields_CurrentDisplayableFactory()
        @j_DEFAULT_CHILD_NAME_LIST.not_nil!.add(@canvasStrings.not_nil!.jf_ABOUT)
        @j_DEFAULT_CHILD_NAME_LIST.not_nil!.add(@canvasStrings.not_nil!.jf_OPTIONS)
        @j_DEFAULT_CHILD_NAME_LIST.not_nil!.add(GameInputMappingCanvas.jst_NAME)
        @j_DEFAULT_CHILD_NAME_LIST.not_nil!.add(GameInputMappingInstructionsCanvas.jst_NAME)
        @j_DEFAULT_CHILD_NAME_LIST.not_nil!.add(HighScoresCanvas.jst_NAME)
        self
    end
    

    def setMyCanvas(displayable : MyCanvas?) : Nil
        if (@displayable).is_a?(MyCanvas)
            if displayable.not_nil!.hasChild(JR.cast(@displayable, MyCanvas))
                PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append("Child Displayable is already set for: ").not_nil!.append(@stringUtil.not_nil!.toString(displayable)).not_nil!.toString(), self, @j_SET_DISPLAYABLE)
                return
            end
        end
        self.setDisplayable(displayable)
    end
    

    def setDisplayable(displayable : Displayable?) : Nil
        @displayable = displayable
        self.setOpenGlReadydisplayable(displayable)
    end
    

    def setOpenGlReadydisplayable(openGlReadydisplayable : Displayable?) : Nil
        @openGlReadydisplayable = openGlReadydisplayable
        self.update()
    end
    

    def getOpenGlReadydisplayable : Displayable?
        return @openGlReadydisplayable
    end
    

    def setRunnable(runnable : GameRunnable?) : Nil
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_RUNNABLE).not_nil!.append(@stringUtil.not_nil!.toString(runnable)).not_nil!.toString(), self, @j_SET_RUNNABLE)
        @runnable = runnable
        if @usedRunnable != @runnable
            self.update()
        else
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_RUNNABLE_WAS_ALREADY_IN_USE).not_nil!.append(@stringUtil.not_nil!.toString(runnable)).not_nil!.toString(), self, @j_SET_RUNNABLE)
        end
    end
    

    def clearRunnable : Nil
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_RUNNABLE).not_nil!.append(@stringUtil.not_nil!.toString(NullRunnable.getInstance())).not_nil!.toString(), self, @j_CLEAR_RUNNABLE)
        self.setUsedRunnable(NullWaitGameRunnable.getInstance())
    end
    

    def update : Nil
        begin
            commonSeps : CommonSeps? = CommonSeps.getInstance()
            features : Features? = Features.getInstance()
            stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringMaker.not_nil!.append(@stringUtil.not_nil!.toString(@openGlReadydisplayable))
            if SWTUtil.jst_isSWT && !features.not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL)
                PreLogUtil.put(stringMaker.not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(SWTUtil.jst_SWT).not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(@j_RUNNABLE).not_nil!.append(@stringUtil.not_nil!.toString(NullRunnable.getInstance())).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                self.setUsedRunnable(NullWaitGameRunnable.getInstance())
            elsif J2MEUtil.isHTML()
                PreLogUtil.put(stringMaker.not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(GraphicsStrings.getInstance().not_nil!.jf_HTML).not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(@j_RUNNABLE).not_nil!.append(@stringUtil.not_nil!.toString(@runnable)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                self.setUsedRunnable(@runnable)
            elsif (@openGlReadydisplayable).is_a?(DemoCanvas) || (@openGlReadydisplayable).is_a?(AllBinaryGameCanvas) || features.not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL)
                PreLogUtil.put(stringMaker.not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL.not_nil!.toString()).not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(@j_RUNNABLE).not_nil!.append(@stringUtil.not_nil!.toString(@runnable)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                self.setUsedRunnable(@runnable)
            else
                PreLogUtil.put(stringMaker.not_nil!.append(@j_RUNNABLE).not_nil!.append(@stringUtil.not_nil!.toString(NullRunnable.getInstance())).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                self.setUsedRunnable(NullWaitGameRunnable.getInstance())
            end
        end
    end
    

    def getDisplayable : Displayable?
        return @displayable
    end
    

    def getUsedRunnable : GameRunnable?
        return @usedRunnable
    end
    

    def setUsedRunnable(usedRunnable : GameRunnable?) : Nil
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_RUNNABLE).not_nil!.append(@stringUtil.not_nil!.toString(@runnable)).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COLON_SEP).not_nil!.append(@stringUtil.not_nil!.toString(usedRunnable)).not_nil!.toString(), self, @j_SET_USED_RUNNABLE)
        @usedRunnable = usedRunnable
    end
end

