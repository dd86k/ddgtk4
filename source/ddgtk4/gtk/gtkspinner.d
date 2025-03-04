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
__gshared
{
    GtkWidget* function() gtk_spinner_new;
    gboolean function(GtkSpinner*) gtk_spinner_get_spinning;
    void function(GtkSpinner*, gboolean) gtk_spinner_set_spinning;
    void function(GtkSpinner*) gtk_spinner_start;
    void function(GtkSpinner*) gtk_spinner_stop;
}