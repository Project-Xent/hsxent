{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeFamilies #-}

module Xent.Attr where

#include "xtk/xtk.h"

import qualified Prelude as P
import Data.Int (Int32)
import qualified Data.Text as T
import Data.Word (Word32, Word64)
import Xent.Controls
import Xent.Runtime

class HasW c where
  w :: P.Float -> Attr c msg
  w v = prop #{const XTK_PROP_WIDTH} (VF32 v)

instance HasW Container

instance HasW Text

instance HasW Button

instance HasW Toggle

instance HasW Checkbox

instance HasW Radio

instance HasW Switch

instance HasW Slider

instance HasW Textbox

instance HasW Scroll

instance HasW Image

instance HasW Progress

instance HasW List

instance HasW Tab

instance HasW Card

instance HasW Divider

instance HasW Canvas

instance HasW Password

instance HasW Number

instance HasW Link

instance HasW Repeat

instance HasW Progressring

instance HasW Badge

instance HasW Tooltip

instance HasW Flyout

instance HasW Menufly

instance HasW Dropdown

instance HasW Split

instance HasW Combo

instance HasW Expander

instance HasW Exphead

instance HasW Expbody

instance HasW Infobar

instance HasW Dialog

instance HasW Dialogbody

instance HasW Menubar

instance HasW Menuitem

instance HasW Nav

instance HasW Navitem

instance HasW Tabs

instance HasW Tabitem

instance HasW Listitem

instance HasW Listbox

instance HasW Gridview

instance HasW Repeater

instance HasW Itemsview

instance HasW Flip

instance HasW Pips

instance HasW Suggest

instance HasW Togglesplit

instance HasW Radiogroup

instance HasW Rating

instance HasW Selector

instance HasW Selectoritem

instance HasW Breadcrumb

instance HasW Crumb

instance HasW Teachtip

instance HasW Tree

instance HasW Treeitem

instance HasW Refresh

instance HasW Avatar

instance HasW Pager

instance HasW Splitview

instance HasW Splitpane

instance HasW Splitbody

instance HasW Titlebar

instance HasW Scrollbar

instance HasW Looping

instance HasW Datepicker

instance HasW Timepicker

instance HasW Calendar

instance HasW Colorpicker

instance HasW Colheader

instance HasW Colitem

instance HasW Commandbar

instance HasW Appbarbutton

instance HasW Appbartoggle

instance HasW Appbarsep

class HasH c where
  h :: P.Float -> Attr c msg
  h v = prop #{const XTK_PROP_HEIGHT} (VF32 v)

instance HasH Container

instance HasH Text

instance HasH Button

instance HasH Toggle

instance HasH Checkbox

instance HasH Radio

instance HasH Switch

instance HasH Slider

instance HasH Textbox

instance HasH Scroll

instance HasH Image

instance HasH Progress

instance HasH List

instance HasH Tab

instance HasH Card

instance HasH Divider

instance HasH Canvas

instance HasH Password

instance HasH Number

instance HasH Link

instance HasH Repeat

instance HasH Progressring

instance HasH Badge

instance HasH Tooltip

instance HasH Flyout

instance HasH Menufly

instance HasH Dropdown

instance HasH Split

instance HasH Combo

instance HasH Expander

instance HasH Exphead

instance HasH Expbody

instance HasH Infobar

instance HasH Dialog

instance HasH Dialogbody

instance HasH Menubar

instance HasH Menuitem

instance HasH Nav

instance HasH Navitem

instance HasH Tabs

instance HasH Tabitem

instance HasH Listitem

instance HasH Listbox

instance HasH Gridview

instance HasH Repeater

instance HasH Itemsview

instance HasH Flip

instance HasH Pips

instance HasH Suggest

instance HasH Togglesplit

instance HasH Radiogroup

instance HasH Rating

instance HasH Selector

instance HasH Selectoritem

instance HasH Breadcrumb

instance HasH Crumb

instance HasH Teachtip

instance HasH Tree

instance HasH Treeitem

instance HasH Refresh

instance HasH Avatar

instance HasH Pager

instance HasH Splitview

instance HasH Splitpane

instance HasH Splitbody

instance HasH Titlebar

instance HasH Scrollbar

instance HasH Looping

instance HasH Datepicker

instance HasH Timepicker

instance HasH Calendar

instance HasH Colorpicker

instance HasH Colheader

instance HasH Commandbar

instance HasH Appbarbutton

instance HasH Appbartoggle

instance HasH Appbarsep

class HasGrow c where
  grow :: P.Float -> Attr c msg
  grow v = prop #{const XTK_PROP_GROW} (VF32 v)

instance HasGrow Container

instance HasGrow Text

instance HasGrow Button

instance HasGrow Toggle

instance HasGrow Checkbox

instance HasGrow Radio

instance HasGrow Switch

instance HasGrow Slider

instance HasGrow Textbox

instance HasGrow Scroll

instance HasGrow Image

instance HasGrow Progress

instance HasGrow List

instance HasGrow Tab

instance HasGrow Card

instance HasGrow Divider

instance HasGrow Canvas

instance HasGrow Password

instance HasGrow Number

instance HasGrow Link

instance HasGrow Repeat

instance HasGrow Progressring

instance HasGrow Badge

instance HasGrow Tooltip

instance HasGrow Flyout

instance HasGrow Menufly

instance HasGrow Dropdown

instance HasGrow Split

instance HasGrow Combo

instance HasGrow Expander

instance HasGrow Exphead

instance HasGrow Expbody

instance HasGrow Infobar

instance HasGrow Dialog

instance HasGrow Dialogbody

instance HasGrow Menubar

instance HasGrow Menuitem

instance HasGrow Nav

instance HasGrow Navitem

instance HasGrow Tabs

instance HasGrow Tabitem

instance HasGrow Listitem

instance HasGrow Listbox

instance HasGrow Gridview

instance HasGrow Repeater

instance HasGrow Itemsview

instance HasGrow Flip

instance HasGrow Pips

instance HasGrow Suggest

instance HasGrow Togglesplit

instance HasGrow Radiogroup

instance HasGrow Rating

instance HasGrow Selector

instance HasGrow Selectoritem

instance HasGrow Breadcrumb

instance HasGrow Crumb

instance HasGrow Teachtip

instance HasGrow Tree

instance HasGrow Treeitem

instance HasGrow Refresh

instance HasGrow Avatar

instance HasGrow Pager

instance HasGrow Splitview

instance HasGrow Splitpane

instance HasGrow Splitbody

instance HasGrow Titlebar

instance HasGrow Scrollbar

instance HasGrow Looping

instance HasGrow Datepicker

instance HasGrow Timepicker

instance HasGrow Calendar

instance HasGrow Colorpicker

instance HasGrow Colheader

instance HasGrow Commandbar

instance HasGrow Appbarbutton

instance HasGrow Appbartoggle

instance HasGrow Appbarsep

class HasShrink c where
  shrink :: P.Float -> Attr c msg
  shrink v = prop #{const XTK_PROP_SHRINK} (VF32 v)

instance HasShrink Container

instance HasShrink Scroll

instance HasShrink Tab

instance HasShrink Card

instance HasShrink Divider

instance HasShrink Canvas

instance HasShrink Badge

instance HasShrink Expbody

instance HasShrink Dialog

instance HasShrink Dialogbody

instance HasShrink Menubar

instance HasShrink Rating

instance HasShrink Teachtip

instance HasShrink Avatar

instance HasShrink Pager

instance HasShrink Splitview

instance HasShrink Splitpane

instance HasShrink Splitbody

instance HasShrink Titlebar

instance HasShrink Colheader

class HasSelf c where
  self :: FlexAlign -> Attr c msg
  self v = prop #{const XTK_PROP_ALIGN_SELF} (VEnum (toC v))

instance HasSelf Container

instance HasSelf Text

instance HasSelf Button

instance HasSelf Toggle

instance HasSelf Checkbox

instance HasSelf Radio

instance HasSelf Switch

instance HasSelf Slider

instance HasSelf Textbox

instance HasSelf Scroll

instance HasSelf Image

instance HasSelf Progress

instance HasSelf List

instance HasSelf Tab

instance HasSelf Card

instance HasSelf Divider

instance HasSelf Canvas

instance HasSelf Password

instance HasSelf Number

instance HasSelf Link

instance HasSelf Repeat

instance HasSelf Progressring

instance HasSelf Badge

instance HasSelf Tooltip

instance HasSelf Flyout

instance HasSelf Menufly

instance HasSelf Dropdown

instance HasSelf Split

instance HasSelf Combo

instance HasSelf Expander

instance HasSelf Exphead

instance HasSelf Expbody

instance HasSelf Infobar

instance HasSelf Dialog

instance HasSelf Dialogbody

instance HasSelf Menubar

instance HasSelf Menuitem

instance HasSelf Nav

instance HasSelf Navitem

instance HasSelf Tabs

instance HasSelf Tabitem

instance HasSelf Listitem

instance HasSelf Listbox

instance HasSelf Gridview

instance HasSelf Repeater

instance HasSelf Itemsview

instance HasSelf Flip

instance HasSelf Pips

instance HasSelf Suggest

instance HasSelf Togglesplit

instance HasSelf Radiogroup

instance HasSelf Rating

instance HasSelf Selector

instance HasSelf Selectoritem

instance HasSelf Breadcrumb

instance HasSelf Crumb

instance HasSelf Teachtip

instance HasSelf Tree

instance HasSelf Treeitem

instance HasSelf Refresh

instance HasSelf Avatar

instance HasSelf Pager

instance HasSelf Splitview

instance HasSelf Splitpane

instance HasSelf Splitbody

instance HasSelf Titlebar

instance HasSelf Scrollbar

instance HasSelf Looping

instance HasSelf Datepicker

instance HasSelf Timepicker

instance HasSelf Calendar

instance HasSelf Colorpicker

instance HasSelf Colheader

instance HasSelf Commandbar

instance HasSelf Appbarbutton

instance HasSelf Appbartoggle

instance HasSelf Appbarsep

class HasMl c where
  ml :: P.Float -> Attr c msg
  ml v = prop #{const XTK_PROP_MARGIN_LEFT} (VF32 v)

instance HasMl Container

instance HasMl Text

instance HasMl Button

instance HasMl Toggle

instance HasMl Checkbox

instance HasMl Radio

instance HasMl Switch

instance HasMl Slider

instance HasMl Textbox

instance HasMl Scroll

instance HasMl Image

instance HasMl Progress

instance HasMl List

instance HasMl Tab

instance HasMl Card

instance HasMl Divider

instance HasMl Canvas

instance HasMl Password

instance HasMl Number

instance HasMl Link

instance HasMl Repeat

instance HasMl Progressring

instance HasMl Badge

instance HasMl Tooltip

instance HasMl Flyout

instance HasMl Menufly

instance HasMl Dropdown

instance HasMl Split

instance HasMl Combo

instance HasMl Expander

instance HasMl Exphead

instance HasMl Expbody

instance HasMl Infobar

instance HasMl Dialog

instance HasMl Dialogbody

instance HasMl Menubar

instance HasMl Menuitem

instance HasMl Nav

instance HasMl Navitem

instance HasMl Tabs

instance HasMl Tabitem

instance HasMl Listitem

instance HasMl Listbox

instance HasMl Gridview

instance HasMl Repeater

instance HasMl Itemsview

instance HasMl Flip

instance HasMl Pips

instance HasMl Suggest

instance HasMl Togglesplit

instance HasMl Radiogroup

instance HasMl Rating

instance HasMl Selector

instance HasMl Selectoritem

instance HasMl Breadcrumb

instance HasMl Crumb

instance HasMl Teachtip

instance HasMl Tree

instance HasMl Treeitem

instance HasMl Refresh

instance HasMl Avatar

instance HasMl Pager

instance HasMl Splitview

instance HasMl Splitpane

instance HasMl Splitbody

instance HasMl Titlebar

instance HasMl Scrollbar

instance HasMl Looping

instance HasMl Datepicker

instance HasMl Timepicker

instance HasMl Calendar

instance HasMl Colorpicker

instance HasMl Colheader

instance HasMl Commandbar

instance HasMl Appbarbutton

instance HasMl Appbartoggle

instance HasMl Appbarsep

class HasMt c where
  mt :: P.Float -> Attr c msg
  mt v = prop #{const XTK_PROP_MARGIN_TOP} (VF32 v)

instance HasMt Container

instance HasMt Text

instance HasMt Button

instance HasMt Toggle

instance HasMt Checkbox

instance HasMt Radio

instance HasMt Switch

instance HasMt Slider

instance HasMt Textbox

instance HasMt Scroll

instance HasMt Image

instance HasMt Progress

instance HasMt List

instance HasMt Tab

instance HasMt Card

instance HasMt Divider

instance HasMt Canvas

instance HasMt Password

instance HasMt Number

instance HasMt Link

instance HasMt Repeat

instance HasMt Progressring

instance HasMt Badge

instance HasMt Tooltip

instance HasMt Flyout

instance HasMt Menufly

instance HasMt Dropdown

instance HasMt Split

instance HasMt Combo

instance HasMt Expander

instance HasMt Exphead

instance HasMt Expbody

instance HasMt Infobar

instance HasMt Dialog

instance HasMt Dialogbody

instance HasMt Menubar

instance HasMt Menuitem

instance HasMt Nav

instance HasMt Navitem

instance HasMt Tabs

instance HasMt Tabitem

instance HasMt Listitem

instance HasMt Listbox

instance HasMt Gridview

instance HasMt Repeater

instance HasMt Itemsview

instance HasMt Flip

instance HasMt Pips

instance HasMt Suggest

instance HasMt Togglesplit

instance HasMt Radiogroup

instance HasMt Rating

instance HasMt Selector

instance HasMt Selectoritem

instance HasMt Breadcrumb

instance HasMt Crumb

instance HasMt Teachtip

instance HasMt Tree

instance HasMt Treeitem

instance HasMt Refresh

instance HasMt Avatar

instance HasMt Pager

instance HasMt Splitview

instance HasMt Splitpane

instance HasMt Splitbody

instance HasMt Titlebar

instance HasMt Scrollbar

instance HasMt Looping

instance HasMt Datepicker

instance HasMt Timepicker

instance HasMt Calendar

instance HasMt Colorpicker

instance HasMt Colheader

instance HasMt Commandbar

instance HasMt Appbarbutton

instance HasMt Appbartoggle

instance HasMt Appbarsep

class HasMr c where
  mr :: P.Float -> Attr c msg
  mr v = prop #{const XTK_PROP_MARGIN_RIGHT} (VF32 v)

instance HasMr Container

instance HasMr Text

instance HasMr Button

instance HasMr Toggle

instance HasMr Checkbox

instance HasMr Radio

instance HasMr Switch

instance HasMr Slider

instance HasMr Textbox

instance HasMr Scroll

instance HasMr Image

instance HasMr Progress

instance HasMr List

instance HasMr Tab

instance HasMr Card

instance HasMr Divider

instance HasMr Canvas

instance HasMr Password

instance HasMr Number

instance HasMr Link

instance HasMr Repeat

instance HasMr Progressring

instance HasMr Badge

instance HasMr Tooltip

instance HasMr Flyout

instance HasMr Menufly

instance HasMr Dropdown

instance HasMr Split

instance HasMr Combo

instance HasMr Expander

instance HasMr Exphead

instance HasMr Expbody

instance HasMr Infobar

instance HasMr Dialog

instance HasMr Dialogbody

instance HasMr Menubar

instance HasMr Menuitem

instance HasMr Nav

instance HasMr Navitem

instance HasMr Tabs

instance HasMr Tabitem

instance HasMr Listitem

instance HasMr Listbox

instance HasMr Gridview

instance HasMr Repeater

instance HasMr Itemsview

instance HasMr Flip

instance HasMr Pips

instance HasMr Suggest

instance HasMr Togglesplit

instance HasMr Radiogroup

instance HasMr Rating

instance HasMr Selector

instance HasMr Selectoritem

instance HasMr Breadcrumb

instance HasMr Crumb

instance HasMr Teachtip

instance HasMr Tree

instance HasMr Treeitem

instance HasMr Refresh

instance HasMr Avatar

instance HasMr Pager

instance HasMr Splitview

instance HasMr Splitpane

instance HasMr Splitbody

instance HasMr Titlebar

instance HasMr Scrollbar

instance HasMr Looping

instance HasMr Datepicker

instance HasMr Timepicker

instance HasMr Calendar

instance HasMr Colorpicker

instance HasMr Colheader

instance HasMr Commandbar

instance HasMr Appbarbutton

instance HasMr Appbartoggle

instance HasMr Appbarsep

class HasMb c where
  mb :: P.Float -> Attr c msg
  mb v = prop #{const XTK_PROP_MARGIN_BOTTOM} (VF32 v)

instance HasMb Container

instance HasMb Text

instance HasMb Button

instance HasMb Toggle

instance HasMb Checkbox

instance HasMb Radio

instance HasMb Switch

instance HasMb Slider

instance HasMb Textbox

instance HasMb Scroll

instance HasMb Image

instance HasMb Progress

instance HasMb List

instance HasMb Tab

instance HasMb Card

instance HasMb Divider

instance HasMb Canvas

instance HasMb Password

instance HasMb Number

instance HasMb Link

instance HasMb Repeat

instance HasMb Progressring

instance HasMb Badge

instance HasMb Tooltip

instance HasMb Flyout

instance HasMb Menufly

instance HasMb Dropdown

instance HasMb Split

instance HasMb Combo

instance HasMb Expander

instance HasMb Exphead

instance HasMb Expbody

instance HasMb Infobar

instance HasMb Dialog

instance HasMb Dialogbody

instance HasMb Menubar

instance HasMb Menuitem

instance HasMb Nav

instance HasMb Navitem

instance HasMb Tabs

instance HasMb Tabitem

instance HasMb Listitem

instance HasMb Listbox

instance HasMb Gridview

instance HasMb Repeater

instance HasMb Itemsview

instance HasMb Flip

instance HasMb Pips

instance HasMb Suggest

instance HasMb Togglesplit

instance HasMb Radiogroup

instance HasMb Rating

instance HasMb Selector

instance HasMb Selectoritem

instance HasMb Breadcrumb

instance HasMb Crumb

instance HasMb Teachtip

instance HasMb Tree

instance HasMb Treeitem

instance HasMb Refresh

instance HasMb Avatar

instance HasMb Pager

instance HasMb Splitview

instance HasMb Splitpane

instance HasMb Splitbody

instance HasMb Titlebar

instance HasMb Scrollbar

instance HasMb Looping

instance HasMb Datepicker

instance HasMb Timepicker

instance HasMb Calendar

instance HasMb Colorpicker

instance HasMb Colheader

instance HasMb Commandbar

instance HasMb Appbarbutton

instance HasMb Appbartoggle

instance HasMb Appbarsep

class HasTip c where
  tip :: T.Text -> Attr c msg
  tip v = prop #{const XTK_PROP_TOOLTIP} (VStr v)

instance HasTip Container

instance HasTip Text

instance HasTip Button

instance HasTip Toggle

instance HasTip Checkbox

instance HasTip Radio

instance HasTip Switch

instance HasTip Slider

instance HasTip Textbox

instance HasTip Scroll

instance HasTip Image

instance HasTip Progress

instance HasTip List

instance HasTip Tab

instance HasTip Card

instance HasTip Divider

instance HasTip Canvas

instance HasTip Password

instance HasTip Number

instance HasTip Link

instance HasTip Repeat

instance HasTip Progressring

instance HasTip Badge

instance HasTip Tooltip

instance HasTip Flyout

instance HasTip Menufly

instance HasTip Dropdown

instance HasTip Split

instance HasTip Combo

instance HasTip Expander

instance HasTip Exphead

instance HasTip Expbody

instance HasTip Infobar

instance HasTip Dialog

instance HasTip Dialogbody

instance HasTip Menubar

instance HasTip Menuitem

instance HasTip Nav

instance HasTip Navitem

instance HasTip Tabs

instance HasTip Tabitem

instance HasTip Listitem

instance HasTip Listbox

instance HasTip Gridview

instance HasTip Repeater

instance HasTip Itemsview

instance HasTip Flip

instance HasTip Pips

instance HasTip Suggest

instance HasTip Togglesplit

instance HasTip Radiogroup

instance HasTip Rating

instance HasTip Selector

instance HasTip Selectoritem

instance HasTip Breadcrumb

instance HasTip Crumb

instance HasTip Teachtip

instance HasTip Tree

instance HasTip Treeitem

instance HasTip Refresh

instance HasTip Avatar

instance HasTip Pager

instance HasTip Splitview

instance HasTip Splitpane

instance HasTip Splitbody

instance HasTip Titlebar

instance HasTip Scrollbar

instance HasTip Looping

instance HasTip Datepicker

instance HasTip Timepicker

instance HasTip Calendar

instance HasTip Colorpicker

instance HasTip Colheader

instance HasTip Colitem

instance HasTip Commandbar

instance HasTip Appbarbutton

instance HasTip Appbartoggle

instance HasTip Appbarsep

class HasDir c where
  dir :: StackDirection -> Attr c msg
  dir v = prop #{const XTK_PROP_ORIENTATION} (VEnum (toC v))

instance HasDir Container

instance HasDir Slider

instance HasDir Scroll

instance HasDir Card

instance HasDir Expbody

instance HasDir Dialogbody

instance HasDir Flip

instance HasDir Pips

instance HasDir Splitview

instance HasDir Splitpane

instance HasDir Splitbody

instance HasDir Scrollbar

class HasItems c where
  items :: FlexAlign -> Attr c msg
  items v = prop #{const XTK_PROP_ALIGN_ITEMS} (VEnum (toC v))

instance HasItems Container

instance HasItems Scroll

instance HasItems Card

instance HasItems Expbody

instance HasItems Dialogbody

instance HasItems Splitpane

instance HasItems Splitbody

class HasJustify c where
  justify :: FlexJustify -> Attr c msg
  justify v = prop #{const XTK_PROP_JUSTIFY_CONTENT} (VEnum (toC v))

instance HasJustify Container

instance HasJustify Scroll

instance HasJustify Card

instance HasJustify Expbody

instance HasJustify Dialogbody

instance HasJustify Splitpane

instance HasJustify Splitbody

class HasGap c where
  gap :: P.Float -> Attr c msg
  gap v = prop #{const XTK_PROP_GAP} (VF32 v)

instance HasGap Container

instance HasGap Scroll

instance HasGap Card

instance HasGap Expbody

instance HasGap Dialogbody

instance HasGap Splitview

instance HasGap Splitpane

instance HasGap Splitbody

class HasPl c where
  pl :: P.Float -> Attr c msg
  pl v = prop #{const XTK_PROP_PADDING_LEFT} (VF32 v)

instance HasPl Container

instance HasPl Scroll

instance HasPl Progress

instance HasPl Card

instance HasPl Expbody

instance HasPl Dialogbody

instance HasPl Splitview

instance HasPl Splitpane

instance HasPl Splitbody

class HasPt c where
  pt :: P.Float -> Attr c msg
  pt v = prop #{const XTK_PROP_PADDING_TOP} (VF32 v)

instance HasPt Container

instance HasPt Scroll

instance HasPt Progress

instance HasPt Card

instance HasPt Expbody

instance HasPt Dialogbody

instance HasPt Splitview

instance HasPt Splitpane

instance HasPt Splitbody

class HasPr c where
  pr :: P.Float -> Attr c msg
  pr v = prop #{const XTK_PROP_PADDING_RIGHT} (VF32 v)

instance HasPr Container

instance HasPr Scroll

instance HasPr Progress

instance HasPr Card

instance HasPr Expbody

instance HasPr Dialogbody

instance HasPr Splitview

instance HasPr Splitpane

instance HasPr Splitbody

class HasPb c where
  pb :: P.Float -> Attr c msg
  pb v = prop #{const XTK_PROP_PADDING_BOTTOM} (VF32 v)

instance HasPb Container

instance HasPb Scroll

instance HasPb Progress

instance HasPb Card

instance HasPb Expbody

instance HasPb Dialogbody

instance HasPb Splitview

instance HasPb Splitpane

instance HasPb Splitbody

class HasFill c where
  fill :: P.Bool -> Attr c msg
  fill v = prop #{const XTK_PROP_FILL} (VBool v)

instance HasFill Container

instance HasFill Scroll

instance HasFill Card

instance HasFill Expbody

instance HasFill Dialogbody

instance HasFill Splitview

instance HasFill Splitpane

instance HasFill Splitbody

class HasFitw c where
  fitw :: P.Bool -> Attr c msg
  fitw v = prop #{const XTK_PROP_FIT_WIDTH} (VBool v)

instance HasFitw Container

instance HasFitw Scroll

instance HasFitw Card

instance HasFitw Expbody

instance HasFitw Dialogbody

instance HasFitw Splitpane

instance HasFitw Splitbody

class HasFith c where
  fith :: P.Bool -> Attr c msg
  fith v = prop #{const XTK_PROP_FIT_HEIGHT} (VBool v)

instance HasFith Container

instance HasFith Scroll

instance HasFith Card

instance HasFith Expbody

instance HasFith Dialogbody

instance HasFith Splitpane

instance HasFith Splitbody

class HasWrap c where
  wrap :: FlexWrap -> Attr c msg
  wrap v = prop #{const XTK_PROP_WRAP} (VEnum (toC v))

instance HasWrap Container

instance HasWrap Scroll

instance HasWrap Card

instance HasWrap Expbody

instance HasWrap Dialogbody

instance HasWrap Splitpane

instance HasWrap Splitbody

class HasText c where
  text :: T.Text -> Attr c msg
  text v = prop #{const XTK_PROP_TEXT} (VStr v)

instance HasText Text

instance HasText Button

instance HasText Toggle

instance HasText Checkbox

instance HasText Radio

instance HasText Switch

instance HasText Textbox

instance HasText Password

instance HasText Link

instance HasText Repeat

instance HasText Tooltip

instance HasText Flyout

instance HasText Menufly

instance HasText Dropdown

instance HasText Split

instance HasText Combo

instance HasText Expander

instance HasText Exphead

instance HasText Infobar

instance HasText Dialog

instance HasText Menuitem

instance HasText Navitem

instance HasText Tabitem

instance HasText Listitem

instance HasText Suggest

instance HasText Togglesplit

instance HasText Rating

instance HasText Selectoritem

instance HasText Crumb

instance HasText Teachtip

instance HasText Treeitem

instance HasText Avatar

instance HasText Titlebar

instance HasText Colitem

instance HasText Appbarbutton

instance HasText Appbartoggle

class HasFontsize c where
  fontsize :: P.Float -> Attr c msg
  fontsize v = prop #{const XTK_PROP_FONT_SIZE} (VF32 v)

instance HasFontsize Text

class HasFontweight c where
  fontweight :: FontWeight -> Attr c msg
  fontweight v = prop #{const XTK_PROP_FONT_WEIGHT} (VEnum (toC v))

instance HasFontweight Text

class HasTextalign c where
  textalign :: TextAlign -> Attr c msg
  textalign v = prop #{const XTK_PROP_TEXT_ALIGN} (VEnum (toC v))

instance HasTextalign Text

class HasFg c where
  fg :: Word32 -> Attr c msg
  fg v = prop #{const XTK_PROP_FOREGROUND} (VColor v)

instance HasFg Text

class HasMaxlines c where
  maxlines :: Int32 -> Attr c msg
  maxlines v = prop #{const XTK_PROP_MAX_LINES} (VI32 v)

instance HasMaxlines Text

class HasTrim c where
  trim :: TextTrim -> Attr c msg
  trim v = prop #{const XTK_PROP_TEXT_TRIM} (VEnum (toC v))

instance HasTrim Text

class HasTextwrap c where
  textwrap :: P.Bool -> Attr c msg
  textwrap v = prop #{const XTK_PROP_TEXT_WRAP} (VBool v)

instance HasTextwrap Text

class HasSelectable c where
  selectable :: P.Bool -> Attr c msg
  selectable v = prop #{const XTK_PROP_SELECTABLE} (VBool v)

instance HasSelectable Text

class HasEnabled c where
  enabled :: P.Bool -> Attr c msg
  enabled v = prop #{const XTK_PROP_ENABLED} (VBool v)

instance HasEnabled Button

instance HasEnabled Toggle

instance HasEnabled Checkbox

instance HasEnabled Radio

instance HasEnabled Switch

instance HasEnabled Slider

instance HasEnabled Textbox

instance HasEnabled List

instance HasEnabled Password

instance HasEnabled Number

instance HasEnabled Link

instance HasEnabled Repeat

instance HasEnabled Tooltip

instance HasEnabled Flyout

instance HasEnabled Menufly

instance HasEnabled Dropdown

instance HasEnabled Split

instance HasEnabled Combo

instance HasEnabled Exphead

instance HasEnabled Menuitem

instance HasEnabled Nav

instance HasEnabled Navitem

instance HasEnabled Tabs

instance HasEnabled Tabitem

instance HasEnabled Listitem

instance HasEnabled Listbox

instance HasEnabled Gridview

instance HasEnabled Repeater

instance HasEnabled Itemsview

instance HasEnabled Suggest

instance HasEnabled Togglesplit

instance HasEnabled Radiogroup

instance HasEnabled Selector

instance HasEnabled Selectoritem

instance HasEnabled Breadcrumb

instance HasEnabled Crumb

instance HasEnabled Tree

instance HasEnabled Treeitem

instance HasEnabled Scrollbar

instance HasEnabled Looping

instance HasEnabled Datepicker

instance HasEnabled Timepicker

instance HasEnabled Calendar

instance HasEnabled Colorpicker

instance HasEnabled Colitem

instance HasEnabled Commandbar

instance HasEnabled Appbarbutton

instance HasEnabled Appbartoggle

class HasIcon c where
  icon :: T.Text -> Attr c msg
  icon v = prop #{const XTK_PROP_ICON} (VStr v)

instance HasIcon Button

instance HasIcon Repeat

instance HasIcon Badge

instance HasIcon Dropdown

instance HasIcon Split

instance HasIcon Exphead

instance HasIcon Menuitem

instance HasIcon Navitem

instance HasIcon Tabitem

instance HasIcon Listitem

instance HasIcon Suggest

instance HasIcon Selectoritem

instance HasIcon Crumb

instance HasIcon Teachtip

instance HasIcon Treeitem

instance HasIcon Titlebar

instance HasIcon Appbarbutton

instance HasIcon Appbartoggle

class HasStyle c where
  style :: ButtonStyle -> Attr c msg
  style v = prop #{const XTK_PROP_BUTTON_STYLE} (VEnum (toC v))

instance HasStyle Button

instance HasStyle Repeat

instance HasStyle Dropdown

instance HasStyle Split

class HasOnInvoke c where
  onInvoke :: msg -> Attr c msg
  onInvoke m = on #{const XTK_EVENT_INVOKE} (HValue m)

instance HasOnInvoke Button

instance HasOnInvoke List

instance HasOnInvoke Link

instance HasOnInvoke Repeat

instance HasOnInvoke Dropdown

instance HasOnInvoke Split

instance HasOnInvoke Combo

instance HasOnInvoke Dialog

instance HasOnInvoke Menuitem

instance HasOnInvoke Nav

instance HasOnInvoke Navitem

instance HasOnInvoke Tabs

instance HasOnInvoke Tabitem

instance HasOnInvoke Listitem

instance HasOnInvoke Listbox

instance HasOnInvoke Gridview

instance HasOnInvoke Itemsview

instance HasOnInvoke Flip

instance HasOnInvoke Pips

instance HasOnInvoke Togglesplit

instance HasOnInvoke Radiogroup

instance HasOnInvoke Selector

instance HasOnInvoke Selectoritem

instance HasOnInvoke Breadcrumb

instance HasOnInvoke Crumb

instance HasOnInvoke Teachtip

instance HasOnInvoke Tree

instance HasOnInvoke Treeitem

instance HasOnInvoke Pager

instance HasOnInvoke Titlebar

instance HasOnInvoke Looping

instance HasOnInvoke Colitem

instance HasOnInvoke Appbarbutton

class HasChecked c where
  checked :: P.Bool -> Attr c msg
  checked v = prop #{const XTK_PROP_CHECKED} (VBool v)

instance HasChecked Toggle

instance HasChecked Checkbox

instance HasChecked Radio

instance HasChecked Switch

instance HasChecked Togglesplit

instance HasChecked Appbartoggle

class HasOnChange c where
  type OnChangeV c
  onChange :: (OnChangeV c -> msg) -> Attr c msg

instance HasOnChange Toggle where
  type OnChangeV Toggle = P.Bool
  onChange f = on #{const XTK_EVENT_CHANGE_BOOL} (HBool f)

instance HasOnChange Checkbox where
  type OnChangeV Checkbox = P.Bool
  onChange f = on #{const XTK_EVENT_CHANGE_BOOL} (HBool f)

instance HasOnChange Radio where
  type OnChangeV Radio = P.Bool
  onChange f = on #{const XTK_EVENT_CHANGE_BOOL} (HBool f)

instance HasOnChange Switch where
  type OnChangeV Switch = P.Bool
  onChange f = on #{const XTK_EVENT_CHANGE_BOOL} (HBool f)

instance HasOnChange Slider where
  type OnChangeV Slider = P.Float
  onChange f = on #{const XTK_EVENT_CHANGE_F32} (HF32 f)

instance HasOnChange Textbox where
  type OnChangeV Textbox = T.Text
  onChange f = on #{const XTK_EVENT_CHANGE_STRING} (HStr f)

instance HasOnChange Password where
  type OnChangeV Password = T.Text
  onChange f = on #{const XTK_EVENT_CHANGE_STRING} (HStr f)

instance HasOnChange Number where
  type OnChangeV Number = P.Double
  onChange f = on #{const XTK_EVENT_CHANGE_F64} (HF64 f)

instance HasOnChange Suggest where
  type OnChangeV Suggest = T.Text
  onChange f = on #{const XTK_EVENT_CHANGE_STRING} (HStr f)

instance HasOnChange Togglesplit where
  type OnChangeV Togglesplit = P.Bool
  onChange f = on #{const XTK_EVENT_CHANGE_BOOL} (HBool f)

instance HasOnChange Scrollbar where
  type OnChangeV Scrollbar = P.Double
  onChange f = on #{const XTK_EVENT_CHANGE_F64} (HF64 f)

instance HasOnChange Appbartoggle where
  type OnChangeV Appbartoggle = P.Bool
  onChange f = on #{const XTK_EVENT_CHANGE_BOOL} (HBool f)

class HasIndeterminate c where
  indeterminate :: P.Bool -> Attr c msg
  indeterminate v = prop #{const XTK_PROP_INDETERMINATE} (VBool v)

instance HasIndeterminate Checkbox

instance HasIndeterminate Progress

instance HasIndeterminate Progressring

class HasThreestate c where
  threestate :: P.Bool -> Attr c msg
  threestate v = prop #{const XTK_PROP_IS_THREE_STATE} (VBool v)

instance HasThreestate Checkbox

class HasOnState c where
  onState :: (Int32 -> msg) -> Attr c msg
  onState f = on #{const XTK_EVENT_CHANGE_I32} (HI32 f)

instance HasOnState Checkbox

class HasMin c where
  type MinV c
  min :: MinV c -> Attr c msg

instance HasMin Slider where
  type MinV Slider = P.Float
  min v = prop #{const XTK_PROP_MIN_F32} (VF32 v)

instance HasMin Progress where
  type MinV Progress = P.Float
  min v = prop #{const XTK_PROP_MIN_F32} (VF32 v)

instance HasMin Number where
  type MinV Number = P.Double
  min v = prop #{const XTK_PROP_MIN_F64} (VF64 v)

instance HasMin Progressring where
  type MinV Progressring = P.Float
  min v = prop #{const XTK_PROP_MIN_F32} (VF32 v)

instance HasMin Scrollbar where
  type MinV Scrollbar = P.Double
  min v = prop #{const XTK_PROP_MIN_F64} (VF64 v)

class HasMax c where
  type MaxV c
  max :: MaxV c -> Attr c msg

instance HasMax Slider where
  type MaxV Slider = P.Float
  max v = prop #{const XTK_PROP_MAX_F32} (VF32 v)

instance HasMax Progress where
  type MaxV Progress = P.Float
  max v = prop #{const XTK_PROP_MAX_F32} (VF32 v)

instance HasMax Number where
  type MaxV Number = P.Double
  max v = prop #{const XTK_PROP_MAX_F64} (VF64 v)

instance HasMax Progressring where
  type MaxV Progressring = P.Float
  max v = prop #{const XTK_PROP_MAX_F32} (VF32 v)

instance HasMax Rating where
  type MaxV Rating = P.Double
  max v = prop #{const XTK_PROP_MAX_F64} (VF64 v)

instance HasMax Scrollbar where
  type MaxV Scrollbar = P.Double
  max v = prop #{const XTK_PROP_MAX_F64} (VF64 v)

class HasValue c where
  type ValueV c
  value :: ValueV c -> Attr c msg

instance HasValue Slider where
  type ValueV Slider = P.Float
  value v = prop #{const XTK_PROP_VALUE_F32} (VF32 v)

instance HasValue Progress where
  type ValueV Progress = P.Float
  value v = prop #{const XTK_PROP_VALUE_F32} (VF32 v)

instance HasValue Number where
  type ValueV Number = P.Double
  value v = prop #{const XTK_PROP_VALUE_F64} (VF64 v)

instance HasValue Progressring where
  type ValueV Progressring = P.Float
  value v = prop #{const XTK_PROP_VALUE_F32} (VF32 v)

instance HasValue Badge where
  type ValueV Badge = Int32
  value v = prop #{const XTK_PROP_BADGE_VALUE} (VI32 v)

instance HasValue Rating where
  type ValueV Rating = P.Double
  value v = prop #{const XTK_PROP_VALUE_F64} (VF64 v)

instance HasValue Scrollbar where
  type ValueV Scrollbar = P.Double
  value v = prop #{const XTK_PROP_VALUE_F64} (VF64 v)

class HasStep c where
  type StepV c
  step :: StepV c -> Attr c msg

instance HasStep Slider where
  type StepV Slider = P.Float
  step v = prop #{const XTK_PROP_STEP_F32} (VF32 v)

instance HasStep Number where
  type StepV Number = P.Double
  step v = prop #{const XTK_PROP_STEP_F64} (VF64 v)

instance HasStep Timepicker where
  type StepV Timepicker = Int32
  step v = prop #{const XTK_PROP_MINUTE_INCREMENT} (VI32 v)

class HasTick c where
  tick :: P.Float -> Attr c msg
  tick v = prop #{const XTK_PROP_TICK_FREQUENCY} (VF32 v)

instance HasTick Slider

class HasTickplace c where
  tickplace :: TickPlacement -> Attr c msg
  tickplace v = prop #{const XTK_PROP_TICK_PLACEMENT} (VEnum (toC v))

instance HasTickplace Slider

class HasSnapsto c where
  snapsto :: SliderSnap -> Attr c msg
  snapsto v = prop #{const XTK_PROP_SLIDER_SNAPS_TO} (VEnum (toC v))

instance HasSnapsto Slider

class HasSmallchange c where
  smallchange :: P.Float -> Attr c msg
  smallchange v = prop #{const XTK_PROP_SMALL_CHANGE} (VF32 v)

instance HasSmallchange Slider

instance HasSmallchange Scrollbar

class HasLargechange c where
  largechange :: P.Float -> Attr c msg
  largechange v = prop #{const XTK_PROP_LARGE_CHANGE} (VF32 v)

instance HasLargechange Slider

instance HasLargechange Scrollbar

class HasRange c where
  range :: P.Bool -> Attr c msg
  range v = prop #{const XTK_PROP_IS_RANGE} (VBool v)

instance HasRange Slider

class HasRangestart c where
  rangestart :: P.Float -> Attr c msg
  rangestart v = prop #{const XTK_PROP_RANGE_START} (VF32 v)

instance HasRangestart Slider

class HasRangeend c where
  rangeend :: P.Float -> Attr c msg
  rangeend v = prop #{const XTK_PROP_RANGE_END} (VF32 v)

instance HasRangeend Slider

class HasOnRange c where
  onRange :: (RangeEvent -> msg) -> Attr c msg
  onRange f = on #{const XTK_EVENT_CHANGE_RANGE} (HRange f)

instance HasOnRange Slider

class HasPlaceholder c where
  type PlaceholderV c
  placeholder :: PlaceholderV c -> Attr c msg

instance HasPlaceholder Textbox where
  type PlaceholderV Textbox = T.Text
  placeholder v = prop #{const XTK_PROP_PLACEHOLDER} (VStr v)

instance HasPlaceholder Password where
  type PlaceholderV Password = T.Text
  placeholder v = prop #{const XTK_PROP_PLACEHOLDER} (VStr v)

instance HasPlaceholder Combo where
  type PlaceholderV Combo = T.Text
  placeholder v = prop #{const XTK_PROP_PLACEHOLDER} (VStr v)

instance HasPlaceholder Suggest where
  type PlaceholderV Suggest = T.Text
  placeholder v = prop #{const XTK_PROP_PLACEHOLDER} (VStr v)

instance HasPlaceholder Rating where
  type PlaceholderV Rating = P.Double
  placeholder v = prop #{const XTK_PROP_PLACEHOLDER_F64} (VF64 v)

class HasMultiline c where
  multiline :: P.Bool -> Attr c msg
  multiline v = prop #{const XTK_PROP_MULTILINE} (VBool v)

instance HasMultiline Textbox

class HasReadonly c where
  readonly :: P.Bool -> Attr c msg
  readonly v = prop #{const XTK_PROP_READ_ONLY} (VBool v)

instance HasReadonly Textbox

instance HasReadonly Rating

class HasX c where
  x :: P.Float -> Attr c msg
  x v = prop #{const XTK_PROP_SCROLL_X} (VF32 v)

instance HasX Scroll

class HasY c where
  y :: P.Float -> Attr c msg
  y v = prop #{const XTK_PROP_SCROLL_Y} (VF32 v)

instance HasY Scroll

class HasOnScroll c where
  onScroll :: (ScrollPos -> msg) -> Attr c msg
  onScroll f = on #{const XTK_EVENT_SCROLL} (HScroll f)

instance HasOnScroll Scroll

class HasSrc c where
  src :: Word64 -> Attr c msg
  src v = prop #{const XTK_PROP_IMAGE_SOURCE} (VRes v)

instance HasSrc Image

instance HasSrc Avatar

class HasFit c where
  fit :: ImageStretch -> Attr c msg
  fit v = prop #{const XTK_PROP_IMAGE_STRETCH} (VEnum (toC v))

instance HasFit Image

class HasState c where
  state :: ProgressState -> Attr c msg
  state v = prop #{const XTK_PROP_PROGRESS_STATE} (VEnum (toC v))

instance HasState Progress

instance HasState Progressring

class HasBorder_width c where
  border_width :: P.Float -> Attr c msg
  border_width v = prop #{const XTK_PROP_PROGRESS_BORDER_WIDTH} (VF32 v)

instance HasBorder_width Progress

class HasSel c where
  sel :: Int32 -> Attr c msg
  sel v = prop #{const XTK_PROP_SELECTED_INDEX} (VI32 v)

instance HasSel List

instance HasSel Combo

instance HasSel Nav

instance HasSel Tabs

instance HasSel Listbox

instance HasSel Gridview

instance HasSel Repeater

instance HasSel Itemsview

instance HasSel Flip

instance HasSel Pips

instance HasSel Radiogroup

instance HasSel Selector

instance HasSel Breadcrumb

instance HasSel Tree

instance HasSel Pager

instance HasSel Looping

class HasNitem c where
  nitem :: Int32 -> Attr c msg
  nitem v = prop #{const XTK_PROP_ITEM_COUNT} (VI32 v)

instance HasNitem List

instance HasNitem Tabs

instance HasNitem Listbox

instance HasNitem Gridview

instance HasNitem Repeater

instance HasNitem Itemsview

instance HasNitem Pips

instance HasNitem Radiogroup

instance HasNitem Selector

instance HasNitem Breadcrumb

instance HasNitem Tree

instance HasNitem Pager

instance HasNitem Looping

class HasItemh c where
  itemh :: P.Float -> Attr c msg
  itemh v = prop #{const XTK_PROP_ITEM_HEIGHT} (VF32 v)

instance HasItemh List

instance HasItemh Listbox

instance HasItemh Gridview

instance HasItemh Repeater

instance HasItemh Itemsview

instance HasItemh Tree

instance HasItemh Looping

class HasItemw c where
  itemw :: P.Float -> Attr c msg
  itemw v = prop #{const XTK_PROP_ITEM_WIDTH} (VF32 v)

instance HasItemw List

instance HasItemw Listbox

instance HasItemw Gridview

instance HasItemw Repeater

instance HasItemw Itemsview

instance HasItemw Looping

class HasNcol c where
  ncol :: Int32 -> Attr c msg
  ncol v = prop #{const XTK_PROP_COLUMN_COUNT} (VI32 v)

instance HasNcol List

instance HasNcol Listbox

instance HasNcol Gridview

instance HasNcol Repeater

instance HasNcol Itemsview

instance HasNcol Radiogroup

class HasMode c where
  type ModeV c
  mode :: ModeV c -> Attr c msg

instance HasMode List where
  type ModeV List = ListSelMode
  mode v = prop #{const XTK_PROP_SELECTION_MODE} (VEnum (toC v))

instance HasMode Listbox where
  type ModeV Listbox = ListSelMode
  mode v = prop #{const XTK_PROP_SELECTION_MODE} (VEnum (toC v))

instance HasMode Gridview where
  type ModeV Gridview = ListSelMode
  mode v = prop #{const XTK_PROP_SELECTION_MODE} (VEnum (toC v))

instance HasMode Repeater where
  type ModeV Repeater = ListSelMode
  mode v = prop #{const XTK_PROP_SELECTION_MODE} (VEnum (toC v))

instance HasMode Itemsview where
  type ModeV Itemsview = ListSelMode
  mode v = prop #{const XTK_PROP_SELECTION_MODE} (VEnum (toC v))

instance HasMode Calendar where
  type ModeV Calendar = CalendarMode
  mode v = prop #{const XTK_PROP_SELECTION_MODE} (VEnum (toC v))

instance HasMode Commandbar where
  type ModeV Commandbar = AppBarMode
  mode v = prop #{const XTK_PROP_CLOSED_DISPLAY_MODE} (VEnum (toC v))

class HasFirst c where
  type FirstV c
  first :: FirstV c -> Attr c msg

instance HasFirst List where
  type FirstV List = Int32
  first v = prop #{const XTK_PROP_REALIZED_FIRST} (VI32 v)

instance HasFirst Listbox where
  type FirstV Listbox = Int32
  first v = prop #{const XTK_PROP_REALIZED_FIRST} (VI32 v)

instance HasFirst Gridview where
  type FirstV Gridview = Int32
  first v = prop #{const XTK_PROP_REALIZED_FIRST} (VI32 v)

instance HasFirst Repeater where
  type FirstV Repeater = Int32
  first v = prop #{const XTK_PROP_REALIZED_FIRST} (VI32 v)

instance HasFirst Itemsview where
  type FirstV Itemsview = Int32
  first v = prop #{const XTK_PROP_REALIZED_FIRST} (VI32 v)

instance HasFirst Pager where
  type FirstV Pager = PagerButtonVis
  first v = prop #{const XTK_PROP_FIRST_BUTTON} (VEnum (toC v))

class HasOnSelect c where
  type OnSelectV c
  onSelect :: (OnSelectV c -> msg) -> Attr c msg

instance HasOnSelect List where
  type OnSelectV List = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Combo where
  type OnSelectV Combo = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Nav where
  type OnSelectV Nav = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Tabs where
  type OnSelectV Tabs = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Listbox where
  type OnSelectV Listbox = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Gridview where
  type OnSelectV Gridview = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Itemsview where
  type OnSelectV Itemsview = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Flip where
  type OnSelectV Flip = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Pips where
  type OnSelectV Pips = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Suggest where
  type OnSelectV Suggest = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Radiogroup where
  type OnSelectV Radiogroup = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Selector where
  type OnSelectV Selector = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Breadcrumb where
  type OnSelectV Breadcrumb = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Tree where
  type OnSelectV Tree = IndexBoolEvent
  onSelect f = on #{const XTK_EVENT_TREE_SELECT} (HIndexBool f)

instance HasOnSelect Treeitem where
  type OnSelectV Treeitem = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Pager where
  type OnSelectV Pager = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

instance HasOnSelect Looping where
  type OnSelectV Looping = Int32
  onSelect f = on #{const XTK_EVENT_SELECT} (HI32 f)

class HasHidespin c where
  hidespin :: P.Bool -> Attr c msg
  hidespin v = prop #{const XTK_PROP_HIDE_SPIN} (VBool v)

instance HasHidespin Number

class HasUrl c where
  url :: T.Text -> Attr c msg
  url v = prop #{const XTK_PROP_URL} (VStr v)

instance HasUrl Link

class HasActive c where
  active :: P.Bool -> Attr c msg
  active v = prop #{const XTK_PROP_PROGRESS_ACTIVE} (VBool v)

instance HasActive Progressring

class HasBadgemode c where
  badgemode :: BadgeMode -> Attr c msg
  badgemode v = prop #{const XTK_PROP_BADGE_MODE} (VEnum (toC v))

instance HasBadgemode Badge

class HasOpen c where
  open :: P.Bool -> Attr c msg
  open v = prop #{const XTK_PROP_OPEN} (VBool v)

instance HasOpen Tooltip

instance HasOpen Flyout

instance HasOpen Menufly

instance HasOpen Dialog

instance HasOpen Teachtip

instance HasOpen Splitview

instance HasOpen Commandbar

class HasEditable c where
  editable :: P.Bool -> Attr c msg
  editable v = prop #{const XTK_PROP_IS_EDITABLE} (VBool v)

instance HasEditable Combo

class HasOnSubmit c where
  onSubmit :: (T.Text -> msg) -> Attr c msg
  onSubmit f = on #{const XTK_EVENT_SUBMIT_STRING} (HStr f)

instance HasOnSubmit Combo

class HasExpanded c where
  expanded :: P.Bool -> Attr c msg
  expanded v = prop #{const XTK_PROP_EXPANDED} (VBool v)

instance HasExpanded Expander

instance HasExpanded Exphead

instance HasExpanded Menuitem

instance HasExpanded Navitem

instance HasExpanded Tabitem

instance HasExpanded Listitem

instance HasExpanded Selectoritem

instance HasExpanded Crumb

instance HasExpanded Treeitem

class HasContenth c where
  contenth :: P.Float -> Attr c msg
  contenth v = prop #{const XTK_PROP_CONTENT_HEIGHT} (VF32 v)

instance HasContenth Expander

instance HasContenth Dialog

class HasOnToggle c where
  onToggle :: (P.Bool -> msg) -> Attr c msg
  onToggle f = on #{const XTK_EVENT_TOGGLE} (HBool f)

instance HasOnToggle Expander

instance HasOnToggle Titlebar

class HasSelected c where
  selected :: P.Bool -> Attr c msg
  selected v = prop #{const XTK_PROP_SELECTED} (VBool v)

instance HasSelected Exphead

instance HasSelected Menuitem

instance HasSelected Navitem

instance HasSelected Tabitem

instance HasSelected Listitem

instance HasSelected Selectoritem

instance HasSelected Crumb

instance HasSelected Treeitem

class HasMessage c where
  message :: T.Text -> Attr c msg
  message v = prop #{const XTK_PROP_MESSAGE} (VStr v)

instance HasMessage Infobar

class HasSeverity c where
  severity :: InfoBarSeverity -> Attr c msg
  severity v = prop #{const XTK_PROP_SEVERITY} (VEnum (toC v))

instance HasSeverity Infobar

class HasClosable c where
  closable :: P.Bool -> Attr c msg
  closable v = prop #{const XTK_PROP_CLOSABLE} (VBool v)

instance HasClosable Infobar

class HasOnClose c where
  onClose :: (Int32 -> msg) -> Attr c msg
  onClose f = on #{const XTK_EVENT_CLOSE} (HI32 f)

instance HasOnClose Infobar

instance HasOnClose Dialog

instance HasOnClose Tabs

instance HasOnClose Teachtip

class HasPrimary c where
  primary :: T.Text -> Attr c msg
  primary v = prop #{const XTK_PROP_PRIMARY_TEXT} (VStr v)

instance HasPrimary Dialog

class HasSecondary c where
  type SecondaryV c
  secondary :: SecondaryV c -> Attr c msg

instance HasSecondary Dialog where
  type SecondaryV Dialog = T.Text
  secondary v = prop #{const XTK_PROP_SECONDARY_TEXT} (VStr v)

instance HasSecondary Appbarbutton where
  type SecondaryV Appbarbutton = P.Bool
  secondary v = prop #{const XTK_PROP_SECONDARY} (VBool v)

instance HasSecondary Appbartoggle where
  type SecondaryV Appbartoggle = P.Bool
  secondary v = prop #{const XTK_PROP_SECONDARY} (VBool v)

instance HasSecondary Appbarsep where
  type SecondaryV Appbarsep = P.Bool
  secondary v = prop #{const XTK_PROP_SECONDARY} (VBool v)

class HasClose c where
  close :: T.Text -> Attr c msg
  close v = prop #{const XTK_PROP_CLOSE_TEXT} (VStr v)

instance HasClose Dialog

instance HasClose Teachtip

class HasInvoked c where
  invoked :: P.Bool -> Attr c msg
  invoked v = prop #{const XTK_PROP_ITEM_INVOKED_ENABLED} (VBool v)

instance HasInvoked Itemsview

class HasMaxvisible c where
  maxvisible :: Int32 -> Attr c msg
  maxvisible v = prop #{const XTK_PROP_MAX_VISIBLE} (VI32 v)

instance HasMaxvisible Pips

class HasNav c where
  nav :: PipsNavVis -> Attr c msg
  nav v = prop #{const XTK_PROP_NAV_VISIBILITY} (VEnum (toC v))

instance HasNav Pips

class HasOnQuery c where
  onQuery :: (QueryEvent -> msg) -> Attr c msg
  onQuery f = on #{const XTK_EVENT_QUERY} (HQuery f)

instance HasOnQuery Suggest

class HasInitial c where
  initial :: Int32 -> Attr c msg
  initial v = prop #{const XTK_PROP_INITIAL_VALUE} (VI32 v)

instance HasInitial Rating

class HasClear c where
  clear :: P.Bool -> Attr c msg
  clear v = prop #{const XTK_PROP_CLEAR_ENABLED} (VBool v)

instance HasClear Rating

class HasOnRating c where
  onRating :: (RatingEvent -> msg) -> Attr c msg
  onRating f = on #{const XTK_EVENT_RATING_CHANGED} (HRating f)

instance HasOnRating Rating

class HasSubtitle c where
  subtitle :: T.Text -> Attr c msg
  subtitle v = prop #{const XTK_PROP_SUBTITLE} (VStr v)

instance HasSubtitle Teachtip

instance HasSubtitle Titlebar

class HasAction c where
  action :: T.Text -> Attr c msg
  action v = prop #{const XTK_PROP_ACTION_TEXT} (VStr v)

instance HasAction Teachtip

class HasActionaccent c where
  actionaccent :: P.Bool -> Attr c msg
  actionaccent v = prop #{const XTK_PROP_ACTION_ACCENT} (VBool v)

instance HasActionaccent Teachtip

class HasPlacement c where
  type PlacementV c
  placement :: PlacementV c -> Attr c msg

instance HasPlacement Teachtip where
  type PlacementV Teachtip = TeachingTipPlacement
  placement v = prop #{const XTK_PROP_PLACEMENT} (VEnum (toC v))

instance HasPlacement Splitview where
  type PlacementV Splitview = SplitViewPanePlacement
  placement v = prop #{const XTK_PROP_PANE_PLACEMENT} (VEnum (toC v))

class HasUntargeted c where
  untargeted :: P.Bool -> Attr c msg
  untargeted v = prop #{const XTK_PROP_UNTARGETED} (VBool v)

instance HasUntargeted Teachtip

class HasLightdismiss c where
  lightdismiss :: P.Bool -> Attr c msg
  lightdismiss v = prop #{const XTK_PROP_LIGHT_DISMISS} (VBool v)

instance HasLightdismiss Teachtip

class HasTail c where
  tail :: TeachingTipTail -> Attr c msg
  tail v = prop #{const XTK_PROP_TAIL_VISIBILITY} (VEnum (toC v))

instance HasTail Teachtip

class HasPlacementmargin c where
  placementmargin :: P.Float -> Attr c msg
  placementmargin v = prop #{const XTK_PROP_PLACEMENT_MARGIN} (VF32 v)

instance HasPlacementmargin Teachtip

class HasOnExpand c where
  onExpand :: (IndexBoolEvent -> msg) -> Attr c msg
  onExpand f = on #{const XTK_EVENT_TREE_EXPAND} (HIndexBool f)

instance HasOnExpand Tree

class HasDirection c where
  direction :: PullDirection -> Attr c msg
  direction v = prop #{const XTK_PROP_PULL_DIRECTION} (VEnum (toC v))

instance HasDirection Refresh

class HasVisualizer c where
  visualizer :: P.Float -> Attr c msg
  visualizer v = prop #{const XTK_PROP_VISUALIZER_SIZE} (VF32 v)

instance HasVisualizer Refresh

class HasThreshold c where
  threshold :: P.Float -> Attr c msg
  threshold v = prop #{const XTK_PROP_THRESHOLD_RATIO} (VF32 v)

instance HasThreshold Refresh

class HasRefreshing c where
  refreshing :: P.Bool -> Attr c msg
  refreshing v = prop #{const XTK_PROP_REFRESHING} (VBool v)

instance HasRefreshing Refresh

class HasOnRefresh c where
  onRefresh :: (Int32 -> msg) -> Attr c msg
  onRefresh f = on #{const XTK_EVENT_REFRESH} (HI32 f)

instance HasOnRefresh Refresh

class HasInitials c where
  initials :: T.Text -> Attr c msg
  initials v = prop #{const XTK_PROP_INITIALS} (VStr v)

instance HasInitials Avatar

class HasBadgeglyph c where
  badgeglyph :: T.Text -> Attr c msg
  badgeglyph v = prop #{const XTK_PROP_BADGE_GLYPH} (VStr v)

instance HasBadgeglyph Avatar

class HasBadgevalue c where
  badgevalue :: Int32 -> Attr c msg
  badgevalue v = prop #{const XTK_PROP_BADGE_VALUE} (VI32 v)

instance HasBadgevalue Avatar

class HasGroup c where
  group :: P.Bool -> Attr c msg
  group v = prop #{const XTK_PROP_IS_GROUP} (VBool v)

instance HasGroup Avatar

class HasDisplay c where
  type DisplayV c
  display :: DisplayV c -> Attr c msg

instance HasDisplay Pager where
  type DisplayV Pager = PagerDisplayMode
  display v = prop #{const XTK_PROP_DISPLAY_MODE} (VEnum (toC v))

instance HasDisplay Splitview where
  type DisplayV Splitview = SplitViewDisplayMode
  display v = prop #{const XTK_PROP_DISPLAY_MODE} (VEnum (toC v))

class HasPrev c where
  prev :: PagerButtonVis -> Attr c msg
  prev v = prop #{const XTK_PROP_PREVIOUS_BUTTON} (VEnum (toC v))

instance HasPrev Pager

class HasNext c where
  next :: PagerButtonVis -> Attr c msg
  next v = prop #{const XTK_PROP_NEXT_BUTTON} (VEnum (toC v))

instance HasNext Pager

class HasLast c where
  last :: PagerButtonVis -> Attr c msg
  last v = prop #{const XTK_PROP_LAST_BUTTON} (VEnum (toC v))

instance HasLast Pager

class HasPrefix c where
  prefix :: T.Text -> Attr c msg
  prefix v = prop #{const XTK_PROP_PREFIX} (VStr v)

instance HasPrefix Pager

class HasSuffix c where
  suffix :: T.Text -> Attr c msg
  suffix v = prop #{const XTK_PROP_SUFFIX} (VStr v)

instance HasSuffix Pager

class HasOpenlen c where
  openlen :: P.Float -> Attr c msg
  openlen v = prop #{const XTK_PROP_OPEN_PANE_LENGTH} (VF32 v)

instance HasOpenlen Splitview

class HasCompactlen c where
  compactlen :: P.Float -> Attr c msg
  compactlen v = prop #{const XTK_PROP_COMPACT_PANE_LENGTH} (VF32 v)

instance HasCompactlen Splitview

class HasShowback c where
  showback :: P.Bool -> Attr c msg
  showback v = prop #{const XTK_PROP_SHOW_BACK} (VBool v)

instance HasShowback Titlebar

class HasBackdisabled c where
  backdisabled :: P.Bool -> Attr c msg
  backdisabled v = prop #{const XTK_PROP_BACK_DISABLED} (VBool v)

instance HasBackdisabled Titlebar

class HasShowtoggle c where
  showtoggle :: P.Bool -> Attr c msg
  showtoggle v = prop #{const XTK_PROP_SHOW_PANE_TOGGLE} (VBool v)

instance HasShowtoggle Titlebar

class HasIntegrate c where
  integrate :: P.Bool -> Attr c msg
  integrate v = prop #{const XTK_PROP_INTEGRATE_WINDOW} (VBool v)

instance HasIntegrate Titlebar

class HasViewport c where
  viewport :: P.Double -> Attr c msg
  viewport v = prop #{const XTK_PROP_VIEWPORT_SIZE} (VF64 v)

instance HasViewport Scrollbar

class HasIndicator c where
  indicator :: ScrollBarIndicator -> Attr c msg
  indicator v = prop #{const XTK_PROP_INDICATOR_MODE} (VEnum (toC v))

instance HasIndicator Scrollbar

class HasLoop c where
  loop :: P.Bool -> Attr c msg
  loop v = prop #{const XTK_PROP_SHOULD_LOOP} (VBool v)

instance HasLoop Looping

class HasHeader c where
  header :: T.Text -> Attr c msg
  header v = prop #{const XTK_PROP_HEADER} (VStr v)

instance HasHeader Datepicker

instance HasHeader Timepicker

class HasDate c where
  date :: Int32 -> Attr c msg
  date v = prop #{const XTK_PROP_DATE} (VI32 v)

instance HasDate Datepicker

instance HasDate Calendar

class HasMinyear c where
  minyear :: Int32 -> Attr c msg
  minyear v = prop #{const XTK_PROP_MIN_YEAR} (VI32 v)

instance HasMinyear Datepicker

class HasMaxyear c where
  maxyear :: Int32 -> Attr c msg
  maxyear v = prop #{const XTK_PROP_MAX_YEAR} (VI32 v)

instance HasMaxyear Datepicker

class HasOnValue c where
  onValue :: (Int32 -> msg) -> Attr c msg
  onValue f = on #{const XTK_EVENT_VALUE_CHANGED} (HI32 f)

instance HasOnValue Datepicker

instance HasOnValue Timepicker

instance HasOnValue Colorpicker

class HasTime c where
  time :: Int32 -> Attr c msg
  time v = prop #{const XTK_PROP_TIME} (VI32 v)

instance HasTime Timepicker

class HasClock c where
  clock :: Clock -> Attr c msg
  clock v = prop #{const XTK_PROP_CLOCK} (VEnum (toC v))

instance HasClock Timepicker

class HasMindate c where
  mindate :: Int32 -> Attr c msg
  mindate v = prop #{const XTK_PROP_MIN_DATE} (VI32 v)

instance HasMindate Calendar

class HasMaxdate c where
  maxdate :: Int32 -> Attr c msg
  maxdate v = prop #{const XTK_PROP_MAX_DATE} (VI32 v)

instance HasMaxdate Calendar

class HasFirstday c where
  firstday :: Int32 -> Attr c msg
  firstday v = prop #{const XTK_PROP_FIRST_DAY} (VI32 v)

instance HasFirstday Calendar

class HasOnDate c where
  onDate :: (IndexBoolEvent -> msg) -> Attr c msg
  onDate f = on #{const XTK_EVENT_DATE_SELECT} (HIndexBool f)

instance HasOnDate Calendar

class HasColor c where
  color :: Word32 -> Attr c msg
  color v = prop #{const XTK_PROP_COLOR} (VColor v)

instance HasColor Colorpicker

class HasAlpha c where
  alpha :: P.Bool -> Attr c msg
  alpha v = prop #{const XTK_PROP_ALPHA_ENABLED} (VBool v)

instance HasAlpha Colorpicker

class HasMorebutton c where
  morebutton :: P.Bool -> Attr c msg
  morebutton v = prop #{const XTK_PROP_MORE_BUTTON_VISIBLE} (VBool v)

instance HasMorebutton Colorpicker

class HasSpectrum c where
  spectrum :: Spectrum -> Attr c msg
  spectrum v = prop #{const XTK_PROP_SPECTRUM} (VEnum (toC v))

instance HasSpectrum Colorpicker

class HasMinw c where
  minw :: P.Float -> Attr c msg
  minw v = prop #{const XTK_PROP_MIN_WIDTH} (VF32 v)

instance HasMinw Colitem

class HasMaxw c where
  maxw :: P.Float -> Attr c msg
  maxw v = prop #{const XTK_PROP_MAX_WIDTH} (VF32 v)

instance HasMaxw Colitem

class HasAlign c where
  align :: TextAlign -> Attr c msg
  align v = prop #{const XTK_PROP_TEXT_ALIGN} (VEnum (toC v))

instance HasAlign Colitem

class HasResizable c where
  resizable :: P.Bool -> Attr c msg
  resizable v = prop #{const XTK_PROP_RESIZABLE} (VBool v)

instance HasResizable Colitem

class HasSort c where
  sort :: SortDirection -> Attr c msg
  sort v = prop #{const XTK_PROP_SORT_DIRECTION} (VEnum (toC v))

instance HasSort Colitem

class HasOnResize c where
  onResize :: (P.Float -> msg) -> Attr c msg
  onResize f = on #{const XTK_EVENT_RESIZE} (HF32 f)

instance HasOnResize Colitem

class HasOnFit c where
  onFit :: msg -> Attr c msg
  onFit m = on #{const XTK_EVENT_FIT} (HValue m)

instance HasOnFit Colitem

class HasOnReorder c where
  onReorder :: (Int32 -> msg) -> Attr c msg
  onReorder f = on #{const XTK_EVENT_REORDER} (HI32 f)

instance HasOnReorder Colitem

class HasSticky c where
  sticky :: P.Bool -> Attr c msg
  sticky v = prop #{const XTK_PROP_IS_STICKY} (VBool v)

instance HasSticky Commandbar

class HasLabels c where
  labels :: LabelPosition -> Attr c msg
  labels v = prop #{const XTK_PROP_DEFAULT_LABEL_POSITION} (VEnum (toC v))

instance HasLabels Commandbar

class HasMore c where
  more :: OverflowButton -> Attr c msg
  more v = prop #{const XTK_PROP_OVERFLOW_BUTTON_VISIBILITY} (VEnum (toC v))

instance HasMore Commandbar

class HasDynamic c where
  dynamic :: P.Bool -> Attr c msg
  dynamic v = prop #{const XTK_PROP_DYNAMIC_OVERFLOW} (VBool v)

instance HasDynamic Commandbar

class HasOnOpen c where
  onOpen :: (P.Bool -> msg) -> Attr c msg
  onOpen f = on #{const XTK_EVENT_OPEN} (HBool f)

instance HasOnOpen Commandbar

class HasLabelpos c where
  labelpos :: ElementLabel -> Attr c msg
  labelpos v = prop #{const XTK_PROP_LABEL_POSITION} (VEnum (toC v))

instance HasLabelpos Appbarbutton

instance HasLabelpos Appbartoggle

class HasAccel c where
  accel :: T.Text -> Attr c msg
  accel v = prop #{const XTK_PROP_ACCELERATOR_TEXT} (VStr v)

instance HasAccel Appbarbutton

instance HasAccel Appbartoggle

class HasOrder c where
  order :: Int32 -> Attr c msg
  order v = prop #{const XTK_PROP_DYNAMIC_OVERFLOW_ORDER} (VI32 v)

instance HasOrder Appbarbutton

instance HasOrder Appbartoggle

instance HasOrder Appbarsep

class HasVirtualItems c where
  virtualItems :: P.Int -> (P.Int -> El msg) -> Attr c msg
  virtualItems = items_

instance HasVirtualItems List

instance HasVirtualItems Listbox

instance HasVirtualItems Gridview

instance HasVirtualItems Repeater

instance HasVirtualItems Itemsview
