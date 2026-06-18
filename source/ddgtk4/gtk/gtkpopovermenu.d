module ddgtk4.gtk.gtkpopovermenu;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtkenums  : GtkPopoverMenuFlags;
public import ddgtk4.glib.gtypes   : gboolean;
public import ddgtk4.gio.giotypes  : GMenuModel;

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
{
    alias A_gtk_popover_menu_new_from_model = GtkWidget* function(GMenuModel*);
    alias A_gtk_popover_menu_bar_new_from_model = GtkWidget* function(GMenuModel*);
    alias A_gtk_popover_menu_new_from_model_full = GtkWidget* function(GMenuModel*, GtkPopoverMenuFlags);
    alias A_gtk_popover_menu_add_child = gboolean function(GtkPopoverMenu*, GtkWidget*, const(char)*);
}

__gshared
{
    A_gtk_popover_menu_new_from_model gtk_popover_menu_new_from_model;
    A_gtk_popover_menu_bar_new_from_model gtk_popover_menu_bar_new_from_model;
    A_gtk_popover_menu_new_from_model_full gtk_popover_menu_new_from_model_full;
    A_gtk_popover_menu_add_child gtk_popover_menu_add_child;
}
