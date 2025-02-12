module ddgtk4.gtk.alertdialog;

import ddgtk4.gtk.gtkwidget : GtkWidget;

// Since: 4.10

struct GtkAlertDialog;

pragma(inline, true)
{
    
}

extern (C)
__gshared
{
    GtkAlertDialog* function(const(char)*, ...) gtk_alert_dialog_new;
}