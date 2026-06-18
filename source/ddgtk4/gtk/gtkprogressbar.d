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
{
    alias A_gtk_progress_bar_new = GtkWidget* function();
    alias A_gtk_progress_bar_set_fraction = void function(GtkProgressBar*, double);
}

__gshared
{
    A_gtk_progress_bar_new gtk_progress_bar_new;
    A_gtk_progress_bar_set_fraction gtk_progress_bar_set_fraction;
}