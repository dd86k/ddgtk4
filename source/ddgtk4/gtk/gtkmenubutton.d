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
{
    alias A_gtk_menu_button_new = GtkWidget* function();
    alias A_gtk_menu_button_set_direction = void function(GtkMenuButton*, GtkArrowType);
    alias A_gtk_menu_button_set_icon_name = void function(GtkMenuButton*, const(char)*);
    alias A_gtk_menu_button_set_menu_model = void function(GtkMenuButton*, GMenuModel*);
    alias A_gtk_menu_button_set_popover = void function(GtkMenuButton*, GtkWidget*);
}

__gshared
{
    A_gtk_menu_button_new gtk_menu_button_new;
    A_gtk_menu_button_set_direction gtk_menu_button_set_direction;
    A_gtk_menu_button_set_icon_name gtk_menu_button_set_icon_name;
    A_gtk_menu_button_set_menu_model gtk_menu_button_set_menu_model;
    A_gtk_menu_button_set_popover gtk_menu_button_set_popover;
}