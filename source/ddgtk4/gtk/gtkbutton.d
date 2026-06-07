module ddgtk4.gtk.gtkbutton;

import ddgtk4.gtk.gtkwidget;
import ddgtk4.glib.gtypes : gboolean;

struct GtkButton;

// Macros
pragma(inline, true)
{
    GtkButton* GTK_BUTTON(void *w)
    {
        return cast(GtkButton*)w;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_button_new")
    GtkWidget* function() gtk_button_new;
    pragma(mangle, "ddgtk4_gtk_button_new_with_label")
    GtkWidget* function(const(char)* label) gtk_button_new_with_label;
    pragma(mangle, "ddgtk4_gtk_button_new_from_icon_name")
    GtkWidget* function(const(char)* label) gtk_button_new_from_icon_name;
    pragma(mangle, "ddgtk4_gtk_button_set_icon_name")
    void function(GtkButton*, const(char)*) gtk_button_set_icon_name;
    pragma(mangle, "ddgtk4_gtk_button_set_label")
    void function(GtkButton*, const(char)*) gtk_button_set_label;
    pragma(mangle, "ddgtk4_gtk_button_set_has_frame")
    void function(GtkButton*, gboolean) gtk_button_set_has_frame;
}