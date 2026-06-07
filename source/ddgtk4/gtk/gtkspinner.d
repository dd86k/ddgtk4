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
    pragma(mangle, "ddgtk4_gtk_spinner_new")
    GtkWidget* function() gtk_spinner_new;
    pragma(mangle, "ddgtk4_gtk_spinner_get_spinning")
    gboolean function(GtkSpinner*) gtk_spinner_get_spinning;
    pragma(mangle, "ddgtk4_gtk_spinner_set_spinning")
    void function(GtkSpinner*, gboolean) gtk_spinner_set_spinning;
    pragma(mangle, "ddgtk4_gtk_spinner_start")
    void function(GtkSpinner*) gtk_spinner_start;
    pragma(mangle, "ddgtk4_gtk_spinner_stop")
    void function(GtkSpinner*) gtk_spinner_stop;
}