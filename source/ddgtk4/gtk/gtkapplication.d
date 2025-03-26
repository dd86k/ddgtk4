module ddgtk4.gtk.gtkapplication;

import ddgtk4.glib;
public import ddgtk4.gtk.gtkwindow : GtkWindow;

struct GtkApplication;

alias GApplicationFlags = int;
enum : GApplicationFlags
{
    G_APPLICATION_DEFAULT_FLAGS = 0,
    G_APPLICATION_IS_SERVICE = 1,
    G_APPLICATION_IS_LAUNCHER = 2,
    G_APPLICATION_HANDLES_OPEN = 4,
    G_APPLICATION_HANDLES_COMMAND_LINE = 8,
    G_APPLICATION_SEND_ENVIRONMENT = 16,
    G_APPLICATION_NON_UNIQUE = 32,
    G_APPLICATION_CAN_OVERRIDE_APP_ID = 64,
    G_APPLICATION_ALLOW_REPLACEMENT = 128,
    G_APPLICATION_REPLACE = 256,
}
deprecated("Deprecated for G_APPLICATION_DEFAULT_FLAGS since 2.74")
enum G_APPLICATION_FLAGS_NONE = 0;

// Macros
pragma(inline, true)
{
    
}

// Functions
extern (C)
__gshared
{
/*GDK_AVAILABLE_IN_ALL
GtkApplication * gtk_application_new           (const char        *application_id,
                                                GApplicationFlags  flags);*/
    GtkApplication* function(
        const(char) *application_id,
        GApplicationFlags flags) gtk_application_new;
    
    void function(GtkApplication* application, GtkWindow* window) gtk_application_add_window;
}
