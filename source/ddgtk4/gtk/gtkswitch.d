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
{
    alias A_gtk_switch_new = GtkWidget* function();
    alias A_gtk_switch_set_state = void function(GtkSwitch*, gboolean);
    alias A_gtk_switch_get_state = gboolean function(GtkSwitch*);
    alias A_gtk_switch_set_active = void function(GtkSwitch*, gboolean);
    alias A_gtk_switch_get_active = gboolean function(GtkSwitch*);
}

__gshared
{
    A_gtk_switch_new gtk_switch_new;
    A_gtk_switch_set_state gtk_switch_set_state;
    A_gtk_switch_get_state gtk_switch_get_state;
    A_gtk_switch_set_active gtk_switch_set_active;
    A_gtk_switch_get_active gtk_switch_get_active;
}

