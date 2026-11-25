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

instance HasW Groupheader

instance HasW Navslot

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

instance HasH Groupheader

instance HasH Navslot

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

instance HasGrow Groupheader

instance HasGrow Navslot

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

instance HasShrink Groupheader

instance HasShrink Navslot

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

instance HasSelf Groupheader

instance HasSelf Navslot

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

instance HasMl Groupheader

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

instance HasMt Groupheader

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

instance HasMr Groupheader

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

instance HasMb Groupheader

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

instance HasTip Groupheader

class HasAname c where
  aname :: T.Text -> Attr c msg
  aname v = prop #{const XTK_PROP_A11Y_NAME} (VStr v)

instance HasAname Container

instance HasAname Text

instance HasAname Button

instance HasAname Toggle

instance HasAname Checkbox

instance HasAname Radio

instance HasAname Switch

instance HasAname Slider

instance HasAname Textbox

instance HasAname Scroll

instance HasAname Image

instance HasAname Progress

instance HasAname List

instance HasAname Tab

instance HasAname Card

instance HasAname Divider

instance HasAname Canvas

instance HasAname Password

instance HasAname Number

instance HasAname Link

instance HasAname Repeat

instance HasAname Progressring

instance HasAname Badge

instance HasAname Tooltip

instance HasAname Flyout

instance HasAname Menufly

instance HasAname Dropdown

instance HasAname Split

instance HasAname Combo

instance HasAname Expander

instance HasAname Exphead

instance HasAname Expbody

instance HasAname Infobar

instance HasAname Dialog

instance HasAname Dialogbody

instance HasAname Menubar

instance HasAname Menuitem

instance HasAname Nav

instance HasAname Navitem

instance HasAname Tabs

instance HasAname Tabitem

instance HasAname Listitem

instance HasAname Listbox

instance HasAname Gridview

instance HasAname Repeater

instance HasAname Itemsview

instance HasAname Flip

instance HasAname Pips

instance HasAname Suggest

instance HasAname Togglesplit

instance HasAname Radiogroup

instance HasAname Rating

instance HasAname Selector

instance HasAname Selectoritem

instance HasAname Breadcrumb

instance HasAname Crumb

instance HasAname Teachtip

instance HasAname Tree

instance HasAname Treeitem

instance HasAname Refresh

instance HasAname Avatar

instance HasAname Pager

instance HasAname Splitview

instance HasAname Splitpane

instance HasAname Splitbody

instance HasAname Titlebar

instance HasAname Scrollbar

instance HasAname Looping

instance HasAname Datepicker

instance HasAname Timepicker

instance HasAname Calendar

instance HasAname Colorpicker

instance HasAname Colheader

instance HasAname Colitem

instance HasAname Commandbar

instance HasAname Appbarbutton

instance HasAname Appbartoggle

instance HasAname Appbarsep

instance HasAname Groupheader

class HasAid c where
  aid :: T.Text -> Attr c msg
  aid v = prop #{const XTK_PROP_A11Y_ID} (VStr v)

instance HasAid Container

instance HasAid Text

instance HasAid Button

instance HasAid Toggle

instance HasAid Checkbox

instance HasAid Radio

instance HasAid Switch

instance HasAid Slider

instance HasAid Textbox

instance HasAid Scroll

instance HasAid Image

instance HasAid Progress

instance HasAid List

instance HasAid Tab

instance HasAid Card

instance HasAid Divider

instance HasAid Canvas

instance HasAid Password

instance HasAid Number

instance HasAid Link

instance HasAid Repeat

instance HasAid Progressring

instance HasAid Badge

instance HasAid Tooltip

instance HasAid Flyout

instance HasAid Menufly

instance HasAid Dropdown

instance HasAid Split

instance HasAid Combo

instance HasAid Expander

instance HasAid Exphead

instance HasAid Expbody

instance HasAid Infobar

instance HasAid Dialog

instance HasAid Dialogbody

instance HasAid Menubar

instance HasAid Menuitem

instance HasAid Nav

instance HasAid Navitem

instance HasAid Tabs

instance HasAid Tabitem

instance HasAid Listitem

instance HasAid Listbox

instance HasAid Gridview

instance HasAid Repeater

instance HasAid Itemsview

instance HasAid Flip

instance HasAid Pips

instance HasAid Suggest

instance HasAid Togglesplit

instance HasAid Radiogroup

instance HasAid Rating

instance HasAid Selector

instance HasAid Selectoritem

instance HasAid Breadcrumb

instance HasAid Crumb

instance HasAid Teachtip

instance HasAid Tree

instance HasAid Treeitem

instance HasAid Refresh

instance HasAid Avatar

instance HasAid Pager

instance HasAid Splitview

instance HasAid Splitpane

instance HasAid Splitbody

instance HasAid Titlebar

instance HasAid Scrollbar

instance HasAid Looping

instance HasAid Datepicker

instance HasAid Timepicker

instance HasAid Calendar

instance HasAid Colorpicker

instance HasAid Colheader

instance HasAid Colitem

instance HasAid Commandbar

instance HasAid Appbarbutton

instance HasAid Appbartoggle

instance HasAid Appbarsep

instance HasAid Groupheader

class HasAhelp c where
  ahelp :: T.Text -> Attr c msg
  ahelp v = prop #{const XTK_PROP_A11Y_HELP} (VStr v)

instance HasAhelp Container

instance HasAhelp Text

instance HasAhelp Button

instance HasAhelp Toggle

instance HasAhelp Checkbox

instance HasAhelp Radio

instance HasAhelp Switch

instance HasAhelp Slider

instance HasAhelp Textbox

instance HasAhelp Scroll

instance HasAhelp Image

instance HasAhelp Progress

instance HasAhelp List

instance HasAhelp Tab

instance HasAhelp Card

instance HasAhelp Divider

instance HasAhelp Canvas

instance HasAhelp Password

instance HasAhelp Number

instance HasAhelp Link

instance HasAhelp Repeat

instance HasAhelp Progressring

instance HasAhelp Badge

instance HasAhelp Tooltip

instance HasAhelp Flyout

instance HasAhelp Menufly

instance HasAhelp Dropdown

instance HasAhelp Split

instance HasAhelp Combo

instance HasAhelp Expander

instance HasAhelp Exphead

instance HasAhelp Expbody

instance HasAhelp Infobar

instance HasAhelp Dialog

instance HasAhelp Dialogbody

instance HasAhelp Menubar

instance HasAhelp Menuitem

instance HasAhelp Nav

instance HasAhelp Navitem

instance HasAhelp Tabs

instance HasAhelp Tabitem

instance HasAhelp Listitem

instance HasAhelp Listbox

instance HasAhelp Gridview

instance HasAhelp Repeater

instance HasAhelp Itemsview

instance HasAhelp Flip

instance HasAhelp Pips

instance HasAhelp Suggest

instance HasAhelp Togglesplit

instance HasAhelp Radiogroup

instance HasAhelp Rating

instance HasAhelp Selector

instance HasAhelp Selectoritem

instance HasAhelp Breadcrumb

instance HasAhelp Crumb

instance HasAhelp Teachtip

instance HasAhelp Tree

instance HasAhelp Treeitem

instance HasAhelp Refresh

instance HasAhelp Avatar

instance HasAhelp Pager

instance HasAhelp Splitview

instance HasAhelp Splitpane

instance HasAhelp Splitbody

instance HasAhelp Titlebar

instance HasAhelp Scrollbar

instance HasAhelp Looping

instance HasAhelp Datepicker

instance HasAhelp Timepicker

instance HasAhelp Calendar

instance HasAhelp Colorpicker

instance HasAhelp Colheader

instance HasAhelp Colitem

instance HasAhelp Commandbar

instance HasAhelp Appbarbutton

instance HasAhelp Appbartoggle

instance HasAhelp Appbarsep

instance HasAhelp Groupheader

class HasAdesc c where
  adesc :: T.Text -> Attr c msg
  adesc v = prop #{const XTK_PROP_A11Y_DESCRIPTION} (VStr v)

instance HasAdesc Container

instance HasAdesc Text

instance HasAdesc Button

instance HasAdesc Toggle

instance HasAdesc Checkbox

instance HasAdesc Radio

instance HasAdesc Switch

instance HasAdesc Slider

instance HasAdesc Textbox

instance HasAdesc Scroll

instance HasAdesc Image

instance HasAdesc Progress

instance HasAdesc List

instance HasAdesc Tab

instance HasAdesc Card

instance HasAdesc Divider

instance HasAdesc Canvas

instance HasAdesc Password

instance HasAdesc Number

instance HasAdesc Link

instance HasAdesc Repeat

instance HasAdesc Progressring

instance HasAdesc Badge

instance HasAdesc Tooltip

instance HasAdesc Flyout

instance HasAdesc Menufly

instance HasAdesc Dropdown

instance HasAdesc Split

instance HasAdesc Combo

instance HasAdesc Expander

instance HasAdesc Exphead

instance HasAdesc Expbody

instance HasAdesc Infobar

instance HasAdesc Dialog

instance HasAdesc Dialogbody

instance HasAdesc Menubar

instance HasAdesc Menuitem

instance HasAdesc Nav

instance HasAdesc Navitem

instance HasAdesc Tabs

instance HasAdesc Tabitem

instance HasAdesc Listitem

instance HasAdesc Listbox

instance HasAdesc Gridview

instance HasAdesc Repeater

instance HasAdesc Itemsview

instance HasAdesc Flip

instance HasAdesc Pips

instance HasAdesc Suggest

instance HasAdesc Togglesplit

instance HasAdesc Radiogroup

instance HasAdesc Rating

instance HasAdesc Selector

instance HasAdesc Selectoritem

instance HasAdesc Breadcrumb

instance HasAdesc Crumb

instance HasAdesc Teachtip

instance HasAdesc Tree

instance HasAdesc Treeitem

instance HasAdesc Refresh

instance HasAdesc Avatar

instance HasAdesc Pager

instance HasAdesc Splitview

instance HasAdesc Splitpane

instance HasAdesc Splitbody

instance HasAdesc Titlebar

instance HasAdesc Scrollbar

instance HasAdesc Looping

instance HasAdesc Datepicker

instance HasAdesc Timepicker

instance HasAdesc Calendar

instance HasAdesc Colorpicker

instance HasAdesc Colheader

instance HasAdesc Colitem

instance HasAdesc Commandbar

instance HasAdesc Appbarbutton

instance HasAdesc Appbartoggle

instance HasAdesc Appbarsep

instance HasAdesc Groupheader

class HasAstatus c where
  astatus :: T.Text -> Attr c msg
  astatus v = prop #{const XTK_PROP_A11Y_ITEM_STATUS} (VStr v)

instance HasAstatus Container

instance HasAstatus Text

instance HasAstatus Button

instance HasAstatus Toggle

instance HasAstatus Checkbox

instance HasAstatus Radio

instance HasAstatus Switch

instance HasAstatus Slider

instance HasAstatus Textbox

instance HasAstatus Scroll

instance HasAstatus Image

instance HasAstatus Progress

instance HasAstatus List

instance HasAstatus Tab

instance HasAstatus Card

instance HasAstatus Divider

instance HasAstatus Canvas

instance HasAstatus Password

instance HasAstatus Number

instance HasAstatus Link

instance HasAstatus Repeat

instance HasAstatus Progressring

instance HasAstatus Badge

instance HasAstatus Tooltip

instance HasAstatus Flyout

instance HasAstatus Menufly

instance HasAstatus Dropdown

instance HasAstatus Split

instance HasAstatus Combo

instance HasAstatus Expander

instance HasAstatus Exphead

instance HasAstatus Expbody

instance HasAstatus Infobar

instance HasAstatus Dialog

instance HasAstatus Dialogbody

instance HasAstatus Menubar

instance HasAstatus Menuitem

instance HasAstatus Nav

instance HasAstatus Navitem

instance HasAstatus Tabs

instance HasAstatus Tabitem

instance HasAstatus Listitem

instance HasAstatus Listbox

instance HasAstatus Gridview

instance HasAstatus Repeater

instance HasAstatus Itemsview

instance HasAstatus Flip

instance HasAstatus Pips

instance HasAstatus Suggest

instance HasAstatus Togglesplit

instance HasAstatus Radiogroup

instance HasAstatus Rating

instance HasAstatus Selector

instance HasAstatus Selectoritem

instance HasAstatus Breadcrumb

instance HasAstatus Crumb

instance HasAstatus Teachtip

instance HasAstatus Tree

instance HasAstatus Treeitem

instance HasAstatus Refresh

instance HasAstatus Avatar

instance HasAstatus Pager

instance HasAstatus Splitview

instance HasAstatus Splitpane

instance HasAstatus Splitbody

instance HasAstatus Titlebar

instance HasAstatus Scrollbar

instance HasAstatus Looping

instance HasAstatus Datepicker

instance HasAstatus Timepicker

instance HasAstatus Calendar

instance HasAstatus Colorpicker

instance HasAstatus Colheader

instance HasAstatus Colitem

instance HasAstatus Commandbar

instance HasAstatus Appbarbutton

instance HasAstatus Appbartoggle

instance HasAstatus Appbarsep

instance HasAstatus Groupheader

class HasAitem c where
  aitem :: T.Text -> Attr c msg
  aitem v = prop #{const XTK_PROP_A11Y_ITEM_TYPE} (VStr v)

instance HasAitem Container

instance HasAitem Text

instance HasAitem Button

instance HasAitem Toggle

instance HasAitem Checkbox

instance HasAitem Radio

instance HasAitem Switch

instance HasAitem Slider

instance HasAitem Textbox

instance HasAitem Scroll

instance HasAitem Image

instance HasAitem Progress

instance HasAitem List

instance HasAitem Tab

instance HasAitem Card

instance HasAitem Divider

instance HasAitem Canvas

instance HasAitem Password

instance HasAitem Number

instance HasAitem Link

instance HasAitem Repeat

instance HasAitem Progressring

instance HasAitem Badge

instance HasAitem Tooltip

instance HasAitem Flyout

instance HasAitem Menufly

instance HasAitem Dropdown

instance HasAitem Split

instance HasAitem Combo

instance HasAitem Expander

instance HasAitem Exphead

instance HasAitem Expbody

instance HasAitem Infobar

instance HasAitem Dialog

instance HasAitem Dialogbody

instance HasAitem Menubar

instance HasAitem Menuitem

instance HasAitem Nav

instance HasAitem Navitem

instance HasAitem Tabs

instance HasAitem Tabitem

instance HasAitem Listitem

instance HasAitem Listbox

instance HasAitem Gridview

instance HasAitem Repeater

instance HasAitem Itemsview

instance HasAitem Flip

instance HasAitem Pips

instance HasAitem Suggest

instance HasAitem Togglesplit

instance HasAitem Radiogroup

instance HasAitem Rating

instance HasAitem Selector

instance HasAitem Selectoritem

instance HasAitem Breadcrumb

instance HasAitem Crumb

instance HasAitem Teachtip

instance HasAitem Tree

instance HasAitem Treeitem

instance HasAitem Refresh

instance HasAitem Avatar

instance HasAitem Pager

instance HasAitem Splitview

instance HasAitem Splitpane

instance HasAitem Splitbody

instance HasAitem Titlebar

instance HasAitem Scrollbar

instance HasAitem Looping

instance HasAitem Datepicker

instance HasAitem Timepicker

instance HasAitem Calendar

instance HasAitem Colorpicker

instance HasAitem Colheader

instance HasAitem Colitem

instance HasAitem Commandbar

instance HasAitem Appbarbutton

instance HasAitem Appbartoggle

instance HasAitem Appbarsep

instance HasAitem Groupheader

class HasActype c where
  actype :: T.Text -> Attr c msg
  actype v = prop #{const XTK_PROP_A11Y_CONTROL_TYPE} (VStr v)

instance HasActype Container

instance HasActype Text

instance HasActype Button

instance HasActype Toggle

instance HasActype Checkbox

instance HasActype Radio

instance HasActype Switch

instance HasActype Slider

instance HasActype Textbox

instance HasActype Scroll

instance HasActype Image

instance HasActype Progress

instance HasActype List

instance HasActype Tab

instance HasActype Card

instance HasActype Divider

instance HasActype Canvas

instance HasActype Password

instance HasActype Number

instance HasActype Link

instance HasActype Repeat

instance HasActype Progressring

instance HasActype Badge

instance HasActype Tooltip

instance HasActype Flyout

instance HasActype Menufly

instance HasActype Dropdown

instance HasActype Split

instance HasActype Combo

instance HasActype Expander

instance HasActype Exphead

instance HasActype Expbody

instance HasActype Infobar

instance HasActype Dialog

instance HasActype Dialogbody

instance HasActype Menubar

instance HasActype Menuitem

instance HasActype Nav

instance HasActype Navitem

instance HasActype Tabs

instance HasActype Tabitem

instance HasActype Listitem

instance HasActype Listbox

instance HasActype Gridview

instance HasActype Repeater

instance HasActype Itemsview

instance HasActype Flip

instance HasActype Pips

instance HasActype Suggest

instance HasActype Togglesplit

instance HasActype Radiogroup

instance HasActype Rating

instance HasActype Selector

instance HasActype Selectoritem

instance HasActype Breadcrumb

instance HasActype Crumb

instance HasActype Teachtip

instance HasActype Tree

instance HasActype Treeitem

instance HasActype Refresh

instance HasActype Avatar

instance HasActype Pager

instance HasActype Splitview

instance HasActype Splitpane

instance HasActype Splitbody

instance HasActype Titlebar

instance HasActype Scrollbar

instance HasActype Looping

instance HasActype Datepicker

instance HasActype Timepicker

instance HasActype Calendar

instance HasActype Colorpicker

instance HasActype Colheader

instance HasActype Colitem

instance HasActype Commandbar

instance HasActype Appbarbutton

instance HasActype Appbartoggle

instance HasActype Appbarsep

instance HasActype Groupheader

class HasAaccel c where
  aaccel :: T.Text -> Attr c msg
  aaccel v = prop #{const XTK_PROP_A11Y_ACCELERATOR} (VStr v)

instance HasAaccel Container

instance HasAaccel Text

instance HasAaccel Button

instance HasAaccel Toggle

instance HasAaccel Checkbox

instance HasAaccel Radio

instance HasAaccel Switch

instance HasAaccel Slider

instance HasAaccel Textbox

instance HasAaccel Scroll

instance HasAaccel Image

instance HasAaccel Progress

instance HasAaccel List

instance HasAaccel Tab

instance HasAaccel Card

instance HasAaccel Divider

instance HasAaccel Canvas

instance HasAaccel Password

instance HasAaccel Number

instance HasAaccel Link

instance HasAaccel Repeat

instance HasAaccel Progressring

instance HasAaccel Badge

instance HasAaccel Tooltip

instance HasAaccel Flyout

instance HasAaccel Menufly

instance HasAaccel Dropdown

instance HasAaccel Split

instance HasAaccel Combo

instance HasAaccel Expander

instance HasAaccel Exphead

instance HasAaccel Expbody

instance HasAaccel Infobar

instance HasAaccel Dialog

instance HasAaccel Dialogbody

instance HasAaccel Menubar

instance HasAaccel Menuitem

instance HasAaccel Nav

instance HasAaccel Navitem

instance HasAaccel Tabs

instance HasAaccel Tabitem

instance HasAaccel Listitem

instance HasAaccel Listbox

instance HasAaccel Gridview

instance HasAaccel Repeater

instance HasAaccel Itemsview

instance HasAaccel Flip

instance HasAaccel Pips

instance HasAaccel Suggest

instance HasAaccel Togglesplit

instance HasAaccel Radiogroup

instance HasAaccel Rating

instance HasAaccel Selector

instance HasAaccel Selectoritem

instance HasAaccel Breadcrumb

instance HasAaccel Crumb

instance HasAaccel Teachtip

instance HasAaccel Tree

instance HasAaccel Treeitem

instance HasAaccel Refresh

instance HasAaccel Avatar

instance HasAaccel Pager

instance HasAaccel Splitview

instance HasAaccel Splitpane

instance HasAaccel Splitbody

instance HasAaccel Titlebar

instance HasAaccel Scrollbar

instance HasAaccel Looping

instance HasAaccel Datepicker

instance HasAaccel Timepicker

instance HasAaccel Calendar

instance HasAaccel Colorpicker

instance HasAaccel Colheader

instance HasAaccel Colitem

instance HasAaccel Commandbar

instance HasAaccel Appbarbutton

instance HasAaccel Appbartoggle

instance HasAaccel Appbarsep

instance HasAaccel Groupheader

class HasAkey c where
  akey :: T.Text -> Attr c msg
  akey v = prop #{const XTK_PROP_A11Y_ACCESS_KEY} (VStr v)

instance HasAkey Container

instance HasAkey Text

instance HasAkey Button

instance HasAkey Toggle

instance HasAkey Checkbox

instance HasAkey Radio

instance HasAkey Switch

instance HasAkey Slider

instance HasAkey Textbox

instance HasAkey Scroll

instance HasAkey Image

instance HasAkey Progress

instance HasAkey List

instance HasAkey Tab

instance HasAkey Card

instance HasAkey Divider

instance HasAkey Canvas

instance HasAkey Password

instance HasAkey Number

instance HasAkey Link

instance HasAkey Repeat

instance HasAkey Progressring

instance HasAkey Badge

instance HasAkey Tooltip

instance HasAkey Flyout

instance HasAkey Menufly

instance HasAkey Dropdown

instance HasAkey Split

instance HasAkey Combo

instance HasAkey Expander

instance HasAkey Exphead

instance HasAkey Expbody

instance HasAkey Infobar

instance HasAkey Dialog

instance HasAkey Dialogbody

instance HasAkey Menubar

instance HasAkey Menuitem

instance HasAkey Nav

instance HasAkey Navitem

instance HasAkey Tabs

instance HasAkey Tabitem

instance HasAkey Listitem

instance HasAkey Listbox

instance HasAkey Gridview

instance HasAkey Repeater

instance HasAkey Itemsview

instance HasAkey Flip

instance HasAkey Pips

instance HasAkey Suggest

instance HasAkey Togglesplit

instance HasAkey Radiogroup

instance HasAkey Rating

instance HasAkey Selector

instance HasAkey Selectoritem

instance HasAkey Breadcrumb

instance HasAkey Crumb

instance HasAkey Teachtip

instance HasAkey Tree

instance HasAkey Treeitem

instance HasAkey Refresh

instance HasAkey Avatar

instance HasAkey Pager

instance HasAkey Splitview

instance HasAkey Splitpane

instance HasAkey Splitbody

instance HasAkey Titlebar

instance HasAkey Scrollbar

instance HasAkey Looping

instance HasAkey Datepicker

instance HasAkey Timepicker

instance HasAkey Calendar

instance HasAkey Colorpicker

instance HasAkey Colheader

instance HasAkey Colitem

instance HasAkey Commandbar

instance HasAkey Appbarbutton

instance HasAkey Appbartoggle

instance HasAkey Appbarsep

instance HasAkey Groupheader

class HasAlandmark c where
  alandmark :: Landmark -> Attr c msg
  alandmark v = prop #{const XTK_PROP_A11Y_LANDMARK} (VEnum (toC v))

instance HasAlandmark Container

instance HasAlandmark Text

instance HasAlandmark Button

instance HasAlandmark Toggle

instance HasAlandmark Checkbox

instance HasAlandmark Radio

instance HasAlandmark Switch

instance HasAlandmark Slider

instance HasAlandmark Textbox

instance HasAlandmark Scroll

instance HasAlandmark Image

instance HasAlandmark Progress

instance HasAlandmark List

instance HasAlandmark Tab

instance HasAlandmark Card

instance HasAlandmark Divider

instance HasAlandmark Canvas

instance HasAlandmark Password

instance HasAlandmark Number

instance HasAlandmark Link

instance HasAlandmark Repeat

instance HasAlandmark Progressring

instance HasAlandmark Badge

instance HasAlandmark Tooltip

instance HasAlandmark Flyout

instance HasAlandmark Menufly

instance HasAlandmark Dropdown

instance HasAlandmark Split

instance HasAlandmark Combo

instance HasAlandmark Expander

instance HasAlandmark Exphead

instance HasAlandmark Expbody

instance HasAlandmark Infobar

instance HasAlandmark Dialog

instance HasAlandmark Dialogbody

instance HasAlandmark Menubar

instance HasAlandmark Menuitem

instance HasAlandmark Nav

instance HasAlandmark Navitem

instance HasAlandmark Tabs

instance HasAlandmark Tabitem

instance HasAlandmark Listitem

instance HasAlandmark Listbox

instance HasAlandmark Gridview

instance HasAlandmark Repeater

instance HasAlandmark Itemsview

instance HasAlandmark Flip

instance HasAlandmark Pips

instance HasAlandmark Suggest

instance HasAlandmark Togglesplit

instance HasAlandmark Radiogroup

instance HasAlandmark Rating

instance HasAlandmark Selector

instance HasAlandmark Selectoritem

instance HasAlandmark Breadcrumb

instance HasAlandmark Crumb

instance HasAlandmark Teachtip

instance HasAlandmark Tree

instance HasAlandmark Treeitem

instance HasAlandmark Refresh

instance HasAlandmark Avatar

instance HasAlandmark Pager

instance HasAlandmark Splitview

instance HasAlandmark Splitpane

instance HasAlandmark Splitbody

instance HasAlandmark Titlebar

instance HasAlandmark Scrollbar

instance HasAlandmark Looping

instance HasAlandmark Datepicker

instance HasAlandmark Timepicker

instance HasAlandmark Calendar

instance HasAlandmark Colorpicker

instance HasAlandmark Colheader

instance HasAlandmark Colitem

instance HasAlandmark Commandbar

instance HasAlandmark Appbarbutton

instance HasAlandmark Appbartoggle

instance HasAlandmark Appbarsep

instance HasAlandmark Groupheader

class HasAlandname c where
  alandname :: T.Text -> Attr c msg
  alandname v = prop #{const XTK_PROP_A11Y_LANDMARK_NAME} (VStr v)

instance HasAlandname Container

instance HasAlandname Text

instance HasAlandname Button

instance HasAlandname Toggle

instance HasAlandname Checkbox

instance HasAlandname Radio

instance HasAlandname Switch

instance HasAlandname Slider

instance HasAlandname Textbox

instance HasAlandname Scroll

instance HasAlandname Image

instance HasAlandname Progress

instance HasAlandname List

instance HasAlandname Tab

instance HasAlandname Card

instance HasAlandname Divider

instance HasAlandname Canvas

instance HasAlandname Password

instance HasAlandname Number

instance HasAlandname Link

instance HasAlandname Repeat

instance HasAlandname Progressring

instance HasAlandname Badge

instance HasAlandname Tooltip

instance HasAlandname Flyout

instance HasAlandname Menufly

instance HasAlandname Dropdown

instance HasAlandname Split

instance HasAlandname Combo

instance HasAlandname Expander

instance HasAlandname Exphead

instance HasAlandname Expbody

instance HasAlandname Infobar

instance HasAlandname Dialog

instance HasAlandname Dialogbody

instance HasAlandname Menubar

instance HasAlandname Menuitem

instance HasAlandname Nav

instance HasAlandname Navitem

instance HasAlandname Tabs

instance HasAlandname Tabitem

instance HasAlandname Listitem

instance HasAlandname Listbox

instance HasAlandname Gridview

instance HasAlandname Repeater

instance HasAlandname Itemsview

instance HasAlandname Flip

instance HasAlandname Pips

instance HasAlandname Suggest

instance HasAlandname Togglesplit

instance HasAlandname Radiogroup

instance HasAlandname Rating

instance HasAlandname Selector

instance HasAlandname Selectoritem

instance HasAlandname Breadcrumb

instance HasAlandname Crumb

instance HasAlandname Teachtip

instance HasAlandname Tree

instance HasAlandname Treeitem

instance HasAlandname Refresh

instance HasAlandname Avatar

instance HasAlandname Pager

instance HasAlandname Splitview

instance HasAlandname Splitpane

instance HasAlandname Splitbody

instance HasAlandname Titlebar

instance HasAlandname Scrollbar

instance HasAlandname Looping

instance HasAlandname Datepicker

instance HasAlandname Timepicker

instance HasAlandname Calendar

instance HasAlandname Colorpicker

instance HasAlandname Colheader

instance HasAlandname Colitem

instance HasAlandname Commandbar

instance HasAlandname Appbarbutton

instance HasAlandname Appbartoggle

instance HasAlandname Appbarsep

instance HasAlandname Groupheader

class HasAlive c where
  alive :: LiveSetting -> Attr c msg
  alive v = prop #{const XTK_PROP_A11Y_LIVE} (VEnum (toC v))

instance HasAlive Container

instance HasAlive Text

instance HasAlive Button

instance HasAlive Toggle

instance HasAlive Checkbox

instance HasAlive Radio

instance HasAlive Switch

instance HasAlive Slider

instance HasAlive Textbox

instance HasAlive Scroll

instance HasAlive Image

instance HasAlive Progress

instance HasAlive List

instance HasAlive Tab

instance HasAlive Card

instance HasAlive Divider

instance HasAlive Canvas

instance HasAlive Password

instance HasAlive Number

instance HasAlive Link

instance HasAlive Repeat

instance HasAlive Progressring

instance HasAlive Badge

instance HasAlive Tooltip

instance HasAlive Flyout

instance HasAlive Menufly

instance HasAlive Dropdown

instance HasAlive Split

instance HasAlive Combo

instance HasAlive Expander

instance HasAlive Exphead

instance HasAlive Expbody

instance HasAlive Infobar

instance HasAlive Dialog

instance HasAlive Dialogbody

instance HasAlive Menubar

instance HasAlive Menuitem

instance HasAlive Nav

instance HasAlive Navitem

instance HasAlive Tabs

instance HasAlive Tabitem

instance HasAlive Listitem

instance HasAlive Listbox

instance HasAlive Gridview

instance HasAlive Repeater

instance HasAlive Itemsview

instance HasAlive Flip

instance HasAlive Pips

instance HasAlive Suggest

instance HasAlive Togglesplit

instance HasAlive Radiogroup

instance HasAlive Rating

instance HasAlive Selector

instance HasAlive Selectoritem

instance HasAlive Breadcrumb

instance HasAlive Crumb

instance HasAlive Teachtip

instance HasAlive Tree

instance HasAlive Treeitem

instance HasAlive Refresh

instance HasAlive Avatar

instance HasAlive Pager

instance HasAlive Splitview

instance HasAlive Splitpane

instance HasAlive Splitbody

instance HasAlive Titlebar

instance HasAlive Scrollbar

instance HasAlive Looping

instance HasAlive Datepicker

instance HasAlive Timepicker

instance HasAlive Calendar

instance HasAlive Colorpicker

instance HasAlive Colheader

instance HasAlive Colitem

instance HasAlive Commandbar

instance HasAlive Appbarbutton

instance HasAlive Appbartoggle

instance HasAlive Appbarsep

instance HasAlive Groupheader

class HasAheading c where
  aheading :: HeadingLevel -> Attr c msg
  aheading v = prop #{const XTK_PROP_A11Y_HEADING} (VEnum (toC v))

instance HasAheading Container

instance HasAheading Text

instance HasAheading Button

instance HasAheading Toggle

instance HasAheading Checkbox

instance HasAheading Radio

instance HasAheading Switch

instance HasAheading Slider

instance HasAheading Textbox

instance HasAheading Scroll

instance HasAheading Image

instance HasAheading Progress

instance HasAheading List

instance HasAheading Tab

instance HasAheading Card

instance HasAheading Divider

instance HasAheading Canvas

instance HasAheading Password

instance HasAheading Number

instance HasAheading Link

instance HasAheading Repeat

instance HasAheading Progressring

instance HasAheading Badge

instance HasAheading Tooltip

instance HasAheading Flyout

instance HasAheading Menufly

instance HasAheading Dropdown

instance HasAheading Split

instance HasAheading Combo

instance HasAheading Expander

instance HasAheading Exphead

instance HasAheading Expbody

instance HasAheading Infobar

instance HasAheading Dialog

instance HasAheading Dialogbody

instance HasAheading Menubar

instance HasAheading Menuitem

instance HasAheading Nav

instance HasAheading Navitem

instance HasAheading Tabs

instance HasAheading Tabitem

instance HasAheading Listitem

instance HasAheading Listbox

instance HasAheading Gridview

instance HasAheading Repeater

instance HasAheading Itemsview

instance HasAheading Flip

instance HasAheading Pips

instance HasAheading Suggest

instance HasAheading Togglesplit

instance HasAheading Radiogroup

instance HasAheading Rating

instance HasAheading Selector

instance HasAheading Selectoritem

instance HasAheading Breadcrumb

instance HasAheading Crumb

instance HasAheading Teachtip

instance HasAheading Tree

instance HasAheading Treeitem

instance HasAheading Refresh

instance HasAheading Avatar

instance HasAheading Pager

instance HasAheading Splitview

instance HasAheading Splitpane

instance HasAheading Splitbody

instance HasAheading Titlebar

instance HasAheading Scrollbar

instance HasAheading Looping

instance HasAheading Datepicker

instance HasAheading Timepicker

instance HasAheading Calendar

instance HasAheading Colorpicker

instance HasAheading Colheader

instance HasAheading Colitem

instance HasAheading Commandbar

instance HasAheading Appbarbutton

instance HasAheading Appbartoggle

instance HasAheading Appbarsep

instance HasAheading Groupheader

class HasAview c where
  aview :: AccessView -> Attr c msg
  aview v = prop #{const XTK_PROP_A11Y_VIEW} (VEnum (toC v))

instance HasAview Container

instance HasAview Text

instance HasAview Button

instance HasAview Toggle

instance HasAview Checkbox

instance HasAview Radio

instance HasAview Switch

instance HasAview Slider

instance HasAview Textbox

instance HasAview Scroll

instance HasAview Image

instance HasAview Progress

instance HasAview List

instance HasAview Tab

instance HasAview Card

instance HasAview Divider

instance HasAview Canvas

instance HasAview Password

instance HasAview Number

instance HasAview Link

instance HasAview Repeat

instance HasAview Progressring

instance HasAview Badge

instance HasAview Tooltip

instance HasAview Flyout

instance HasAview Menufly

instance HasAview Dropdown

instance HasAview Split

instance HasAview Combo

instance HasAview Expander

instance HasAview Exphead

instance HasAview Expbody

instance HasAview Infobar

instance HasAview Dialog

instance HasAview Dialogbody

instance HasAview Menubar

instance HasAview Menuitem

instance HasAview Nav

instance HasAview Navitem

instance HasAview Tabs

instance HasAview Tabitem

instance HasAview Listitem

instance HasAview Listbox

instance HasAview Gridview

instance HasAview Repeater

instance HasAview Itemsview

instance HasAview Flip

instance HasAview Pips

instance HasAview Suggest

instance HasAview Togglesplit

instance HasAview Radiogroup

instance HasAview Rating

instance HasAview Selector

instance HasAview Selectoritem

instance HasAview Breadcrumb

instance HasAview Crumb

instance HasAview Teachtip

instance HasAview Tree

instance HasAview Treeitem

instance HasAview Refresh

instance HasAview Avatar

instance HasAview Pager

instance HasAview Splitview

instance HasAview Splitpane

instance HasAview Splitbody

instance HasAview Titlebar

instance HasAview Scrollbar

instance HasAview Looping

instance HasAview Datepicker

instance HasAview Timepicker

instance HasAview Calendar

instance HasAview Colorpicker

instance HasAview Colheader

instance HasAview Colitem

instance HasAview Commandbar

instance HasAview Appbarbutton

instance HasAview Appbartoggle

instance HasAview Appbarsep

instance HasAview Groupheader

class HasArequired c where
  arequired :: P.Bool -> Attr c msg
  arequired v = prop #{const XTK_PROP_A11Y_REQUIRED} (VBool v)

instance HasArequired Container

instance HasArequired Text

instance HasArequired Button

instance HasArequired Toggle

instance HasArequired Checkbox

instance HasArequired Radio

instance HasArequired Switch

instance HasArequired Slider

instance HasArequired Textbox

instance HasArequired Scroll

instance HasArequired Image

instance HasArequired Progress

instance HasArequired List

instance HasArequired Tab

instance HasArequired Card

instance HasArequired Divider

instance HasArequired Canvas

instance HasArequired Password

instance HasArequired Number

instance HasArequired Link

instance HasArequired Repeat

instance HasArequired Progressring

instance HasArequired Badge

instance HasArequired Tooltip

instance HasArequired Flyout

instance HasArequired Menufly

instance HasArequired Dropdown

instance HasArequired Split

instance HasArequired Combo

instance HasArequired Expander

instance HasArequired Exphead

instance HasArequired Expbody

instance HasArequired Infobar

instance HasArequired Dialog

instance HasArequired Dialogbody

instance HasArequired Menubar

instance HasArequired Menuitem

instance HasArequired Nav

instance HasArequired Navitem

instance HasArequired Tabs

instance HasArequired Tabitem

instance HasArequired Listitem

instance HasArequired Listbox

instance HasArequired Gridview

instance HasArequired Repeater

instance HasArequired Itemsview

instance HasArequired Flip

instance HasArequired Pips

instance HasArequired Suggest

instance HasArequired Togglesplit

instance HasArequired Radiogroup

instance HasArequired Rating

instance HasArequired Selector

instance HasArequired Selectoritem

instance HasArequired Breadcrumb

instance HasArequired Crumb

instance HasArequired Teachtip

instance HasArequired Tree

instance HasArequired Treeitem

instance HasArequired Refresh

instance HasArequired Avatar

instance HasArequired Pager

instance HasArequired Splitview

instance HasArequired Splitpane

instance HasArequired Splitbody

instance HasArequired Titlebar

instance HasArequired Scrollbar

instance HasArequired Looping

instance HasArequired Datepicker

instance HasArequired Timepicker

instance HasArequired Calendar

instance HasArequired Colorpicker

instance HasArequired Colheader

instance HasArequired Colitem

instance HasArequired Commandbar

instance HasArequired Appbarbutton

instance HasArequired Appbartoggle

instance HasArequired Appbarsep

instance HasArequired Groupheader

class HasAvalid c where
  avalid :: P.Bool -> Attr c msg
  avalid v = prop #{const XTK_PROP_A11Y_DATA_VALID} (VBool v)

instance HasAvalid Container

instance HasAvalid Text

instance HasAvalid Button

instance HasAvalid Toggle

instance HasAvalid Checkbox

instance HasAvalid Radio

instance HasAvalid Switch

instance HasAvalid Slider

instance HasAvalid Textbox

instance HasAvalid Scroll

instance HasAvalid Image

instance HasAvalid Progress

instance HasAvalid List

instance HasAvalid Tab

instance HasAvalid Card

instance HasAvalid Divider

instance HasAvalid Canvas

instance HasAvalid Password

instance HasAvalid Number

instance HasAvalid Link

instance HasAvalid Repeat

instance HasAvalid Progressring

instance HasAvalid Badge

instance HasAvalid Tooltip

instance HasAvalid Flyout

instance HasAvalid Menufly

instance HasAvalid Dropdown

instance HasAvalid Split

instance HasAvalid Combo

instance HasAvalid Expander

instance HasAvalid Exphead

instance HasAvalid Expbody

instance HasAvalid Infobar

instance HasAvalid Dialog

instance HasAvalid Dialogbody

instance HasAvalid Menubar

instance HasAvalid Menuitem

instance HasAvalid Nav

instance HasAvalid Navitem

instance HasAvalid Tabs

instance HasAvalid Tabitem

instance HasAvalid Listitem

instance HasAvalid Listbox

instance HasAvalid Gridview

instance HasAvalid Repeater

instance HasAvalid Itemsview

instance HasAvalid Flip

instance HasAvalid Pips

instance HasAvalid Suggest

instance HasAvalid Togglesplit

instance HasAvalid Radiogroup

instance HasAvalid Rating

instance HasAvalid Selector

instance HasAvalid Selectoritem

instance HasAvalid Breadcrumb

instance HasAvalid Crumb

instance HasAvalid Teachtip

instance HasAvalid Tree

instance HasAvalid Treeitem

instance HasAvalid Refresh

instance HasAvalid Avatar

instance HasAvalid Pager

instance HasAvalid Splitview

instance HasAvalid Splitpane

instance HasAvalid Splitbody

instance HasAvalid Titlebar

instance HasAvalid Scrollbar

instance HasAvalid Looping

instance HasAvalid Datepicker

instance HasAvalid Timepicker

instance HasAvalid Calendar

instance HasAvalid Colorpicker

instance HasAvalid Colheader

instance HasAvalid Colitem

instance HasAvalid Commandbar

instance HasAvalid Appbarbutton

instance HasAvalid Appbartoggle

instance HasAvalid Appbarsep

instance HasAvalid Groupheader

class HasAperipheral c where
  aperipheral :: P.Bool -> Attr c msg
  aperipheral v = prop #{const XTK_PROP_A11Y_PERIPHERAL} (VBool v)

instance HasAperipheral Container

instance HasAperipheral Text

instance HasAperipheral Button

instance HasAperipheral Toggle

instance HasAperipheral Checkbox

instance HasAperipheral Radio

instance HasAperipheral Switch

instance HasAperipheral Slider

instance HasAperipheral Textbox

instance HasAperipheral Scroll

instance HasAperipheral Image

instance HasAperipheral Progress

instance HasAperipheral List

instance HasAperipheral Tab

instance HasAperipheral Card

instance HasAperipheral Divider

instance HasAperipheral Canvas

instance HasAperipheral Password

instance HasAperipheral Number

instance HasAperipheral Link

instance HasAperipheral Repeat

instance HasAperipheral Progressring

instance HasAperipheral Badge

instance HasAperipheral Tooltip

instance HasAperipheral Flyout

instance HasAperipheral Menufly

instance HasAperipheral Dropdown

instance HasAperipheral Split

instance HasAperipheral Combo

instance HasAperipheral Expander

instance HasAperipheral Exphead

instance HasAperipheral Expbody

instance HasAperipheral Infobar

instance HasAperipheral Dialog

instance HasAperipheral Dialogbody

instance HasAperipheral Menubar

instance HasAperipheral Menuitem

instance HasAperipheral Nav

instance HasAperipheral Navitem

instance HasAperipheral Tabs

instance HasAperipheral Tabitem

instance HasAperipheral Listitem

instance HasAperipheral Listbox

instance HasAperipheral Gridview

instance HasAperipheral Repeater

instance HasAperipheral Itemsview

instance HasAperipheral Flip

instance HasAperipheral Pips

instance HasAperipheral Suggest

instance HasAperipheral Togglesplit

instance HasAperipheral Radiogroup

instance HasAperipheral Rating

instance HasAperipheral Selector

instance HasAperipheral Selectoritem

instance HasAperipheral Breadcrumb

instance HasAperipheral Crumb

instance HasAperipheral Teachtip

instance HasAperipheral Tree

instance HasAperipheral Treeitem

instance HasAperipheral Refresh

instance HasAperipheral Avatar

instance HasAperipheral Pager

instance HasAperipheral Splitview

instance HasAperipheral Splitpane

instance HasAperipheral Splitbody

instance HasAperipheral Titlebar

instance HasAperipheral Scrollbar

instance HasAperipheral Looping

instance HasAperipheral Datepicker

instance HasAperipheral Timepicker

instance HasAperipheral Calendar

instance HasAperipheral Colorpicker

instance HasAperipheral Colheader

instance HasAperipheral Colitem

instance HasAperipheral Commandbar

instance HasAperipheral Appbarbutton

instance HasAperipheral Appbartoggle

instance HasAperipheral Appbarsep

instance HasAperipheral Groupheader

class HasAdialog c where
  adialog :: P.Bool -> Attr c msg
  adialog v = prop #{const XTK_PROP_A11Y_DIALOG} (VBool v)

instance HasAdialog Container

instance HasAdialog Text

instance HasAdialog Button

instance HasAdialog Toggle

instance HasAdialog Checkbox

instance HasAdialog Radio

instance HasAdialog Switch

instance HasAdialog Slider

instance HasAdialog Textbox

instance HasAdialog Scroll

instance HasAdialog Image

instance HasAdialog Progress

instance HasAdialog List

instance HasAdialog Tab

instance HasAdialog Card

instance HasAdialog Divider

instance HasAdialog Canvas

instance HasAdialog Password

instance HasAdialog Number

instance HasAdialog Link

instance HasAdialog Repeat

instance HasAdialog Progressring

instance HasAdialog Badge

instance HasAdialog Tooltip

instance HasAdialog Flyout

instance HasAdialog Menufly

instance HasAdialog Dropdown

instance HasAdialog Split

instance HasAdialog Combo

instance HasAdialog Expander

instance HasAdialog Exphead

instance HasAdialog Expbody

instance HasAdialog Infobar

instance HasAdialog Dialog

instance HasAdialog Dialogbody

instance HasAdialog Menubar

instance HasAdialog Menuitem

instance HasAdialog Nav

instance HasAdialog Navitem

instance HasAdialog Tabs

instance HasAdialog Tabitem

instance HasAdialog Listitem

instance HasAdialog Listbox

instance HasAdialog Gridview

instance HasAdialog Repeater

instance HasAdialog Itemsview

instance HasAdialog Flip

instance HasAdialog Pips

instance HasAdialog Suggest

instance HasAdialog Togglesplit

instance HasAdialog Radiogroup

instance HasAdialog Rating

instance HasAdialog Selector

instance HasAdialog Selectoritem

instance HasAdialog Breadcrumb

instance HasAdialog Crumb

instance HasAdialog Teachtip

instance HasAdialog Tree

instance HasAdialog Treeitem

instance HasAdialog Refresh

instance HasAdialog Avatar

instance HasAdialog Pager

instance HasAdialog Splitview

instance HasAdialog Splitpane

instance HasAdialog Splitbody

instance HasAdialog Titlebar

instance HasAdialog Scrollbar

instance HasAdialog Looping

instance HasAdialog Datepicker

instance HasAdialog Timepicker

instance HasAdialog Calendar

instance HasAdialog Colorpicker

instance HasAdialog Colheader

instance HasAdialog Colitem

instance HasAdialog Commandbar

instance HasAdialog Appbarbutton

instance HasAdialog Appbartoggle

instance HasAdialog Appbarsep

instance HasAdialog Groupheader

class HasApos c where
  apos :: Int32 -> Attr c msg
  apos v = prop #{const XTK_PROP_A11Y_POSITION} (VI32 v)

instance HasApos Container

instance HasApos Text

instance HasApos Button

instance HasApos Toggle

instance HasApos Checkbox

instance HasApos Radio

instance HasApos Switch

instance HasApos Slider

instance HasApos Textbox

instance HasApos Scroll

instance HasApos Image

instance HasApos Progress

instance HasApos List

instance HasApos Tab

instance HasApos Card

instance HasApos Divider

instance HasApos Canvas

instance HasApos Password

instance HasApos Number

instance HasApos Link

instance HasApos Repeat

instance HasApos Progressring

instance HasApos Badge

instance HasApos Tooltip

instance HasApos Flyout

instance HasApos Menufly

instance HasApos Dropdown

instance HasApos Split

instance HasApos Combo

instance HasApos Expander

instance HasApos Exphead

instance HasApos Expbody

instance HasApos Infobar

instance HasApos Dialog

instance HasApos Dialogbody

instance HasApos Menubar

instance HasApos Menuitem

instance HasApos Nav

instance HasApos Navitem

instance HasApos Tabs

instance HasApos Tabitem

instance HasApos Listitem

instance HasApos Listbox

instance HasApos Gridview

instance HasApos Repeater

instance HasApos Itemsview

instance HasApos Flip

instance HasApos Pips

instance HasApos Suggest

instance HasApos Togglesplit

instance HasApos Radiogroup

instance HasApos Rating

instance HasApos Selector

instance HasApos Selectoritem

instance HasApos Breadcrumb

instance HasApos Crumb

instance HasApos Teachtip

instance HasApos Tree

instance HasApos Treeitem

instance HasApos Refresh

instance HasApos Avatar

instance HasApos Pager

instance HasApos Splitview

instance HasApos Splitpane

instance HasApos Splitbody

instance HasApos Titlebar

instance HasApos Scrollbar

instance HasApos Looping

instance HasApos Datepicker

instance HasApos Timepicker

instance HasApos Calendar

instance HasApos Colorpicker

instance HasApos Colheader

instance HasApos Colitem

instance HasApos Commandbar

instance HasApos Appbarbutton

instance HasApos Appbartoggle

instance HasApos Appbarsep

instance HasApos Groupheader

class HasAsize c where
  asize :: Int32 -> Attr c msg
  asize v = prop #{const XTK_PROP_A11Y_SIZE} (VI32 v)

instance HasAsize Container

instance HasAsize Text

instance HasAsize Button

instance HasAsize Toggle

instance HasAsize Checkbox

instance HasAsize Radio

instance HasAsize Switch

instance HasAsize Slider

instance HasAsize Textbox

instance HasAsize Scroll

instance HasAsize Image

instance HasAsize Progress

instance HasAsize List

instance HasAsize Tab

instance HasAsize Card

instance HasAsize Divider

instance HasAsize Canvas

instance HasAsize Password

instance HasAsize Number

instance HasAsize Link

instance HasAsize Repeat

instance HasAsize Progressring

instance HasAsize Badge

instance HasAsize Tooltip

instance HasAsize Flyout

instance HasAsize Menufly

instance HasAsize Dropdown

instance HasAsize Split

instance HasAsize Combo

instance HasAsize Expander

instance HasAsize Exphead

instance HasAsize Expbody

instance HasAsize Infobar

instance HasAsize Dialog

instance HasAsize Dialogbody

instance HasAsize Menubar

instance HasAsize Menuitem

instance HasAsize Nav

instance HasAsize Navitem

instance HasAsize Tabs

instance HasAsize Tabitem

instance HasAsize Listitem

instance HasAsize Listbox

instance HasAsize Gridview

instance HasAsize Repeater

instance HasAsize Itemsview

instance HasAsize Flip

instance HasAsize Pips

instance HasAsize Suggest

instance HasAsize Togglesplit

instance HasAsize Radiogroup

instance HasAsize Rating

instance HasAsize Selector

instance HasAsize Selectoritem

instance HasAsize Breadcrumb

instance HasAsize Crumb

instance HasAsize Teachtip

instance HasAsize Tree

instance HasAsize Treeitem

instance HasAsize Refresh

instance HasAsize Avatar

instance HasAsize Pager

instance HasAsize Splitview

instance HasAsize Splitpane

instance HasAsize Splitbody

instance HasAsize Titlebar

instance HasAsize Scrollbar

instance HasAsize Looping

instance HasAsize Datepicker

instance HasAsize Timepicker

instance HasAsize Calendar

instance HasAsize Colorpicker

instance HasAsize Colheader

instance HasAsize Colitem

instance HasAsize Commandbar

instance HasAsize Appbarbutton

instance HasAsize Appbartoggle

instance HasAsize Appbarsep

instance HasAsize Groupheader

class HasAlevel c where
  alevel :: Int32 -> Attr c msg
  alevel v = prop #{const XTK_PROP_A11Y_LEVEL} (VI32 v)

instance HasAlevel Container

instance HasAlevel Text

instance HasAlevel Button

instance HasAlevel Toggle

instance HasAlevel Checkbox

instance HasAlevel Radio

instance HasAlevel Switch

instance HasAlevel Slider

instance HasAlevel Textbox

instance HasAlevel Scroll

instance HasAlevel Image

instance HasAlevel Progress

instance HasAlevel List

instance HasAlevel Tab

instance HasAlevel Card

instance HasAlevel Divider

instance HasAlevel Canvas

instance HasAlevel Password

instance HasAlevel Number

instance HasAlevel Link

instance HasAlevel Repeat

instance HasAlevel Progressring

instance HasAlevel Badge

instance HasAlevel Tooltip

instance HasAlevel Flyout

instance HasAlevel Menufly

instance HasAlevel Dropdown

instance HasAlevel Split

instance HasAlevel Combo

instance HasAlevel Expander

instance HasAlevel Exphead

instance HasAlevel Expbody

instance HasAlevel Infobar

instance HasAlevel Dialog

instance HasAlevel Dialogbody

instance HasAlevel Menubar

instance HasAlevel Menuitem

instance HasAlevel Nav

instance HasAlevel Navitem

instance HasAlevel Tabs

instance HasAlevel Tabitem

instance HasAlevel Listitem

instance HasAlevel Listbox

instance HasAlevel Gridview

instance HasAlevel Repeater

instance HasAlevel Itemsview

instance HasAlevel Flip

instance HasAlevel Pips

instance HasAlevel Suggest

instance HasAlevel Togglesplit

instance HasAlevel Radiogroup

instance HasAlevel Rating

instance HasAlevel Selector

instance HasAlevel Selectoritem

instance HasAlevel Breadcrumb

instance HasAlevel Crumb

instance HasAlevel Teachtip

instance HasAlevel Tree

instance HasAlevel Treeitem

instance HasAlevel Refresh

instance HasAlevel Avatar

instance HasAlevel Pager

instance HasAlevel Splitview

instance HasAlevel Splitpane

instance HasAlevel Splitbody

instance HasAlevel Titlebar

instance HasAlevel Scrollbar

instance HasAlevel Looping

instance HasAlevel Datepicker

instance HasAlevel Timepicker

instance HasAlevel Calendar

instance HasAlevel Colorpicker

instance HasAlevel Colheader

instance HasAlevel Colitem

instance HasAlevel Commandbar

instance HasAlevel Appbarbutton

instance HasAlevel Appbartoggle

instance HasAlevel Appbarsep

instance HasAlevel Groupheader

class HasAculture c where
  aculture :: Int32 -> Attr c msg
  aculture v = prop #{const XTK_PROP_A11Y_CULTURE} (VI32 v)

instance HasAculture Container

instance HasAculture Text

instance HasAculture Button

instance HasAculture Toggle

instance HasAculture Checkbox

instance HasAculture Radio

instance HasAculture Switch

instance HasAculture Slider

instance HasAculture Textbox

instance HasAculture Scroll

instance HasAculture Image

instance HasAculture Progress

instance HasAculture List

instance HasAculture Tab

instance HasAculture Card

instance HasAculture Divider

instance HasAculture Canvas

instance HasAculture Password

instance HasAculture Number

instance HasAculture Link

instance HasAculture Repeat

instance HasAculture Progressring

instance HasAculture Badge

instance HasAculture Tooltip

instance HasAculture Flyout

instance HasAculture Menufly

instance HasAculture Dropdown

instance HasAculture Split

instance HasAculture Combo

instance HasAculture Expander

instance HasAculture Exphead

instance HasAculture Expbody

instance HasAculture Infobar

instance HasAculture Dialog

instance HasAculture Dialogbody

instance HasAculture Menubar

instance HasAculture Menuitem

instance HasAculture Nav

instance HasAculture Navitem

instance HasAculture Tabs

instance HasAculture Tabitem

instance HasAculture Listitem

instance HasAculture Listbox

instance HasAculture Gridview

instance HasAculture Repeater

instance HasAculture Itemsview

instance HasAculture Flip

instance HasAculture Pips

instance HasAculture Suggest

instance HasAculture Togglesplit

instance HasAculture Radiogroup

instance HasAculture Rating

instance HasAculture Selector

instance HasAculture Selectoritem

instance HasAculture Breadcrumb

instance HasAculture Crumb

instance HasAculture Teachtip

instance HasAculture Tree

instance HasAculture Treeitem

instance HasAculture Refresh

instance HasAculture Avatar

instance HasAculture Pager

instance HasAculture Splitview

instance HasAculture Splitpane

instance HasAculture Splitbody

instance HasAculture Titlebar

instance HasAculture Scrollbar

instance HasAculture Looping

instance HasAculture Datepicker

instance HasAculture Timepicker

instance HasAculture Calendar

instance HasAculture Colorpicker

instance HasAculture Colheader

instance HasAculture Colitem

instance HasAculture Commandbar

instance HasAculture Appbarbutton

instance HasAculture Appbartoggle

instance HasAculture Appbarsep

instance HasAculture Groupheader

class HasAlabel c where
  alabel :: T.Text -> Attr c msg
  alabel v = prop #{const XTK_PROP_A11Y_LABELED_BY} (VStr v)

instance HasAlabel Container

instance HasAlabel Text

instance HasAlabel Button

instance HasAlabel Toggle

instance HasAlabel Checkbox

instance HasAlabel Radio

instance HasAlabel Switch

instance HasAlabel Slider

instance HasAlabel Textbox

instance HasAlabel Scroll

instance HasAlabel Image

instance HasAlabel Progress

instance HasAlabel List

instance HasAlabel Tab

instance HasAlabel Card

instance HasAlabel Divider

instance HasAlabel Canvas

instance HasAlabel Password

instance HasAlabel Number

instance HasAlabel Link

instance HasAlabel Repeat

instance HasAlabel Progressring

instance HasAlabel Badge

instance HasAlabel Tooltip

instance HasAlabel Flyout

instance HasAlabel Menufly

instance HasAlabel Dropdown

instance HasAlabel Split

instance HasAlabel Combo

instance HasAlabel Expander

instance HasAlabel Exphead

instance HasAlabel Expbody

instance HasAlabel Infobar

instance HasAlabel Dialog

instance HasAlabel Dialogbody

instance HasAlabel Menubar

instance HasAlabel Menuitem

instance HasAlabel Nav

instance HasAlabel Navitem

instance HasAlabel Tabs

instance HasAlabel Tabitem

instance HasAlabel Listitem

instance HasAlabel Listbox

instance HasAlabel Gridview

instance HasAlabel Repeater

instance HasAlabel Itemsview

instance HasAlabel Flip

instance HasAlabel Pips

instance HasAlabel Suggest

instance HasAlabel Togglesplit

instance HasAlabel Radiogroup

instance HasAlabel Rating

instance HasAlabel Selector

instance HasAlabel Selectoritem

instance HasAlabel Breadcrumb

instance HasAlabel Crumb

instance HasAlabel Teachtip

instance HasAlabel Tree

instance HasAlabel Treeitem

instance HasAlabel Refresh

instance HasAlabel Avatar

instance HasAlabel Pager

instance HasAlabel Splitview

instance HasAlabel Splitpane

instance HasAlabel Splitbody

instance HasAlabel Titlebar

instance HasAlabel Scrollbar

instance HasAlabel Looping

instance HasAlabel Datepicker

instance HasAlabel Timepicker

instance HasAlabel Calendar

instance HasAlabel Colorpicker

instance HasAlabel Colheader

instance HasAlabel Colitem

instance HasAlabel Commandbar

instance HasAlabel Appbarbutton

instance HasAlabel Appbartoggle

instance HasAlabel Appbarsep

instance HasAlabel Groupheader

class HasAdescribed c where
  adescribed :: T.Text -> Attr c msg
  adescribed v = prop #{const XTK_PROP_A11Y_DESCRIBED_BY} (VStr v)

instance HasAdescribed Container

instance HasAdescribed Text

instance HasAdescribed Button

instance HasAdescribed Toggle

instance HasAdescribed Checkbox

instance HasAdescribed Radio

instance HasAdescribed Switch

instance HasAdescribed Slider

instance HasAdescribed Textbox

instance HasAdescribed Scroll

instance HasAdescribed Image

instance HasAdescribed Progress

instance HasAdescribed List

instance HasAdescribed Tab

instance HasAdescribed Card

instance HasAdescribed Divider

instance HasAdescribed Canvas

instance HasAdescribed Password

instance HasAdescribed Number

instance HasAdescribed Link

instance HasAdescribed Repeat

instance HasAdescribed Progressring

instance HasAdescribed Badge

instance HasAdescribed Tooltip

instance HasAdescribed Flyout

instance HasAdescribed Menufly

instance HasAdescribed Dropdown

instance HasAdescribed Split

instance HasAdescribed Combo

instance HasAdescribed Expander

instance HasAdescribed Exphead

instance HasAdescribed Expbody

instance HasAdescribed Infobar

instance HasAdescribed Dialog

instance HasAdescribed Dialogbody

instance HasAdescribed Menubar

instance HasAdescribed Menuitem

instance HasAdescribed Nav

instance HasAdescribed Navitem

instance HasAdescribed Tabs

instance HasAdescribed Tabitem

instance HasAdescribed Listitem

instance HasAdescribed Listbox

instance HasAdescribed Gridview

instance HasAdescribed Repeater

instance HasAdescribed Itemsview

instance HasAdescribed Flip

instance HasAdescribed Pips

instance HasAdescribed Suggest

instance HasAdescribed Togglesplit

instance HasAdescribed Radiogroup

instance HasAdescribed Rating

instance HasAdescribed Selector

instance HasAdescribed Selectoritem

instance HasAdescribed Breadcrumb

instance HasAdescribed Crumb

instance HasAdescribed Teachtip

instance HasAdescribed Tree

instance HasAdescribed Treeitem

instance HasAdescribed Refresh

instance HasAdescribed Avatar

instance HasAdescribed Pager

instance HasAdescribed Splitview

instance HasAdescribed Splitpane

instance HasAdescribed Splitbody

instance HasAdescribed Titlebar

instance HasAdescribed Scrollbar

instance HasAdescribed Looping

instance HasAdescribed Datepicker

instance HasAdescribed Timepicker

instance HasAdescribed Calendar

instance HasAdescribed Colorpicker

instance HasAdescribed Colheader

instance HasAdescribed Colitem

instance HasAdescribed Commandbar

instance HasAdescribed Appbarbutton

instance HasAdescribed Appbartoggle

instance HasAdescribed Appbarsep

instance HasAdescribed Groupheader

class HasAflowsto c where
  aflowsto :: T.Text -> Attr c msg
  aflowsto v = prop #{const XTK_PROP_A11Y_FLOWS_TO} (VStr v)

instance HasAflowsto Container

instance HasAflowsto Text

instance HasAflowsto Button

instance HasAflowsto Toggle

instance HasAflowsto Checkbox

instance HasAflowsto Radio

instance HasAflowsto Switch

instance HasAflowsto Slider

instance HasAflowsto Textbox

instance HasAflowsto Scroll

instance HasAflowsto Image

instance HasAflowsto Progress

instance HasAflowsto List

instance HasAflowsto Tab

instance HasAflowsto Card

instance HasAflowsto Divider

instance HasAflowsto Canvas

instance HasAflowsto Password

instance HasAflowsto Number

instance HasAflowsto Link

instance HasAflowsto Repeat

instance HasAflowsto Progressring

instance HasAflowsto Badge

instance HasAflowsto Tooltip

instance HasAflowsto Flyout

instance HasAflowsto Menufly

instance HasAflowsto Dropdown

instance HasAflowsto Split

instance HasAflowsto Combo

instance HasAflowsto Expander

instance HasAflowsto Exphead

instance HasAflowsto Expbody

instance HasAflowsto Infobar

instance HasAflowsto Dialog

instance HasAflowsto Dialogbody

instance HasAflowsto Menubar

instance HasAflowsto Menuitem

instance HasAflowsto Nav

instance HasAflowsto Navitem

instance HasAflowsto Tabs

instance HasAflowsto Tabitem

instance HasAflowsto Listitem

instance HasAflowsto Listbox

instance HasAflowsto Gridview

instance HasAflowsto Repeater

instance HasAflowsto Itemsview

instance HasAflowsto Flip

instance HasAflowsto Pips

instance HasAflowsto Suggest

instance HasAflowsto Togglesplit

instance HasAflowsto Radiogroup

instance HasAflowsto Rating

instance HasAflowsto Selector

instance HasAflowsto Selectoritem

instance HasAflowsto Breadcrumb

instance HasAflowsto Crumb

instance HasAflowsto Teachtip

instance HasAflowsto Tree

instance HasAflowsto Treeitem

instance HasAflowsto Refresh

instance HasAflowsto Avatar

instance HasAflowsto Pager

instance HasAflowsto Splitview

instance HasAflowsto Splitpane

instance HasAflowsto Splitbody

instance HasAflowsto Titlebar

instance HasAflowsto Scrollbar

instance HasAflowsto Looping

instance HasAflowsto Datepicker

instance HasAflowsto Timepicker

instance HasAflowsto Calendar

instance HasAflowsto Colorpicker

instance HasAflowsto Colheader

instance HasAflowsto Colitem

instance HasAflowsto Commandbar

instance HasAflowsto Appbarbutton

instance HasAflowsto Appbartoggle

instance HasAflowsto Appbarsep

instance HasAflowsto Groupheader

class HasAflowsfrom c where
  aflowsfrom :: T.Text -> Attr c msg
  aflowsfrom v = prop #{const XTK_PROP_A11Y_FLOWS_FROM} (VStr v)

instance HasAflowsfrom Container

instance HasAflowsfrom Text

instance HasAflowsfrom Button

instance HasAflowsfrom Toggle

instance HasAflowsfrom Checkbox

instance HasAflowsfrom Radio

instance HasAflowsfrom Switch

instance HasAflowsfrom Slider

instance HasAflowsfrom Textbox

instance HasAflowsfrom Scroll

instance HasAflowsfrom Image

instance HasAflowsfrom Progress

instance HasAflowsfrom List

instance HasAflowsfrom Tab

instance HasAflowsfrom Card

instance HasAflowsfrom Divider

instance HasAflowsfrom Canvas

instance HasAflowsfrom Password

instance HasAflowsfrom Number

instance HasAflowsfrom Link

instance HasAflowsfrom Repeat

instance HasAflowsfrom Progressring

instance HasAflowsfrom Badge

instance HasAflowsfrom Tooltip

instance HasAflowsfrom Flyout

instance HasAflowsfrom Menufly

instance HasAflowsfrom Dropdown

instance HasAflowsfrom Split

instance HasAflowsfrom Combo

instance HasAflowsfrom Expander

instance HasAflowsfrom Exphead

instance HasAflowsfrom Expbody

instance HasAflowsfrom Infobar

instance HasAflowsfrom Dialog

instance HasAflowsfrom Dialogbody

instance HasAflowsfrom Menubar

instance HasAflowsfrom Menuitem

instance HasAflowsfrom Nav

instance HasAflowsfrom Navitem

instance HasAflowsfrom Tabs

instance HasAflowsfrom Tabitem

instance HasAflowsfrom Listitem

instance HasAflowsfrom Listbox

instance HasAflowsfrom Gridview

instance HasAflowsfrom Repeater

instance HasAflowsfrom Itemsview

instance HasAflowsfrom Flip

instance HasAflowsfrom Pips

instance HasAflowsfrom Suggest

instance HasAflowsfrom Togglesplit

instance HasAflowsfrom Radiogroup

instance HasAflowsfrom Rating

instance HasAflowsfrom Selector

instance HasAflowsfrom Selectoritem

instance HasAflowsfrom Breadcrumb

instance HasAflowsfrom Crumb

instance HasAflowsfrom Teachtip

instance HasAflowsfrom Tree

instance HasAflowsfrom Treeitem

instance HasAflowsfrom Refresh

instance HasAflowsfrom Avatar

instance HasAflowsfrom Pager

instance HasAflowsfrom Splitview

instance HasAflowsfrom Splitpane

instance HasAflowsfrom Splitbody

instance HasAflowsfrom Titlebar

instance HasAflowsfrom Scrollbar

instance HasAflowsfrom Looping

instance HasAflowsfrom Datepicker

instance HasAflowsfrom Timepicker

instance HasAflowsfrom Calendar

instance HasAflowsfrom Colorpicker

instance HasAflowsfrom Colheader

instance HasAflowsfrom Colitem

instance HasAflowsfrom Commandbar

instance HasAflowsfrom Appbarbutton

instance HasAflowsfrom Appbartoggle

instance HasAflowsfrom Appbarsep

instance HasAflowsfrom Groupheader

class HasAcontrols c where
  acontrols :: T.Text -> Attr c msg
  acontrols v = prop #{const XTK_PROP_A11Y_CONTROLLED} (VStr v)

instance HasAcontrols Container

instance HasAcontrols Text

instance HasAcontrols Button

instance HasAcontrols Toggle

instance HasAcontrols Checkbox

instance HasAcontrols Radio

instance HasAcontrols Switch

instance HasAcontrols Slider

instance HasAcontrols Textbox

instance HasAcontrols Scroll

instance HasAcontrols Image

instance HasAcontrols Progress

instance HasAcontrols List

instance HasAcontrols Tab

instance HasAcontrols Card

instance HasAcontrols Divider

instance HasAcontrols Canvas

instance HasAcontrols Password

instance HasAcontrols Number

instance HasAcontrols Link

instance HasAcontrols Repeat

instance HasAcontrols Progressring

instance HasAcontrols Badge

instance HasAcontrols Tooltip

instance HasAcontrols Flyout

instance HasAcontrols Menufly

instance HasAcontrols Dropdown

instance HasAcontrols Split

instance HasAcontrols Combo

instance HasAcontrols Expander

instance HasAcontrols Exphead

instance HasAcontrols Expbody

instance HasAcontrols Infobar

instance HasAcontrols Dialog

instance HasAcontrols Dialogbody

instance HasAcontrols Menubar

instance HasAcontrols Menuitem

instance HasAcontrols Nav

instance HasAcontrols Navitem

instance HasAcontrols Tabs

instance HasAcontrols Tabitem

instance HasAcontrols Listitem

instance HasAcontrols Listbox

instance HasAcontrols Gridview

instance HasAcontrols Repeater

instance HasAcontrols Itemsview

instance HasAcontrols Flip

instance HasAcontrols Pips

instance HasAcontrols Suggest

instance HasAcontrols Togglesplit

instance HasAcontrols Radiogroup

instance HasAcontrols Rating

instance HasAcontrols Selector

instance HasAcontrols Selectoritem

instance HasAcontrols Breadcrumb

instance HasAcontrols Crumb

instance HasAcontrols Teachtip

instance HasAcontrols Tree

instance HasAcontrols Treeitem

instance HasAcontrols Refresh

instance HasAcontrols Avatar

instance HasAcontrols Pager

instance HasAcontrols Splitview

instance HasAcontrols Splitpane

instance HasAcontrols Splitbody

instance HasAcontrols Titlebar

instance HasAcontrols Scrollbar

instance HasAcontrols Looping

instance HasAcontrols Datepicker

instance HasAcontrols Timepicker

instance HasAcontrols Calendar

instance HasAcontrols Colorpicker

instance HasAcontrols Colheader

instance HasAcontrols Colitem

instance HasAcontrols Commandbar

instance HasAcontrols Appbarbutton

instance HasAcontrols Appbartoggle

instance HasAcontrols Appbarsep

instance HasAcontrols Groupheader

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

class HasDrop c where
  drop :: DropOperation -> Attr c msg
  drop v = prop #{const XTK_PROP_DROP_OPERATION} (VEnum (toC v))

instance HasDrop Container

instance HasDrop Card

instance HasDrop Expbody

instance HasDrop Dialogbody

instance HasDrop Splitpane

instance HasDrop Splitbody

class HasDragtext c where
  dragtext :: T.Text -> Attr c msg
  dragtext v = prop #{const XTK_PROP_DRAG_TEXT} (VStr v)

instance HasDragtext Container

instance HasDragtext Card

instance HasDragtext Expbody

instance HasDragtext Dialogbody

instance HasDragtext Splitpane

instance HasDragtext Splitbody

class HasDragfiles c where
  dragfiles :: T.Text -> Attr c msg
  dragfiles v = prop #{const XTK_PROP_DRAG_FILES} (VStr v)

instance HasDragfiles Container

instance HasDragfiles Card

instance HasDragfiles Expbody

instance HasDragfiles Dialogbody

instance HasDragfiles Splitpane

instance HasDragfiles Splitbody

class HasFlow c where
  flow :: Direction -> Attr c msg
  flow v = prop #{const XTK_PROP_FLOW_DIRECTION} (VEnum (toC v))

instance HasFlow Container

instance HasFlow Card

instance HasFlow Expbody

instance HasFlow Dialogbody

instance HasFlow Splitpane

instance HasFlow Splitbody

class HasOnDraghover c where
  onDraghover :: (P.Bool -> msg) -> Attr c msg
  onDraghover f = on #{const XTK_EVENT_DRAG_HOVER} (HBool f)

instance HasOnDraghover Container

instance HasOnDraghover Card

instance HasOnDraghover Expbody

instance HasOnDraghover Dialogbody

instance HasOnDraghover Splitpane

instance HasOnDraghover Splitbody

class HasOnDropfiles c where
  onDropfiles :: (T.Text -> msg) -> Attr c msg
  onDropfiles f = on #{const XTK_EVENT_DROP_FILES} (HStr f)

instance HasOnDropfiles Container

instance HasOnDropfiles Card

instance HasOnDropfiles Expbody

instance HasOnDropfiles Dialogbody

instance HasOnDropfiles Splitpane

instance HasOnDropfiles Splitbody

class HasOnDroptext c where
  onDroptext :: (T.Text -> msg) -> Attr c msg
  onDroptext f = on #{const XTK_EVENT_DROP_TEXT} (HStr f)

instance HasOnDroptext Container

instance HasOnDroptext Card

instance HasOnDroptext Expbody

instance HasOnDroptext Dialogbody

instance HasOnDroptext Splitpane

instance HasOnDroptext Splitbody

class HasOnDragcompleted c where
  onDragcompleted :: (Int32 -> msg) -> Attr c msg
  onDragcompleted f = on #{const XTK_EVENT_DRAG_COMPLETED} (HI32 f)

instance HasOnDragcompleted Container

instance HasOnDragcompleted Card

instance HasOnDragcompleted Expbody

instance HasOnDragcompleted Dialogbody

instance HasOnDragcompleted Splitpane

instance HasOnDragcompleted Splitbody

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

class HasNl c where
  nl :: P.Float -> Attr c msg
  nl v = prop #{const XTK_PROP_NINE_GRID_LEFT} (VF32 v)

instance HasNl Image

class HasNt c where
  nt :: P.Float -> Attr c msg
  nt v = prop #{const XTK_PROP_NINE_GRID_TOP} (VF32 v)

instance HasNt Image

class HasNr c where
  nr :: P.Float -> Attr c msg
  nr v = prop #{const XTK_PROP_NINE_GRID_RIGHT} (VF32 v)

instance HasNr Image

class HasNb c where
  nb :: P.Float -> Attr c msg
  nb v = prop #{const XTK_PROP_NINE_GRID_BOTTOM} (VF32 v)

instance HasNb Image

class HasOnOpened c where
  onOpened :: msg -> Attr c msg
  onOpened m = on #{const XTK_EVENT_IMAGE_OPENED} (HValue m)

instance HasOnOpened Image

class HasOnFailed c where
  onFailed :: msg -> Attr c msg
  onFailed m = on #{const XTK_EVENT_IMAGE_FAILED} (HValue m)

instance HasOnFailed Image

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

class HasRectsel c where
  rectsel :: P.Bool -> Attr c msg
  rectsel v = prop #{const XTK_PROP_RECTANGLE_SELECTION} (VBool v)

instance HasRectsel List

instance HasRectsel Listbox

instance HasRectsel Gridview

instance HasRectsel Repeater

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

class HasDefault_button c where
  default_button :: DialogButton -> Attr c msg
  default_button v = prop #{const XTK_PROP_DIALOG_DEFAULT_BUTTON} (VEnum (toC v))

instance HasDefault_button Dialog

class HasDisplay c where
  type DisplayV c
  display :: DisplayV c -> Attr c msg

instance HasDisplay Nav where
  type DisplayV Nav = NavPaneMode
  display v = prop #{const XTK_PROP_DISPLAY_MODE} (VEnum (toC v))

instance HasDisplay Pager where
  type DisplayV Pager = PagerDisplayMode
  display v = prop #{const XTK_PROP_DISPLAY_MODE} (VEnum (toC v))

instance HasDisplay Splitview where
  type DisplayV Splitview = SplitViewDisplayMode
  display v = prop #{const XTK_PROP_DISPLAY_MODE} (VEnum (toC v))

class HasSettings_visible c where
  settings_visible :: P.Bool -> Attr c msg
  settings_visible v = prop #{const XTK_PROP_SETTINGS_VISIBLE} (VBool v)

instance HasSettings_visible Nav

class HasPane_title c where
  pane_title :: T.Text -> Attr c msg
  pane_title v = prop #{const XTK_PROP_PANE_TITLE} (VStr v)

instance HasPane_title Nav

class HasAlways_show_header c where
  always_show_header :: P.Bool -> Attr c msg
  always_show_header v = prop #{const XTK_PROP_ALWAYS_SHOW_HEADER} (VBool v)

instance HasAlways_show_header Nav

class HasBack_button c where
  back_button :: NavBackButton -> Attr c msg
  back_button v = prop #{const XTK_PROP_NAV_BACK_BUTTON} (VEnum (toC v))

instance HasBack_button Nav

class HasBack_enabled c where
  back_enabled :: P.Bool -> Attr c msg
  back_enabled v = prop #{const XTK_PROP_NAV_BACK_ENABLED} (VBool v)

instance HasBack_enabled Nav

class HasOnBackrequested c where
  onBackrequested :: msg -> Attr c msg
  onBackrequested m = on #{const XTK_EVENT_BACK_REQUESTED} (HValue m)

instance HasOnBackrequested Nav

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

class HasBadgeimage c where
  badgeimage :: Word64 -> Attr c msg
  badgeimage v = prop #{const XTK_PROP_BADGE_IMAGE_SOURCE} (VRes v)

instance HasBadgeimage Avatar

class HasBadgetext c where
  badgetext :: T.Text -> Attr c msg
  badgetext v = prop #{const XTK_PROP_BADGE_TEXT} (VStr v)

instance HasBadgetext Avatar

class HasGroup c where
  group :: P.Bool -> Attr c msg
  group v = prop #{const XTK_PROP_IS_GROUP} (VBool v)

instance HasGroup Avatar

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

class HasHideends c where
  hideends :: P.Bool -> Attr c msg
  hideends v = prop #{const XTK_PROP_HIDE_ENDS} (VBool v)

instance HasHideends Pager

class HasOpenlen c where
  openlen :: P.Float -> Attr c msg
  openlen v = prop #{const XTK_PROP_OPEN_PANE_LENGTH} (VF32 v)

instance HasOpenlen Splitview

class HasCompactlen c where
  compactlen :: P.Float -> Attr c msg
  compactlen v = prop #{const XTK_PROP_COMPACT_PANE_LENGTH} (VF32 v)

instance HasCompactlen Splitview

class HasOnOpen c where
  onOpen :: (P.Bool -> msg) -> Attr c msg
  onOpen f = on #{const XTK_EVENT_OPEN} (HBool f)

instance HasOnOpen Splitview

instance HasOnOpen Commandbar

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

class HasSlot c where
  slot :: NavSlot -> Attr c msg
  slot v = prop #{const XTK_PROP_NAV_SLOT} (VEnum (toC v))

instance HasSlot Navslot

class HasVirtualItems c where
  virtualItems :: P.Int -> (P.Int -> El msg) -> Attr c msg
  virtualItems = items_

instance HasVirtualItems List

instance HasVirtualItems Listbox

instance HasVirtualItems Gridview

instance HasVirtualItems Repeater

instance HasVirtualItems Itemsview
