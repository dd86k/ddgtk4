module ddgtk4.gtk.gtkapplicationwindow;

public import ddgtk4.gtk.gtkapplication : GtkApplication;
public import ddgtk4.gtk.gtkwidget : GtkWidget;

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_application_window_new")
    GtkWidget* function(GtkApplication*) gtk_application_window_new;
}