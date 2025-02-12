module ddgtk4.gtk.gtkmenubutton;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.gtk.gtkenums  : GtkArrowType;
import ddgtk4.glib.gtypes   : gboolean;
import ddgtk4.gio.giotypes  : GMenuModel;

struct GtkMenuButton;

// Macros
pragma(inline, true)
{
    GtkMenuButton* GTK_MENU_BUTTON(void *o)
    {
        return cast(GtkMenuButton*)o;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function() gtk_menu_button_new;
    
    void function(GtkMenuButton*, GtkArrowType) gtk_menu_button_set_direction;
    
    void function(GtkMenuButton*, const(char)*) gtk_menu_button_set_icon_name;
    
    void function(GtkMenuButton*, GMenuModel*) gtk_menu_button_set_menu_model;
}