module ddgtk4.gtk.gtkenums;

alias GtkAlign = int;
enum : GtkAlign
{
    GTK_ALIGN_FILL,
    GTK_ALIGN_START,
    GTK_ALIGN_END,
    GTK_ALIGN_CENTER,
    GTK_ALIGN_BASELINE_FILL,
    GTK_ALIGN_BASELINE = GTK_ALIGN_CENTER + 1,
    GTK_ALIGN_BASELINE_CENTER,
}

alias GtkArrowType = int;
enum : GtkArrowType
{
    GTK_ARROW_UP,
    GTK_ARROW_DOWN,
    GTK_ARROW_LEFT,
    GTK_ARROW_RIGHT,
    GTK_ARROW_NONE
}

alias GtkBaselinePosition = int;
enum : GtkBaselinePosition
{
    GTK_BASELINE_POSITION_TOP,
    GTK_BASELINE_POSITION_CENTER,
    GTK_BASELINE_POSITION_BOTTOM
}

alias GtkContentFit = int;
enum : GtkContentFit
{
    GTK_CONTENT_FIT_FILL,
    GTK_CONTENT_FIT_CONTAIN,
    GTK_CONTENT_FIT_COVER,
    GTK_CONTENT_FIT_SCALE_DOWN,
}

alias GtkDeleteType = int;
enum : GtkDeleteType
{
    GTK_DELETE_CHARS,
    GTK_DELETE_WORD_ENDS,
    GTK_DELETE_WORDS,
    GTK_DELETE_DISPLAY_LINES,
    GTK_DELETE_DISPLAY_LINE_ENDS,
    GTK_DELETE_PARAGRAPH_ENDS,
    GTK_DELETE_PARAGRAPHS,
    GTK_DELETE_WHITESPACE
}

alias GtkDirectionType = int;
enum : GtkDirectionType
{
    GTK_DIR_TAB_FORWARD,
    GTK_DIR_TAB_BACKWARD,
    GTK_DIR_UP,
    GTK_DIR_DOWN,
    GTK_DIR_LEFT,
    GTK_DIR_RIGHT
}

alias GtkIconSize = int;
enum : GtkIconSize
{
    GTK_ICON_SIZE_INHERIT,
    GTK_ICON_SIZE_NORMAL,
    GTK_ICON_SIZE_LARGE
}

alias GtkSensitivityType = int;
enum : GtkSensitivityType
{
    GTK_SENSITIVITY_AUTO,
    GTK_SENSITIVITY_ON,
    GTK_SENSITIVITY_OFF
}

alias GtkTextDirection = int;
enum : GtkTextDirection
{
    GTK_TEXT_DIR_NONE,
    GTK_TEXT_DIR_LTR,
    GTK_TEXT_DIR_RTL
}

alias GtkJustification = int;
enum : GtkJustification
{
    GTK_JUSTIFY_LEFT,
    GTK_JUSTIFY_RIGHT,
    GTK_JUSTIFY_CENTER,
    GTK_JUSTIFY_FILL
}

alias GtkListTabBehavior = int;
enum : GtkListTabBehavior
{
    GTK_LIST_TAB_ALL,
    GTK_LIST_TAB_ITEM,
    GTK_LIST_TAB_CELL
}

alias GtkListScrollFlags = int;
enum : GtkListScrollFlags
{
    GTK_LIST_SCROLL_NONE      = 0,
    GTK_LIST_SCROLL_FOCUS     = 1 << 0,
    GTK_LIST_SCROLL_SELECT    = 1 << 1
}

alias GtkMessageType = int;
enum : GtkMessageType
{
    GTK_MESSAGE_INFO,
    GTK_MESSAGE_WARNING,
    GTK_MESSAGE_QUESTION,
    GTK_MESSAGE_ERROR,
    GTK_MESSAGE_OTHER
}

alias GtkMovementStep = int;
enum : GtkMovementStep
{
    GTK_MOVEMENT_LOGICAL_POSITIONS,
    GTK_MOVEMENT_VISUAL_POSITIONS,
    GTK_MOVEMENT_WORDS,
    GTK_MOVEMENT_DISPLAY_LINES,
    GTK_MOVEMENT_DISPLAY_LINE_ENDS,
    GTK_MOVEMENT_PARAGRAPHS,
    GTK_MOVEMENT_PARAGRAPH_ENDS,
    GTK_MOVEMENT_PAGES,
    GTK_MOVEMENT_BUFFER_ENDS,
    GTK_MOVEMENT_HORIZONTAL_PAGES
}

alias GtkNaturalWrapMode = int;
enum : GtkNaturalWrapMode
{
    GTK_NATURAL_WRAP_INHERIT,
    GTK_NATURAL_WRAP_NONE,
    GTK_NATURAL_WRAP_WORD
}

alias GtkScrollStep = int;
enum : GtkScrollStep
{
    GTK_SCROLL_STEPS,
    GTK_SCROLL_PAGES,
    GTK_SCROLL_ENDS,
    GTK_SCROLL_HORIZONTAL_STEPS,
    GTK_SCROLL_HORIZONTAL_PAGES,
    GTK_SCROLL_HORIZONTAL_ENDS
}

alias GtkOrientation = int;
enum : GtkOrientation
{
    GTK_ORIENTATION_HORIZONTAL,
    GTK_ORIENTATION_VERTICAL,
}

alias GtkOverflow = int;
enum : GtkOverflow
{
    GTK_OVERFLOW_VISIBLE,
    GTK_OVERFLOW_HIDDEN
}

alias GtkPackType = int;
enum : GtkPackType
{
    GTK_PACK_START,
    GTK_PACK_END
}

alias GtkPositionType = int;
enum : GtkPositionType
{
    GTK_POS_LEFT,
    GTK_POS_RIGHT,
    GTK_POS_TOP,
    GTK_POS_BOTTOM
}

alias GtkScrollType = int;
enum : GtkScrollType
{
    GTK_SCROLL_NONE,
    GTK_SCROLL_JUMP,
    GTK_SCROLL_STEP_BACKWARD,
    GTK_SCROLL_STEP_FORWARD,
    GTK_SCROLL_PAGE_BACKWARD,
    GTK_SCROLL_PAGE_FORWARD,
    GTK_SCROLL_STEP_UP,
    GTK_SCROLL_STEP_DOWN,
    GTK_SCROLL_PAGE_UP,
    GTK_SCROLL_PAGE_DOWN,
    GTK_SCROLL_STEP_LEFT,
    GTK_SCROLL_STEP_RIGHT,
    GTK_SCROLL_PAGE_LEFT,
    GTK_SCROLL_PAGE_RIGHT,
    GTK_SCROLL_START,
    GTK_SCROLL_END
}

alias GtkSelectionMode = int;
enum : GtkSelectionMode
{
    GTK_SELECTION_NONE,
    GTK_SELECTION_SINGLE,
    GTK_SELECTION_BROWSE,
    GTK_SELECTION_MULTIPLE
}

alias GtkWrapMode = int;
enum : GtkWrapMode
{
    GTK_WRAP_NONE,
    GTK_WRAP_CHAR,
    GTK_WRAP_WORD,
    GTK_WRAP_WORD_CHAR
}

alias GtkSortType = int;
enum
{
    GTK_SORT_ASCENDING,
    GTK_SORT_DESCENDING
}

alias GtkPrintPages = int;
enum : GtkPrintPages
{
    GTK_PRINT_PAGES_ALL,
    GTK_PRINT_PAGES_CURRENT,
    GTK_PRINT_PAGES_RANGES,
    GTK_PRINT_PAGES_SELECTION
}

alias GtkPageSet = int;
enum : GtkPageSet
{
    GTK_PAGE_SET_ALL,
    GTK_PAGE_SET_EVEN,
    GTK_PAGE_SET_ODD
}

alias GtkNumberUpLayout = int;
enum
{
    GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM, /*< nick=lrtb >*/
    GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP, /*< nick=lrbt >*/
    GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM, /*< nick=rltb >*/
    GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP, /*< nick=rlbt >*/
    GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT, /*< nick=tblr >*/
    GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT, /*< nick=tbrl >*/
    GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT, /*< nick=btlr >*/
    GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT  /*< nick=btrl >*/
}

alias GtkOrdering = int;
enum : GtkOrdering
{
    GTK_ORDERING_SMALLER = -1,
    GTK_ORDERING_EQUAL = 0,
    GTK_ORDERING_LARGER = 1
}

version(__GI_SCANNER__)
{
    // TODO: gtk_ordering_from_cmpfunc
    GtkOrdering     gtk_ordering_from_cmpfunc       (int cmpfunc_result);
}
else
{
    pragma(inline, true)
    GtkOrdering
    gtk_ordering_from_cmpfunc (int cmpfunc_result)
    {
        return cast(GtkOrdering) ((cmpfunc_result > 0) - (cmpfunc_result < 0));
    }
}

alias GtkPageOrientation = int;
enum : GtkPageOrientation
{
    GTK_PAGE_ORIENTATION_PORTRAIT,
    GTK_PAGE_ORIENTATION_LANDSCAPE,
    GTK_PAGE_ORIENTATION_REVERSE_PORTRAIT,
    GTK_PAGE_ORIENTATION_REVERSE_LANDSCAPE
}

alias GtkPrintQuality = int;
enum
{
    GTK_PRINT_QUALITY_LOW,
    GTK_PRINT_QUALITY_NORMAL,
    GTK_PRINT_QUALITY_HIGH,
    GTK_PRINT_QUALITY_DRAFT
}

alias GtkPrintDuplex = int;
enum : GtkPrintDuplex
{
    GTK_PRINT_DUPLEX_SIMPLEX,
    GTK_PRINT_DUPLEX_HORIZONTAL,
    GTK_PRINT_DUPLEX_VERTICAL
}

alias GtkUnit = int;
enum
{
  GTK_UNIT_NONE,
  GTK_UNIT_POINTS,
  GTK_UNIT_INCH,
  GTK_UNIT_MM
}
alias GTK_UNIT_PIXEL = GTK_UNIT_NONE;

alias GtkTreeViewGridLines = int;
enum : GtkTreeViewGridLines
{
    GTK_TREE_VIEW_GRID_LINES_NONE,
    GTK_TREE_VIEW_GRID_LINES_HORIZONTAL,
    GTK_TREE_VIEW_GRID_LINES_VERTICAL,
    GTK_TREE_VIEW_GRID_LINES_BOTH
}

alias GtkSizeGroupMode = int;
enum : GtkSizeGroupMode
{
    GTK_SIZE_GROUP_NONE,
    GTK_SIZE_GROUP_HORIZONTAL,
    GTK_SIZE_GROUP_VERTICAL,
    GTK_SIZE_GROUP_BOTH
}

alias GtkSizeRequestMode = int;
enum : GtkSizeRequestMode
{
    GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH = 0,
    GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT,
    GTK_SIZE_REQUEST_CONSTANT_SIZE
}

alias GtkScrollablePolicy = int;
enum : GtkScrollablePolicy
{
    GTK_SCROLL_MINIMUM = 0,
    GTK_SCROLL_NATURAL
}

alias GtkStateFlags = int;
enum : GtkStateFlags
{
    GTK_STATE_FLAG_NORMAL        = 0,
    GTK_STATE_FLAG_ACTIVE        = 1 << 0,
    GTK_STATE_FLAG_PRELIGHT      = 1 << 1,
    GTK_STATE_FLAG_SELECTED      = 1 << 2,
    GTK_STATE_FLAG_INSENSITIVE   = 1 << 3,
    GTK_STATE_FLAG_INCONSISTENT  = 1 << 4,
    GTK_STATE_FLAG_FOCUSED       = 1 << 5,
    GTK_STATE_FLAG_BACKDROP      = 1 << 6,
    GTK_STATE_FLAG_DIR_LTR       = 1 << 7,
    GTK_STATE_FLAG_DIR_RTL       = 1 << 8,
    GTK_STATE_FLAG_LINK          = 1 << 9,
    GTK_STATE_FLAG_VISITED       = 1 << 10,
    GTK_STATE_FLAG_CHECKED       = 1 << 11,
    GTK_STATE_FLAG_DROP_ACTIVE   = 1 << 12,
    GTK_STATE_FLAG_FOCUS_VISIBLE = 1 << 13,
    GTK_STATE_FLAG_FOCUS_WITHIN  = 1 << 14
}

alias GtkBorderStyle = int;
enum : GtkBorderStyle
{
    GTK_BORDER_STYLE_NONE,
    GTK_BORDER_STYLE_HIDDEN,
    GTK_BORDER_STYLE_SOLID,
    GTK_BORDER_STYLE_INSET,
    GTK_BORDER_STYLE_OUTSET,
    GTK_BORDER_STYLE_DOTTED,
    GTK_BORDER_STYLE_DASHED,
    GTK_BORDER_STYLE_DOUBLE,
    GTK_BORDER_STYLE_GROOVE,
    GTK_BORDER_STYLE_RIDGE
}

alias GtkLevelBarMode = int;
enum : GtkLevelBarMode
{
    GTK_LEVEL_BAR_MODE_CONTINUOUS,
    GTK_LEVEL_BAR_MODE_DISCRETE
}

alias GtkInputPurpose = int;
enum : GtkInputPurpose
{
    GTK_INPUT_PURPOSE_FREE_FORM,
    GTK_INPUT_PURPOSE_ALPHA,
    GTK_INPUT_PURPOSE_DIGITS,
    GTK_INPUT_PURPOSE_NUMBER,
    GTK_INPUT_PURPOSE_PHONE,
    GTK_INPUT_PURPOSE_URL,
    GTK_INPUT_PURPOSE_EMAIL,
    GTK_INPUT_PURPOSE_NAME,
    GTK_INPUT_PURPOSE_PASSWORD,
    GTK_INPUT_PURPOSE_PIN,
    GTK_INPUT_PURPOSE_TERMINAL,
}

alias GtkInputHints = int;
enum : GtkInputHints
{
    GTK_INPUT_HINT_NONE                = 0,
    GTK_INPUT_HINT_SPELLCHECK          = 1 << 0,
    GTK_INPUT_HINT_NO_SPELLCHECK       = 1 << 1,
    GTK_INPUT_HINT_WORD_COMPLETION     = 1 << 2,
    GTK_INPUT_HINT_LOWERCASE           = 1 << 3,
    GTK_INPUT_HINT_UPPERCASE_CHARS     = 1 << 4,
    GTK_INPUT_HINT_UPPERCASE_WORDS     = 1 << 5,
    GTK_INPUT_HINT_UPPERCASE_SENTENCES = 1 << 6,
    GTK_INPUT_HINT_INHIBIT_OSK         = 1 << 7,
    GTK_INPUT_HINT_VERTICAL_WRITING    = 1 << 8,
    GTK_INPUT_HINT_EMOJI               = 1 << 9,
    GTK_INPUT_HINT_NO_EMOJI            = 1 << 10,
    GTK_INPUT_HINT_PRIVATE             = 1 << 11,
}

alias GtkPropagationPhase = int;
enum
{
    GTK_PHASE_NONE,
    GTK_PHASE_CAPTURE,
    GTK_PHASE_BUBBLE,
    GTK_PHASE_TARGET
}

alias GtkPropagationLimit = int;
enum : GtkPropagationLimit
{
    GTK_LIMIT_NONE,
    GTK_LIMIT_SAME_NATIVE
}

alias GtkEventSequenceState = int;
enum
{
    GTK_EVENT_SEQUENCE_NONE,
    GTK_EVENT_SEQUENCE_CLAIMED,
    GTK_EVENT_SEQUENCE_DENIED
}

alias GtkPanDirection = int;
enum : GtkPanDirection
{
    GTK_PAN_DIRECTION_LEFT,
    GTK_PAN_DIRECTION_RIGHT,
    GTK_PAN_DIRECTION_UP,
    GTK_PAN_DIRECTION_DOWN
}

alias GtkShortcutScope = int;
enum : GtkShortcutScope
{
    GTK_SHORTCUT_SCOPE_LOCAL,
    GTK_SHORTCUT_SCOPE_MANAGED,
    GTK_SHORTCUT_SCOPE_GLOBAL
}

alias GtkPickFlags = int;
enum : GtkPickFlags
{
    GTK_PICK_DEFAULT        = 0,
    GTK_PICK_INSENSITIVE    = 1 << 0,
    GTK_PICK_NON_TARGETABLE = 1 << 1
}

alias GtkConstraintRelation = int;
enum : GtkConstraintRelation
{
    GTK_CONSTRAINT_RELATION_LE = -1,
    GTK_CONSTRAINT_RELATION_EQ = 0,
    GTK_CONSTRAINT_RELATION_GE = 1
}

alias GtkConstraintStrength = int;
enum : GtkConstraintStrength
{
    GTK_CONSTRAINT_STRENGTH_REQUIRED = 1001001000, // @suppress(dscanner.style.number_literals)
    GTK_CONSTRAINT_STRENGTH_STRONG   = 1000000000, // @suppress(dscanner.style.number_literals)
    GTK_CONSTRAINT_STRENGTH_MEDIUM   = 1000,
    GTK_CONSTRAINT_STRENGTH_WEAK     = 1
}

alias GtkConstraintAttribute = int;
enum : GtkConstraintAttribute
{
    GTK_CONSTRAINT_ATTRIBUTE_NONE,
    GTK_CONSTRAINT_ATTRIBUTE_LEFT,
    GTK_CONSTRAINT_ATTRIBUTE_RIGHT,
    GTK_CONSTRAINT_ATTRIBUTE_TOP,
    GTK_CONSTRAINT_ATTRIBUTE_BOTTOM,
    GTK_CONSTRAINT_ATTRIBUTE_START,
    GTK_CONSTRAINT_ATTRIBUTE_END,
    GTK_CONSTRAINT_ATTRIBUTE_WIDTH,
    GTK_CONSTRAINT_ATTRIBUTE_HEIGHT,
    GTK_CONSTRAINT_ATTRIBUTE_CENTER_X,
    GTK_CONSTRAINT_ATTRIBUTE_CENTER_Y,
    GTK_CONSTRAINT_ATTRIBUTE_BASELINE
}

alias GtkConstraintVflParserError = int;
enum : GtkConstraintVflParserError
{
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_SYMBOL,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_ATTRIBUTE,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_VIEW,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_METRIC,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_PRIORITY,
    GTK_CONSTRAINT_VFL_PARSER_ERROR_INVALID_RELATION
}

alias GtkSystemSetting = int;
enum : GtkSystemSetting
{
    GTK_SYSTEM_SETTING_DPI,
    GTK_SYSTEM_SETTING_FONT_NAME,
    GTK_SYSTEM_SETTING_FONT_CONFIG,
    GTK_SYSTEM_SETTING_DISPLAY,
    GTK_SYSTEM_SETTING_ICON_THEME
}

alias GtkSymbolicColor = int;
enum : GtkSymbolicColor
{
    GTK_SYMBOLIC_COLOR_FOREGROUND = 0,
    GTK_SYMBOLIC_COLOR_ERROR = 1,
    GTK_SYMBOLIC_COLOR_WARNING = 2,
    GTK_SYMBOLIC_COLOR_SUCCESS = 3
}

alias GtkAccessibleRole = int;
enum : GtkAccessibleRole
{
    GTK_ACCESSIBLE_ROLE_ALERT,
    GTK_ACCESSIBLE_ROLE_ALERT_DIALOG,
    GTK_ACCESSIBLE_ROLE_BANNER,
    GTK_ACCESSIBLE_ROLE_BUTTON,
    GTK_ACCESSIBLE_ROLE_CAPTION,
    GTK_ACCESSIBLE_ROLE_CELL,
    GTK_ACCESSIBLE_ROLE_CHECKBOX,
    GTK_ACCESSIBLE_ROLE_COLUMN_HEADER,
    GTK_ACCESSIBLE_ROLE_COMBO_BOX,
    GTK_ACCESSIBLE_ROLE_COMMAND,
    GTK_ACCESSIBLE_ROLE_COMPOSITE,
    GTK_ACCESSIBLE_ROLE_DIALOG,
    GTK_ACCESSIBLE_ROLE_DOCUMENT,
    GTK_ACCESSIBLE_ROLE_FEED,
    GTK_ACCESSIBLE_ROLE_FORM,
    GTK_ACCESSIBLE_ROLE_GENERIC,
    GTK_ACCESSIBLE_ROLE_GRID,
    GTK_ACCESSIBLE_ROLE_GRID_CELL,
    GTK_ACCESSIBLE_ROLE_GROUP,
    GTK_ACCESSIBLE_ROLE_HEADING,
    GTK_ACCESSIBLE_ROLE_IMG,
    GTK_ACCESSIBLE_ROLE_INPUT,
    GTK_ACCESSIBLE_ROLE_LABEL,
    GTK_ACCESSIBLE_ROLE_LANDMARK,
    GTK_ACCESSIBLE_ROLE_LEGEND,
    GTK_ACCESSIBLE_ROLE_LINK,
    GTK_ACCESSIBLE_ROLE_LIST,
    GTK_ACCESSIBLE_ROLE_LIST_BOX,
    GTK_ACCESSIBLE_ROLE_LIST_ITEM,
    GTK_ACCESSIBLE_ROLE_LOG,
    GTK_ACCESSIBLE_ROLE_MAIN,
    GTK_ACCESSIBLE_ROLE_MARQUEE,
    GTK_ACCESSIBLE_ROLE_MATH,
    GTK_ACCESSIBLE_ROLE_METER,
    GTK_ACCESSIBLE_ROLE_MENU,
    GTK_ACCESSIBLE_ROLE_MENU_BAR,
    GTK_ACCESSIBLE_ROLE_MENU_ITEM,
    GTK_ACCESSIBLE_ROLE_MENU_ITEM_CHECKBOX,
    GTK_ACCESSIBLE_ROLE_MENU_ITEM_RADIO,
    GTK_ACCESSIBLE_ROLE_NAVIGATION,
    GTK_ACCESSIBLE_ROLE_NONE,
    GTK_ACCESSIBLE_ROLE_NOTE,
    GTK_ACCESSIBLE_ROLE_OPTION,
    GTK_ACCESSIBLE_ROLE_PRESENTATION,
    GTK_ACCESSIBLE_ROLE_PROGRESS_BAR,
    GTK_ACCESSIBLE_ROLE_RADIO,
    GTK_ACCESSIBLE_ROLE_RADIO_GROUP,
    GTK_ACCESSIBLE_ROLE_RANGE,
    GTK_ACCESSIBLE_ROLE_REGION,
    GTK_ACCESSIBLE_ROLE_ROW,
    GTK_ACCESSIBLE_ROLE_ROW_GROUP,
    GTK_ACCESSIBLE_ROLE_ROW_HEADER,
    GTK_ACCESSIBLE_ROLE_SCROLLBAR,
    GTK_ACCESSIBLE_ROLE_SEARCH,
    GTK_ACCESSIBLE_ROLE_SEARCH_BOX,
    GTK_ACCESSIBLE_ROLE_SECTION,
    GTK_ACCESSIBLE_ROLE_SECTION_HEAD,
    GTK_ACCESSIBLE_ROLE_SELECT,
    GTK_ACCESSIBLE_ROLE_SEPARATOR,
    GTK_ACCESSIBLE_ROLE_SLIDER,
    GTK_ACCESSIBLE_ROLE_SPIN_BUTTON,
    GTK_ACCESSIBLE_ROLE_STATUS,
    GTK_ACCESSIBLE_ROLE_STRUCTURE,
    GTK_ACCESSIBLE_ROLE_SWITCH,
    GTK_ACCESSIBLE_ROLE_TAB,
    GTK_ACCESSIBLE_ROLE_TABLE,
    GTK_ACCESSIBLE_ROLE_TAB_LIST,
    GTK_ACCESSIBLE_ROLE_TAB_PANEL,
    GTK_ACCESSIBLE_ROLE_TEXT_BOX,
    GTK_ACCESSIBLE_ROLE_TIME,
    GTK_ACCESSIBLE_ROLE_TIMER,
    GTK_ACCESSIBLE_ROLE_TOOLBAR,
    GTK_ACCESSIBLE_ROLE_TOOLTIP,
    GTK_ACCESSIBLE_ROLE_TREE,
    GTK_ACCESSIBLE_ROLE_TREE_GRID,
    GTK_ACCESSIBLE_ROLE_TREE_ITEM,
    GTK_ACCESSIBLE_ROLE_WIDGET,
    GTK_ACCESSIBLE_ROLE_WINDOW,
    GTK_ACCESSIBLE_ROLE_TOGGLE_BUTTON, // GDK_AVAILABLE_ENUMERATOR_IN_4_10,
    GTK_ACCESSIBLE_ROLE_APPLICATION, // GDK_AVAILABLE_ENUMERATOR_IN_4_12,
    GTK_ACCESSIBLE_ROLE_PARAGRAPH, // GDK_AVAILABLE_ENUMERATOR_IN_4_14,
    GTK_ACCESSIBLE_ROLE_BLOCK_QUOTE, // GDK_AVAILABLE_ENUMERATOR_IN_4_14,
    GTK_ACCESSIBLE_ROLE_ARTICLE, // GDK_AVAILABLE_ENUMERATOR_IN_4_14,
    GTK_ACCESSIBLE_ROLE_COMMENT, // GDK_AVAILABLE_ENUMERATOR_IN_4_14,
    GTK_ACCESSIBLE_ROLE_TERMINAL, // GDK_AVAILABLE_ENUMERATOR_IN_4_14
}

alias GtkAccessibleState = int;
enum : GtkAccessibleState
{
    GTK_ACCESSIBLE_STATE_BUSY,
    GTK_ACCESSIBLE_STATE_CHECKED,
    GTK_ACCESSIBLE_STATE_DISABLED,
    GTK_ACCESSIBLE_STATE_EXPANDED,
    GTK_ACCESSIBLE_STATE_HIDDEN,
    GTK_ACCESSIBLE_STATE_INVALID,
    GTK_ACCESSIBLE_STATE_PRESSED,
    GTK_ACCESSIBLE_STATE_SELECTED,
    GTK_ACCESSIBLE_STATE_VISITED, // GDK_AVAILABLE_ENUMERATOR_IN_4_12
}

enum GtkAccessibleState GTK_ACCESSIBLE_VALUE_UNDEFINED = -1;

alias GtkAccessibleProperty = int;
enum : GtkAccessibleProperty
{
    GTK_ACCESSIBLE_PROPERTY_AUTOCOMPLETE,
    GTK_ACCESSIBLE_PROPERTY_DESCRIPTION,
    GTK_ACCESSIBLE_PROPERTY_HAS_POPUP,
    GTK_ACCESSIBLE_PROPERTY_KEY_SHORTCUTS,
    GTK_ACCESSIBLE_PROPERTY_LABEL,
    GTK_ACCESSIBLE_PROPERTY_LEVEL,
    GTK_ACCESSIBLE_PROPERTY_MODAL,
    GTK_ACCESSIBLE_PROPERTY_MULTI_LINE,
    GTK_ACCESSIBLE_PROPERTY_MULTI_SELECTABLE,
    GTK_ACCESSIBLE_PROPERTY_ORIENTATION,
    GTK_ACCESSIBLE_PROPERTY_PLACEHOLDER,
    GTK_ACCESSIBLE_PROPERTY_READ_ONLY,
    GTK_ACCESSIBLE_PROPERTY_REQUIRED,
    GTK_ACCESSIBLE_PROPERTY_ROLE_DESCRIPTION,
    GTK_ACCESSIBLE_PROPERTY_SORT,
    GTK_ACCESSIBLE_PROPERTY_VALUE_MAX,
    GTK_ACCESSIBLE_PROPERTY_VALUE_MIN,
    GTK_ACCESSIBLE_PROPERTY_VALUE_NOW,
    GTK_ACCESSIBLE_PROPERTY_VALUE_TEXT,
    GTK_ACCESSIBLE_PROPERTY_HELP_TEXT
}

alias GtkAccessibleRelation = int;
enum : GtkAccessibleRelation
{
    GTK_ACCESSIBLE_RELATION_ACTIVE_DESCENDANT,
    GTK_ACCESSIBLE_RELATION_COL_COUNT,
    GTK_ACCESSIBLE_RELATION_COL_INDEX,
    GTK_ACCESSIBLE_RELATION_COL_INDEX_TEXT,
    GTK_ACCESSIBLE_RELATION_COL_SPAN,
    GTK_ACCESSIBLE_RELATION_CONTROLS,
    GTK_ACCESSIBLE_RELATION_DESCRIBED_BY,
    GTK_ACCESSIBLE_RELATION_DETAILS,
    GTK_ACCESSIBLE_RELATION_ERROR_MESSAGE,
    GTK_ACCESSIBLE_RELATION_FLOW_TO,
    GTK_ACCESSIBLE_RELATION_LABELLED_BY,
    GTK_ACCESSIBLE_RELATION_OWNS,
    GTK_ACCESSIBLE_RELATION_POS_IN_SET,
    GTK_ACCESSIBLE_RELATION_ROW_COUNT,
    GTK_ACCESSIBLE_RELATION_ROW_INDEX,
    GTK_ACCESSIBLE_RELATION_ROW_INDEX_TEXT,
    GTK_ACCESSIBLE_RELATION_ROW_SPAN,
    GTK_ACCESSIBLE_RELATION_SET_SIZE,
    GTK_ACCESSIBLE_RELATION_LABEL_FOR,
    GTK_ACCESSIBLE_RELATION_DESCRIPTION_FOR,
    GTK_ACCESSIBLE_RELATION_CONTROLLED_BY,
    GTK_ACCESSIBLE_RELATION_DETAILS_FOR,
    GTK_ACCESSIBLE_RELATION_ERROR_MESSAGE_FOR,
    GTK_ACCESSIBLE_RELATION_FLOW_FROM
}

alias GtkAccessibleTristate = int;
enum : GtkAccessibleTristate
{
    GTK_ACCESSIBLE_TRISTATE_FALSE,
    GTK_ACCESSIBLE_TRISTATE_TRUE,
    GTK_ACCESSIBLE_TRISTATE_MIXED
}

alias GtkAccessibleInvalidState = int;
enum : GtkAccessibleInvalidState /*< prefix=GTK_ACCESSIBLE_INVALID >*/
{
    GTK_ACCESSIBLE_INVALID_FALSE,
    GTK_ACCESSIBLE_INVALID_TRUE,
    GTK_ACCESSIBLE_INVALID_GRAMMAR,
    GTK_ACCESSIBLE_INVALID_SPELLING,
}

alias GtkAccessibleAutocomplete = int;
enum : GtkAccessibleAutocomplete
{
    GTK_ACCESSIBLE_AUTOCOMPLETE_NONE,
    GTK_ACCESSIBLE_AUTOCOMPLETE_INLINE,
    GTK_ACCESSIBLE_AUTOCOMPLETE_LIST,
    GTK_ACCESSIBLE_AUTOCOMPLETE_BOTH
}

alias GtkAccessibleSort = int;
enum : GtkAccessibleSort /*< prefix=GTK_ACCESSIBLE_SORT >*/
{
    GTK_ACCESSIBLE_SORT_NONE,
    GTK_ACCESSIBLE_SORT_ASCENDING,
    GTK_ACCESSIBLE_SORT_DESCENDING,
    GTK_ACCESSIBLE_SORT_OTHER
}

alias GtkAccessibleAnnouncementPriority = int;
enum : GtkAccessibleAnnouncementPriority
{
    GTK_ACCESSIBLE_ANNOUNCEMENT_PRIORITY_LOW,
    GTK_ACCESSIBLE_ANNOUNCEMENT_PRIORITY_MEDIUM,
    GTK_ACCESSIBLE_ANNOUNCEMENT_PRIORITY_HIGH
}

alias GtkPopoverMenuFlags = int;
enum : GtkPopoverMenuFlags /*< prefix=GTK_POPOVER_MENU >*/
{
    GTK_POPOVER_MENU_SLIDING = 0,
    GTK_POPOVER_MENU_NESTED  = 1 << 0
}

alias GtkFontRendering = int;
enum : GtkFontRendering
{
    GTK_FONT_RENDERING_AUTOMATIC,
    GTK_FONT_RENDERING_MANUAL,
}

alias GtkTextBufferNotifyFlags = int;
enum : GtkTextBufferNotifyFlags
{
    GTK_TEXT_BUFFER_NOTIFY_BEFORE_INSERT = 1 << 0,
    GTK_TEXT_BUFFER_NOTIFY_AFTER_INSERT  = 1 << 1,
    GTK_TEXT_BUFFER_NOTIFY_BEFORE_DELETE = 1 << 2,
    GTK_TEXT_BUFFER_NOTIFY_AFTER_DELETE  = 1 << 3,
}
