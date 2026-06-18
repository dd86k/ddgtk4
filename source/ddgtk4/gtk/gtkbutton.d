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
{
    alias A_gtk_button_new = GtkWidget* function();
    alias A_gtk_button_new_with_label = GtkWidget* function(const(char)* label);
    alias A_gtk_button_new_from_icon_name = GtkWidget* function(const(char)* label);
    alias A_gtk_button_set_icon_name = void function(GtkButton*, const(char)*);
    alias A_gtk_button_set_label = void function(GtkButton*, const(char)*);
    alias A_gtk_button_set_has_frame = void function(GtkButton*, gboolean);
}

__gshared
{
    A_gtk_button_new gtk_button_new;
    A_gtk_button_new_with_label gtk_button_new_with_label;
    A_gtk_button_new_from_icon_name gtk_button_new_from_icon_name;
    A_gtk_button_set_icon_name gtk_button_set_icon_name;
    A_gtk_button_set_label gtk_button_set_label;
    A_gtk_button_set_has_frame gtk_button_set_has_frame;
}