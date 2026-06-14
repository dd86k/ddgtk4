module ddgtk4.gtk.gtkmenubutton;

public import ddgtk4.gtk.gtkwidget  : GtkWidget;
public import ddgtk4.gtk.gtkenums   : GtkArrowType;
public import ddgtk4.gtk.gtkpopover : GtkPopover;
public import ddgtk4.glib.gtypes    : gboolean;
public import ddgtk4.gio.giotypes   : GMenuModel;

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
    pragma(mangle, "ddgtk4_gtk_menu_button_new")
    GtkWidget* function() gtk_menu_button_new;
    pragma(mangle, "ddgtk4_gtk_menu_button_set_direction")
    void function(GtkMenuButton*, GtkArrowType) gtk_menu_button_set_direction;
    pragma(mangle, "ddgtk4_gtk_menu_button_set_icon_name")
    void function(GtkMenuButton*, const(char)*) gtk_menu_button_set_icon_name;
    pragma(mangle, "ddgtk4_gtk_menu_button_set_menu_model")
    void function(GtkMenuButton*, GMenuModel*) gtk_menu_button_set_menu_model;
    pragma(mangle, "ddgtk4_gtk_menu_button_set_popover")
    void function(GtkMenuButton*, GtkWidget*) gtk_menu_button_set_popover;
}