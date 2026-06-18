module ddgtk4.gtk.gtklevelbar;

public import ddgtk4.gtk.gtkwidget : GtkWidget;

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
{
    alias A_gtk_level_bar_new = GtkWidget* function();
    alias A_gtk_level_bar_set_value = void function(GtkLevelBar*, double);
}

__gshared
{
    A_gtk_level_bar_new gtk_level_bar_new;
    A_gtk_level_bar_set_value gtk_level_bar_set_value;
}