module ddgtk4.gtk.gtkprogressbar;

public import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkProgressBar;

// Macros
pragma(inline, true)
{
    GtkProgressBar* GTK_PROGRESS_BAR(void *o)
    {
        return cast(GtkProgressBar*)o;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_progress_bar_new")
    GtkWidget* function() gtk_progress_bar_new;
    pragma(mangle, "ddgtk4_gtk_progress_bar_set_fraction")
    void function(GtkProgressBar*, double) gtk_progress_bar_set_fraction;
}