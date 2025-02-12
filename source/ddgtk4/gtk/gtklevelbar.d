module ddgtk4.gtk.gtklevelbar;

import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkLevelBar;

// Macros
pragma(inline, true)
{
    GtkLevelBar* GTK_LEVEL_BAR(void *o)
    {
        return cast(GtkLevelBar*)o;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function() gtk_level_bar_new;
    void function(GtkLevelBar*, double) gtk_level_bar_set_value;
}