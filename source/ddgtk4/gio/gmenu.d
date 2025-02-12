module ddgtk4.gio.gmenu;

import ddgtk4.glib.gtypes : gint, gchar;
import ddgtk4.gio.giotypes : GMenuModel, GIcon;

struct GMenu;
struct GMenuItem;

// Macros

// Functions
extern (C)
__gshared
{
    GMenu* function() g_menu_new;
    
    void function(GMenu       *menu,
                  gint         position,
                  GMenuItem   *item) g_menu_insert_item;
    void function(GMenu*, GMenuItem*) g_menu_append_item;
    
    GMenuItem* function(const(gchar) *label,
                        const(gchar) *detailed_action) g_menu_item_new;
    
    GMenuItem* function(const(gchar) *label,
                        GMenuModel   *submenu) g_menu_item_new_submenu;
    
    void function(GMenuItem*, GIcon*) g_menu_item_set_icon;
}