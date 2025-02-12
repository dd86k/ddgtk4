module ddgtk4.gtk.gtkpopovermenu;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.gtk.gtkenums  : GtkPopoverMenuFlags;
import ddgtk4.glib.gtypes   : gboolean;
import ddgtk4.gio.giotypes  : GMenuModel;

struct GtkPopoverMenu;

// Macros
pragma(inline, true)
{
    GtkPopoverMenu* GTK_POPOVER_MENU(GtkWidget *w)
    {
        return cast(GtkPopoverMenu*)w;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function(GMenuModel*) gtk_popover_menu_new_from_model;
    GtkWidget* function(GMenuModel*) gtk_popover_menu_bar_new_from_model;
    GtkWidget* function(GMenuModel*, GtkPopoverMenuFlags) gtk_popover_menu_new_from_model_full;
    
    gboolean function(GtkPopoverMenu*, GtkWidget*, const(char)*) gtk_popover_menu_add_child;
}
