module ddgtk4.gtk.gtkswitch;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes : gboolean;

struct GtkSwitch;

// Macros
pragma(inline, true)
{
    GtkSwitch* GTK_SWITCH(GtkWidget *w)
    {
        return cast(GtkSwitch*)w;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_switch_new")
    GtkWidget* function() gtk_switch_new;
    pragma(mangle, "ddgtk4_gtk_switch_set_state")
    void function(GtkSwitch*, gboolean) gtk_switch_set_state;
    pragma(mangle, "ddgtk4_gtk_switch_get_state")
    gboolean function(GtkSwitch*) gtk_switch_get_state;
    pragma(mangle, "ddgtk4_gtk_switch_set_active")
    void function(GtkSwitch*, gboolean) gtk_switch_set_active;
    pragma(mangle, "ddgtk4_gtk_switch_get_active")
    gboolean function(GtkSwitch*) gtk_switch_get_active;
}

