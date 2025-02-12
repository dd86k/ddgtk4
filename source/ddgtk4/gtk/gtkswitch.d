module ddgtk4.gtk.gtkswitch;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.glib.gtypes : gboolean;

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
    GtkWidget* function() gtk_switch_new;
    void function(GtkSwitch*, gboolean) gtk_switch_set_state;
    gboolean function(GtkSwitch*) gtk_switch_get_state;
    void function(GtkSwitch*, gboolean) gtk_switch_set_active;
    gboolean function(GtkSwitch*) gtk_switch_get_active;
}

