module ddgtk4.gtk.gtkapplicationwindow;

public import ddgtk4.gtk.gtkapplication : GtkApplication;
public import ddgtk4.gtk.gtkwidget : GtkWidget;

// Functions
extern (C)
{
    alias A_gtk_application_window_new = GtkWidget* function(GtkApplication*);
}

__gshared
{
    A_gtk_application_window_new gtk_application_window_new;
}