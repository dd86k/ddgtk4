module ddgtk4.gtk.gtkspinner;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes : gboolean;

struct GtkSpinner;

// Macros
pragma(inline, true)
{
    GtkSpinner* GTK_SPINNER(void *o)
    {
        return cast(GtkSpinner*)o;
    }
}

// Functions
extern (C)
{
    alias A_gtk_spinner_new = GtkWidget* function();
    alias A_gtk_spinner_get_spinning = gboolean function(GtkSpinner*);
    alias A_gtk_spinner_set_spinning = void function(GtkSpinner*, gboolean);
    alias A_gtk_spinner_start = void function(GtkSpinner*);
    alias A_gtk_spinner_stop = void function(GtkSpinner*);
}

__gshared
{
    A_gtk_spinner_new gtk_spinner_new;
    A_gtk_spinner_get_spinning gtk_spinner_get_spinning;
    A_gtk_spinner_set_spinning gtk_spinner_set_spinning;
    A_gtk_spinner_start gtk_spinner_start;
    A_gtk_spinner_stop gtk_spinner_stop;
}