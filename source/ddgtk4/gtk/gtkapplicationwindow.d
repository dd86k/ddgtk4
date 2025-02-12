module ddgtk4.gtk.gtkapplicationwindow;

import ddgtk4.gtk.gtkapplication;
import ddgtk4.gtk.gtkwidget;

alias A_gtk_application_window_new =
    GtkWidget* function(GtkApplication *application);

// Functions
extern (C)
__gshared
{
    A_gtk_application_window_new gtk_application_window_new;
}