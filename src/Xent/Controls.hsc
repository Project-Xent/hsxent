{-# LANGUAGE NoImplicitPrelude #-}

module Xent.Controls where

#include "xtk/xtk.h"
#include "xtk/xtk_catalog.h"

import qualified Prelude as P
import Xent.Runtime (Attr, El, XEnum (..), element)

data Direction
  = DirectionInherit
  | DirectionLtr
  | DirectionRtl
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum Direction where
  toC DirectionInherit = #{const XENT_DIRECTION_INHERIT}
  toC DirectionLtr = #{const XENT_DIRECTION_LTR}
  toC DirectionRtl = #{const XENT_DIRECTION_RTL}

data FlexAlign
  = FlexAlignAuto
  | FlexAlignStart
  | FlexAlignEnd
  | FlexAlignCenter
  | FlexAlignStretch
  | FlexAlignBaseline
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum FlexAlign where
  toC FlexAlignAuto = #{const XENT_FLEX_ALIGN_AUTO}
  toC FlexAlignStart = #{const XENT_FLEX_ALIGN_START}
  toC FlexAlignEnd = #{const XENT_FLEX_ALIGN_END}
  toC FlexAlignCenter = #{const XENT_FLEX_ALIGN_CENTER}
  toC FlexAlignStretch = #{const XENT_FLEX_ALIGN_STRETCH}
  toC FlexAlignBaseline = #{const XENT_FLEX_ALIGN_BASELINE}

data FlexJustify
  = FlexJustifyStart
  | FlexJustifyEnd
  | FlexJustifyCenter
  | FlexJustifySpaceBetween
  | FlexJustifySpaceAround
  | FlexJustifySpaceEvenly
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum FlexJustify where
  toC FlexJustifyStart = #{const XENT_FLEX_JUSTIFY_START}
  toC FlexJustifyEnd = #{const XENT_FLEX_JUSTIFY_END}
  toC FlexJustifyCenter = #{const XENT_FLEX_JUSTIFY_CENTER}
  toC FlexJustifySpaceBetween = #{const XENT_FLEX_JUSTIFY_SPACE_BETWEEN}
  toC FlexJustifySpaceAround = #{const XENT_FLEX_JUSTIFY_SPACE_AROUND}
  toC FlexJustifySpaceEvenly = #{const XENT_FLEX_JUSTIFY_SPACE_EVENLY}

data FlexWrap
  = FlexWrapNoWrap
  | FlexWrapWrap
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum FlexWrap where
  toC FlexWrapNoWrap = #{const XENT_FLEX_NO_WRAP}
  toC FlexWrapWrap = #{const XENT_FLEX_WRAP}

data AppBarMode
  = AppBarModeCompact
  | AppBarModeMinimal
  | AppBarModeHidden
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum AppBarMode where
  toC AppBarModeCompact = #{const XTK_APPBAR_COMPACT}
  toC AppBarModeMinimal = #{const XTK_APPBAR_MINIMAL}
  toC AppBarModeHidden = #{const XTK_APPBAR_HIDDEN}

data BadgeMode
  = BadgeModeDot
  | BadgeModeNumber
  | BadgeModeIcon
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum BadgeMode where
  toC BadgeModeDot = #{const XTK_BADGE_DOT}
  toC BadgeModeNumber = #{const XTK_BADGE_NUMBER}
  toC BadgeModeIcon = #{const XTK_BADGE_ICON}

data ButtonStyle
  = ButtonStyleStandard
  | ButtonStyleSubtle
  | ButtonStyleText
  | ButtonStyleAccent
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum ButtonStyle where
  toC ButtonStyleStandard = #{const XTK_BUTTON_STANDARD}
  toC ButtonStyleSubtle = #{const XTK_BUTTON_SUBTLE}
  toC ButtonStyleText = #{const XTK_BUTTON_TEXT}
  toC ButtonStyleAccent = #{const XTK_BUTTON_ACCENT}

data CalendarMode
  = CalendarModeSingle
  | CalendarModeNone
  | CalendarModeMultiple
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum CalendarMode where
  toC CalendarModeSingle = #{const XTK_CALENDAR_SINGLE}
  toC CalendarModeNone = #{const XTK_CALENDAR_NONE}
  toC CalendarModeMultiple = #{const XTK_CALENDAR_MULTIPLE}

data Clock
  = ClockSystem
  | ClockH12
  | ClockH24
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum Clock where
  toC ClockSystem = #{const XTK_CLOCK_SYSTEM}
  toC ClockH12 = #{const XTK_CLOCK_12H}
  toC ClockH24 = #{const XTK_CLOCK_24H}

data DropOperation
  = DropOperationNone
  | DropOperationCopy
  | DropOperationMove
  | DropOperationLink
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum DropOperation where
  toC DropOperationNone = #{const XTK_DROP_NONE}
  toC DropOperationCopy = #{const XTK_DROP_COPY}
  toC DropOperationMove = #{const XTK_DROP_MOVE}
  toC DropOperationLink = #{const XTK_DROP_LINK}

data ElementLabel
  = ElementLabelDefault
  | ElementLabelCollapsed
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum ElementLabel where
  toC ElementLabelDefault = #{const XTK_ELEMENT_LABEL_DEFAULT}
  toC ElementLabelCollapsed = #{const XTK_ELEMENT_LABEL_COLLAPSED}

data FontWeight
  = FontWeightInherit
  | FontWeightThin
  | FontWeightExtraLight
  | FontWeightLight
  | FontWeightRegular
  | FontWeightMedium
  | FontWeightSemiBold
  | FontWeightBold
  | FontWeightExtraBold
  | FontWeightBlack
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum FontWeight where
  toC FontWeightInherit = #{const XTK_FONT_INHERIT}
  toC FontWeightThin = #{const XTK_FONT_THIN}
  toC FontWeightExtraLight = #{const XTK_FONT_EXTRA_LIGHT}
  toC FontWeightLight = #{const XTK_FONT_LIGHT}
  toC FontWeightRegular = #{const XTK_FONT_REGULAR}
  toC FontWeightMedium = #{const XTK_FONT_MEDIUM}
  toC FontWeightSemiBold = #{const XTK_FONT_SEMI_BOLD}
  toC FontWeightBold = #{const XTK_FONT_BOLD}
  toC FontWeightExtraBold = #{const XTK_FONT_EXTRA_BOLD}
  toC FontWeightBlack = #{const XTK_FONT_BLACK}

data ImageStretch
  = ImageStretchNone
  | ImageStretchFill
  | ImageStretchUniform
  | ImageStretchUniformToFill
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum ImageStretch where
  toC ImageStretchNone = #{const XTK_IMAGE_NONE}
  toC ImageStretchFill = #{const XTK_IMAGE_FILL}
  toC ImageStretchUniform = #{const XTK_IMAGE_UNIFORM}
  toC ImageStretchUniformToFill = #{const XTK_IMAGE_UNIFORM_TO_FILL}

data InfoBarSeverity
  = InfoBarSeverityInformational
  | InfoBarSeveritySuccess
  | InfoBarSeverityWarning
  | InfoBarSeverityError
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum InfoBarSeverity where
  toC InfoBarSeverityInformational = #{const XTK_INFOBAR_INFORMATIONAL}
  toC InfoBarSeveritySuccess = #{const XTK_INFOBAR_SUCCESS}
  toC InfoBarSeverityWarning = #{const XTK_INFOBAR_WARNING}
  toC InfoBarSeverityError = #{const XTK_INFOBAR_ERROR}

data LabelPosition
  = LabelPositionBottom
  | LabelPositionRight
  | LabelPositionCollapsed
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum LabelPosition where
  toC LabelPositionBottom = #{const XTK_LABEL_BOTTOM}
  toC LabelPositionRight = #{const XTK_LABEL_RIGHT}
  toC LabelPositionCollapsed = #{const XTK_LABEL_COLLAPSED}

data ListSelMode
  = ListSelModeSingle
  | ListSelModeNone
  | ListSelModeMultiple
  | ListSelModeExtended
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum ListSelMode where
  toC ListSelModeSingle = #{const XTK_LIST_SELECT_SINGLE}
  toC ListSelModeNone = #{const XTK_LIST_SELECT_NONE}
  toC ListSelModeMultiple = #{const XTK_LIST_SELECT_MULTIPLE}
  toC ListSelModeExtended = #{const XTK_LIST_SELECT_EXTENDED}

data NavKind
  = NavKindItem
  | NavKindHeader
  | NavKindSeparator
  | NavKindFooter
  | NavKindChild
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum NavKind where
  toC NavKindItem = #{const XTK_NAV_ITEM}
  toC NavKindHeader = #{const XTK_NAV_HEADER}
  toC NavKindSeparator = #{const XTK_NAV_SEPARATOR}
  toC NavKindFooter = #{const XTK_NAV_FOOTER}
  toC NavKindChild = #{const XTK_NAV_CHILD}

data OverflowButton
  = OverflowButtonAuto
  | OverflowButtonVisible
  | OverflowButtonCollapsed
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum OverflowButton where
  toC OverflowButtonAuto = #{const XTK_OVERFLOW_BUTTON_AUTO}
  toC OverflowButtonVisible = #{const XTK_OVERFLOW_BUTTON_VISIBLE}
  toC OverflowButtonCollapsed = #{const XTK_OVERFLOW_BUTTON_COLLAPSED}

data PagerButtonVis
  = PagerButtonVisAuto
  | PagerButtonVisAlways
  | PagerButtonVisHiddenEdge
  | PagerButtonVisNone
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum PagerButtonVis where
  toC PagerButtonVisAuto = #{const XTK_PAGER_BUTTON_AUTO}
  toC PagerButtonVisAlways = #{const XTK_PAGER_BUTTON_ALWAYS}
  toC PagerButtonVisHiddenEdge = #{const XTK_PAGER_BUTTON_HIDDEN_EDGE}
  toC PagerButtonVisNone = #{const XTK_PAGER_BUTTON_NONE}

data PagerDisplayMode
  = PagerDisplayModeAuto
  | PagerDisplayModeNumberPanel
  | PagerDisplayModeNumberText
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum PagerDisplayMode where
  toC PagerDisplayModeAuto = #{const XTK_PAGER_DISPLAY_AUTO}
  toC PagerDisplayModeNumberPanel = #{const XTK_PAGER_DISPLAY_NUMBER_PANEL}
  toC PagerDisplayModeNumberText = #{const XTK_PAGER_DISPLAY_NUMBER_TEXT}

data PipsNavVis
  = PipsNavVisCollapsed
  | PipsNavVisVisible
  | PipsNavVisOnHover
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum PipsNavVis where
  toC PipsNavVisCollapsed = #{const XTK_PIPS_NAV_COLLAPSED}
  toC PipsNavVisVisible = #{const XTK_PIPS_NAV_VISIBLE}
  toC PipsNavVisOnHover = #{const XTK_PIPS_NAV_ON_HOVER}

data ProgressState
  = ProgressStateNormal
  | ProgressStatePaused
  | ProgressStateError
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum ProgressState where
  toC ProgressStateNormal = #{const XTK_PROGRESS_NORMAL}
  toC ProgressStatePaused = #{const XTK_PROGRESS_PAUSED}
  toC ProgressStateError = #{const XTK_PROGRESS_ERROR}

data PullDirection
  = PullDirectionTopToBottom
  | PullDirectionLeftToRight
  | PullDirectionRightToLeft
  | PullDirectionBottomToTop
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum PullDirection where
  toC PullDirectionTopToBottom = #{const XTK_PULL_TOP_TO_BOTTOM}
  toC PullDirectionLeftToRight = #{const XTK_PULL_LEFT_TO_RIGHT}
  toC PullDirectionRightToLeft = #{const XTK_PULL_RIGHT_TO_LEFT}
  toC PullDirectionBottomToTop = #{const XTK_PULL_BOTTOM_TO_TOP}

data ScrollBarIndicator
  = ScrollBarIndicatorNone
  | ScrollBarIndicatorTouch
  | ScrollBarIndicatorMouse
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum ScrollBarIndicator where
  toC ScrollBarIndicatorNone = #{const XTK_SCROLLBAR_INDICATOR_NONE}
  toC ScrollBarIndicatorTouch = #{const XTK_SCROLLBAR_INDICATOR_TOUCH}
  toC ScrollBarIndicatorMouse = #{const XTK_SCROLLBAR_INDICATOR_MOUSE}

data SliderSnap
  = SliderSnapStep
  | SliderSnapTicks
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum SliderSnap where
  toC SliderSnapStep = #{const XTK_SLIDER_SNAP_STEP}
  toC SliderSnapTicks = #{const XTK_SLIDER_SNAP_TICKS}

data SortDirection
  = SortDirectionNone
  | SortDirectionAscending
  | SortDirectionDescending
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum SortDirection where
  toC SortDirectionNone = #{const XTK_SORT_NONE}
  toC SortDirectionAscending = #{const XTK_SORT_ASCENDING}
  toC SortDirectionDescending = #{const XTK_SORT_DESCENDING}

data Spectrum
  = SpectrumHueSaturation
  | SpectrumHueValue
  | SpectrumSaturationValue
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum Spectrum where
  toC SpectrumHueSaturation = #{const XTK_SPECTRUM_HUE_SATURATION}
  toC SpectrumHueValue = #{const XTK_SPECTRUM_HUE_VALUE}
  toC SpectrumSaturationValue = #{const XTK_SPECTRUM_SATURATION_VALUE}

data SplitViewDisplayMode
  = SplitViewDisplayModeInline
  | SplitViewDisplayModeCompactInline
  | SplitViewDisplayModeOverlay
  | SplitViewDisplayModeCompactOverlay
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum SplitViewDisplayMode where
  toC SplitViewDisplayModeInline = #{const XTK_SPLITVIEW_INLINE}
  toC SplitViewDisplayModeCompactInline = #{const XTK_SPLITVIEW_COMPACT_INLINE}
  toC SplitViewDisplayModeOverlay = #{const XTK_SPLITVIEW_OVERLAY}
  toC SplitViewDisplayModeCompactOverlay = #{const XTK_SPLITVIEW_COMPACT_OVERLAY}

data SplitViewPanePlacement
  = SplitViewPanePlacementLeft
  | SplitViewPanePlacementRight
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum SplitViewPanePlacement where
  toC SplitViewPanePlacementLeft = #{const XTK_SPLITVIEW_LEFT}
  toC SplitViewPanePlacementRight = #{const XTK_SPLITVIEW_RIGHT}

data StackDirection
  = StackDirectionColumn
  | StackDirectionRow
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum StackDirection where
  toC StackDirectionColumn = #{const XTK_STACK_COLUMN}
  toC StackDirectionRow = #{const XTK_STACK_ROW}

data TeachingTipPlacement
  = TeachingTipPlacementAuto
  | TeachingTipPlacementTop
  | TeachingTipPlacementBottom
  | TeachingTipPlacementLeft
  | TeachingTipPlacementRight
  | TeachingTipPlacementTopRight
  | TeachingTipPlacementTopLeft
  | TeachingTipPlacementBottomRight
  | TeachingTipPlacementBottomLeft
  | TeachingTipPlacementLeftTop
  | TeachingTipPlacementLeftBottom
  | TeachingTipPlacementRightTop
  | TeachingTipPlacementRightBottom
  | TeachingTipPlacementCenter
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum TeachingTipPlacement where
  toC TeachingTipPlacementAuto = #{const XTK_TIP_PLACE_AUTO}
  toC TeachingTipPlacementTop = #{const XTK_TIP_PLACE_TOP}
  toC TeachingTipPlacementBottom = #{const XTK_TIP_PLACE_BOTTOM}
  toC TeachingTipPlacementLeft = #{const XTK_TIP_PLACE_LEFT}
  toC TeachingTipPlacementRight = #{const XTK_TIP_PLACE_RIGHT}
  toC TeachingTipPlacementTopRight = #{const XTK_TIP_PLACE_TOP_RIGHT}
  toC TeachingTipPlacementTopLeft = #{const XTK_TIP_PLACE_TOP_LEFT}
  toC TeachingTipPlacementBottomRight = #{const XTK_TIP_PLACE_BOTTOM_RIGHT}
  toC TeachingTipPlacementBottomLeft = #{const XTK_TIP_PLACE_BOTTOM_LEFT}
  toC TeachingTipPlacementLeftTop = #{const XTK_TIP_PLACE_LEFT_TOP}
  toC TeachingTipPlacementLeftBottom = #{const XTK_TIP_PLACE_LEFT_BOTTOM}
  toC TeachingTipPlacementRightTop = #{const XTK_TIP_PLACE_RIGHT_TOP}
  toC TeachingTipPlacementRightBottom = #{const XTK_TIP_PLACE_RIGHT_BOTTOM}
  toC TeachingTipPlacementCenter = #{const XTK_TIP_PLACE_CENTER}

data TeachingTipTail
  = TeachingTipTailAuto
  | TeachingTipTailVisible
  | TeachingTipTailCollapsed
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum TeachingTipTail where
  toC TeachingTipTailAuto = #{const XTK_TIP_TAIL_AUTO}
  toC TeachingTipTailVisible = #{const XTK_TIP_TAIL_VISIBLE}
  toC TeachingTipTailCollapsed = #{const XTK_TIP_TAIL_COLLAPSED}

data TextAlign
  = TextAlignLeft
  | TextAlignCenter
  | TextAlignRight
  | TextAlignJustify
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum TextAlign where
  toC TextAlignLeft = #{const XTK_TEXT_LEFT}
  toC TextAlignCenter = #{const XTK_TEXT_CENTER}
  toC TextAlignRight = #{const XTK_TEXT_RIGHT}
  toC TextAlignJustify = #{const XTK_TEXT_JUSTIFY}

data TextTrim
  = TextTrimNone
  | TextTrimChar
  | TextTrimCharEllipsis
  | TextTrimWord
  | TextTrimWordEllipsis
  | TextTrimPathEllipsis
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum TextTrim where
  toC TextTrimNone = #{const XTK_TRIM_NONE}
  toC TextTrimChar = #{const XTK_TRIM_CHAR}
  toC TextTrimCharEllipsis = #{const XTK_TRIM_CHAR_ELLIPSIS}
  toC TextTrimWord = #{const XTK_TRIM_WORD}
  toC TextTrimWordEllipsis = #{const XTK_TRIM_WORD_ELLIPSIS}
  toC TextTrimPathEllipsis = #{const XTK_TRIM_PATH_ELLIPSIS}

data TickPlacement
  = TickPlacementInline
  | TickPlacementTopLeft
  | TickPlacementBottomRight
  | TickPlacementOutside
  | TickPlacementNone
  deriving (P.Eq, P.Ord, P.Show, P.Enum, P.Bounded)

instance XEnum TickPlacement where
  toC TickPlacementInline = #{const XTK_TICK_INLINE}
  toC TickPlacementTopLeft = #{const XTK_TICK_TOP_LEFT}
  toC TickPlacementBottomRight = #{const XTK_TICK_BOTTOM_RIGHT}
  toC TickPlacementOutside = #{const XTK_TICK_OUTSIDE}
  toC TickPlacementNone = #{const XTK_TICK_NONE}

data Container

container :: [Attr Container msg] -> [El msg] -> El msg
container = element #{const XTK_CTRL_CONTAINER}

data Text

text :: [Attr Text msg] -> [El msg] -> El msg
text = element #{const XTK_CTRL_TEXT}

data Button

button :: [Attr Button msg] -> [El msg] -> El msg
button = element #{const XTK_CTRL_BUTTON}

data Toggle

toggle :: [Attr Toggle msg] -> [El msg] -> El msg
toggle = element #{const XTK_CTRL_TOGGLE}

data Checkbox

checkbox :: [Attr Checkbox msg] -> [El msg] -> El msg
checkbox = element #{const XTK_CTRL_CHECKBOX}

data Radio

radio :: [Attr Radio msg] -> [El msg] -> El msg
radio = element #{const XTK_CTRL_RADIO}

data Switch

switch :: [Attr Switch msg] -> [El msg] -> El msg
switch = element #{const XTK_CTRL_SWITCH}

data Slider

slider :: [Attr Slider msg] -> [El msg] -> El msg
slider = element #{const XTK_CTRL_SLIDER}

data Textbox

textbox :: [Attr Textbox msg] -> [El msg] -> El msg
textbox = element #{const XTK_CTRL_TEXTBOX}

data Scroll

scroll :: [Attr Scroll msg] -> [El msg] -> El msg
scroll = element #{const XTK_CTRL_SCROLL}

data Image

image :: [Attr Image msg] -> [El msg] -> El msg
image = element #{const XTK_CTRL_IMAGE}

data Progress

progress :: [Attr Progress msg] -> [El msg] -> El msg
progress = element #{const XTK_CTRL_PROGRESS}

data List

list :: [Attr List msg] -> [El msg] -> El msg
list = element #{const XTK_CTRL_LIST}

data Tab

tab :: [Attr Tab msg] -> [El msg] -> El msg
tab = element #{const XTK_CTRL_TAB}

data Card

card :: [Attr Card msg] -> [El msg] -> El msg
card = element #{const XTK_CTRL_CARD}

data Divider

divider :: [Attr Divider msg] -> [El msg] -> El msg
divider = element #{const XTK_CTRL_DIVIDER}

data Canvas

canvas :: [Attr Canvas msg] -> [El msg] -> El msg
canvas = element #{const XTK_CTRL_CANVAS}

data Password

password :: [Attr Password msg] -> [El msg] -> El msg
password = element #{const XTK_CTRL_PASSWORD}

data Number

number :: [Attr Number msg] -> [El msg] -> El msg
number = element #{const XTK_CTRL_NUMBER}

data Link

link :: [Attr Link msg] -> [El msg] -> El msg
link = element #{const XTK_CTRL_LINK}

data Repeat

repeat :: [Attr Repeat msg] -> [El msg] -> El msg
repeat = element #{const XTK_CTRL_REPEAT}

data Progressring

progressring :: [Attr Progressring msg] -> [El msg] -> El msg
progressring = element #{const XTK_CTRL_PROGRESSRING}

data Badge

badge :: [Attr Badge msg] -> [El msg] -> El msg
badge = element #{const XTK_CTRL_BADGE}

data Tooltip

tooltip :: [Attr Tooltip msg] -> [El msg] -> El msg
tooltip = element #{const XTK_CTRL_TOOLTIP}

data Flyout

flyout :: [Attr Flyout msg] -> [El msg] -> El msg
flyout = element #{const XTK_CTRL_FLYOUT}

data Menufly

menufly :: [Attr Menufly msg] -> [El msg] -> El msg
menufly = element #{const XTK_CTRL_MENUFLY}

data Dropdown

dropdown :: [Attr Dropdown msg] -> [El msg] -> El msg
dropdown = element #{const XTK_CTRL_DROPDOWN}

data Split

split :: [Attr Split msg] -> [El msg] -> El msg
split = element #{const XTK_CTRL_SPLIT}

data Combo

combo :: [Attr Combo msg] -> [El msg] -> El msg
combo = element #{const XTK_CTRL_COMBO}

data Expander

expander :: [Attr Expander msg] -> [El msg] -> El msg
expander = element #{const XTK_CTRL_EXPANDER}

data Exphead

exphead :: [Attr Exphead msg] -> [El msg] -> El msg
exphead = element #{const XTK_CTRL_EXPHEAD}

data Expbody

expbody :: [Attr Expbody msg] -> [El msg] -> El msg
expbody = element #{const XTK_CTRL_EXPBODY}

data Infobar

infobar :: [Attr Infobar msg] -> [El msg] -> El msg
infobar = element #{const XTK_CTRL_INFOBAR}

data Dialog

dialog :: [Attr Dialog msg] -> [El msg] -> El msg
dialog = element #{const XTK_CTRL_DIALOG}

data Dialogbody

dialogbody :: [Attr Dialogbody msg] -> [El msg] -> El msg
dialogbody = element #{const XTK_CTRL_DIALOGBODY}

data Menubar

menubar :: [Attr Menubar msg] -> [El msg] -> El msg
menubar = element #{const XTK_CTRL_MENUBAR}

data Menuitem

menuitem :: [Attr Menuitem msg] -> [El msg] -> El msg
menuitem = element #{const XTK_CTRL_MENUITEM}

data Nav

nav :: [Attr Nav msg] -> [El msg] -> El msg
nav = element #{const XTK_CTRL_NAV}

data Navitem

navitem :: [Attr Navitem msg] -> [El msg] -> El msg
navitem = element #{const XTK_CTRL_NAVITEM}

data Tabs

tabs :: [Attr Tabs msg] -> [El msg] -> El msg
tabs = element #{const XTK_CTRL_TABS}

data Tabitem

tabitem :: [Attr Tabitem msg] -> [El msg] -> El msg
tabitem = element #{const XTK_CTRL_TABITEM}

data Listitem

listitem :: [Attr Listitem msg] -> [El msg] -> El msg
listitem = element #{const XTK_CTRL_LISTITEM}

data Listbox

listbox :: [Attr Listbox msg] -> [El msg] -> El msg
listbox = element #{const XTK_CTRL_LISTBOX}

data Gridview

gridview :: [Attr Gridview msg] -> [El msg] -> El msg
gridview = element #{const XTK_CTRL_GRIDVIEW}

data Repeater

repeater :: [Attr Repeater msg] -> [El msg] -> El msg
repeater = element #{const XTK_CTRL_REPEATER}

data Itemsview

itemsview :: [Attr Itemsview msg] -> [El msg] -> El msg
itemsview = element #{const XTK_CTRL_ITEMSVIEW}

data Flip

flip :: [Attr Flip msg] -> [El msg] -> El msg
flip = element #{const XTK_CTRL_FLIP}

data Pips

pips :: [Attr Pips msg] -> [El msg] -> El msg
pips = element #{const XTK_CTRL_PIPS}

data Suggest

suggest :: [Attr Suggest msg] -> [El msg] -> El msg
suggest = element #{const XTK_CTRL_SUGGEST}

data Togglesplit

togglesplit :: [Attr Togglesplit msg] -> [El msg] -> El msg
togglesplit = element #{const XTK_CTRL_TOGGLESPLIT}

data Radiogroup

radiogroup :: [Attr Radiogroup msg] -> [El msg] -> El msg
radiogroup = element #{const XTK_CTRL_RADIOGROUP}

data Rating

rating :: [Attr Rating msg] -> [El msg] -> El msg
rating = element #{const XTK_CTRL_RATING}

data Selector

selector :: [Attr Selector msg] -> [El msg] -> El msg
selector = element #{const XTK_CTRL_SELECTOR}

data Selectoritem

selectoritem :: [Attr Selectoritem msg] -> [El msg] -> El msg
selectoritem = element #{const XTK_CTRL_SELECTORITEM}

data Breadcrumb

breadcrumb :: [Attr Breadcrumb msg] -> [El msg] -> El msg
breadcrumb = element #{const XTK_CTRL_BREADCRUMB}

data Crumb

crumb :: [Attr Crumb msg] -> [El msg] -> El msg
crumb = element #{const XTK_CTRL_CRUMB}

data Teachtip

teachtip :: [Attr Teachtip msg] -> [El msg] -> El msg
teachtip = element #{const XTK_CTRL_TEACHTIP}

data Tree

tree :: [Attr Tree msg] -> [El msg] -> El msg
tree = element #{const XTK_CTRL_TREE}

data Treeitem

treeitem :: [Attr Treeitem msg] -> [El msg] -> El msg
treeitem = element #{const XTK_CTRL_TREEITEM}

data Refresh

refresh :: [Attr Refresh msg] -> [El msg] -> El msg
refresh = element #{const XTK_CTRL_REFRESH}

data Avatar

avatar :: [Attr Avatar msg] -> [El msg] -> El msg
avatar = element #{const XTK_CTRL_AVATAR}

data Pager

pager :: [Attr Pager msg] -> [El msg] -> El msg
pager = element #{const XTK_CTRL_PAGER}

data Splitview

splitview :: [Attr Splitview msg] -> [El msg] -> El msg
splitview = element #{const XTK_CTRL_SPLITVIEW}

data Splitpane

splitpane :: [Attr Splitpane msg] -> [El msg] -> El msg
splitpane = element #{const XTK_CTRL_SPLITPANE}

data Splitbody

splitbody :: [Attr Splitbody msg] -> [El msg] -> El msg
splitbody = element #{const XTK_CTRL_SPLITBODY}

data Titlebar

titlebar :: [Attr Titlebar msg] -> [El msg] -> El msg
titlebar = element #{const XTK_CTRL_TITLEBAR}

data Scrollbar

scrollbar :: [Attr Scrollbar msg] -> [El msg] -> El msg
scrollbar = element #{const XTK_CTRL_SCROLLBAR}

data Looping

looping :: [Attr Looping msg] -> [El msg] -> El msg
looping = element #{const XTK_CTRL_LOOPING}

data Datepicker

datepicker :: [Attr Datepicker msg] -> [El msg] -> El msg
datepicker = element #{const XTK_CTRL_DATEPICKER}

data Timepicker

timepicker :: [Attr Timepicker msg] -> [El msg] -> El msg
timepicker = element #{const XTK_CTRL_TIMEPICKER}

data Calendar

calendar :: [Attr Calendar msg] -> [El msg] -> El msg
calendar = element #{const XTK_CTRL_CALENDAR}

data Colorpicker

colorpicker :: [Attr Colorpicker msg] -> [El msg] -> El msg
colorpicker = element #{const XTK_CTRL_COLORPICKER}

data Colheader

colheader :: [Attr Colheader msg] -> [El msg] -> El msg
colheader = element #{const XTK_CTRL_COLHEADER}

data Colitem

colitem :: [Attr Colitem msg] -> [El msg] -> El msg
colitem = element #{const XTK_CTRL_COLITEM}

data Commandbar

commandbar :: [Attr Commandbar msg] -> [El msg] -> El msg
commandbar = element #{const XTK_CTRL_COMMANDBAR}

data Appbarbutton

appbarbutton :: [Attr Appbarbutton msg] -> [El msg] -> El msg
appbarbutton = element #{const XTK_CTRL_APPBARBUTTON}

data Appbartoggle

appbartoggle :: [Attr Appbartoggle msg] -> [El msg] -> El msg
appbartoggle = element #{const XTK_CTRL_APPBARTOGGLE}

data Appbarsep

appbarsep :: [Attr Appbarsep msg] -> [El msg] -> El msg
appbarsep = element #{const XTK_CTRL_APPBARSEP}

data Groupheader

groupheader :: [Attr Groupheader msg] -> [El msg] -> El msg
groupheader = element #{const XTK_CTRL_GROUPHEADER}
