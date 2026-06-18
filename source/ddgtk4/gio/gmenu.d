module ddgtk4.gio.gmenu;

import ddgtk4.glib.gtypes : gint, gchar;
import ddgtk4.glib.gvariant : GVariant;
import ddgtk4.gio.giotypes : GMenuModel, GIcon;

struct GMenu;
struct GMenuItem;

// Macros

// Functions
extern (C)
{
    alias A_g_menu_new = GMenu* function();
    alias A_g_menu_insert_item = void function(GMenu *menu, gint position, GMenuItem *item);
    alias A_g_menu_append_item = void function(GMenu*, GMenuItem*);
    alias A_g_menu_item_new = GMenuItem* function(const(gchar) *label, const(gchar) *detailed_action);
    alias A_g_menu_item_new_submenu = GMenuItem* function(const(gchar) *label, GMenuModel *submenu);
    alias A_g_menu_item_set_icon = void function(GMenuItem*, GIcon*);
    alias A_g_menu_item_set_attribute_value = void function(GMenuItem *menu_item, const(gchar) *attribute, GVariant *value);
}

__gshared
{
    A_g_menu_new g_menu_new;
    A_g_menu_insert_item g_menu_insert_item;
    A_g_menu_append_item g_menu_append_item;
    A_g_menu_item_new g_menu_item_new;
    A_g_menu_item_new_submenu g_menu_item_new_submenu;
    A_g_menu_item_set_icon g_menu_item_set_icon;
    A_g_menu_item_set_attribute_value g_menu_item_set_attribute_value;
}