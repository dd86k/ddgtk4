module ddgtk4.ddgtk4;

import ddgtk4.gobject : loadgobject;
import ddgtk4.gio : loadgio;
import ddgtk4.glib : loadglib;
import ddgtk4.gtk : loadgtk4;

/// Load GObject, Gio, GLib, and GTK4 libraries.
void loadgtk4all()
{
    loadgobject();
    loadgio();
    loadglib();
    loadgtk4();
}
deprecated("Use loadgtk4all")
alias initddgtk4 = loadgtk4all;

//
// Example (unittest)
//

version(unittest)
{
    import core.stdc.stdlib : exit;
    import ddgtk4;
    
    extern (C)
    static void
    print_hello (GtkWidget *widget, gpointer data)
    {
        g_print ("Hello World\n");
    }
    
    extern (C)
    static void
    activate (GtkApplication *app, gpointer user_data)
    {
        GtkWidget *window = gtk_application_window_new (app);
        
        gtk_window_set_title (GTK_WINDOW (window), "Hello");
        gtk_window_set_default_size (GTK_WINDOW (window), 200, 200);

        GtkWidget *button = gtk_button_new_with_label ("Hello World");
        g_signal_connect (button, "clicked", G_CALLBACK( &print_hello ), null);
        gtk_window_set_child (GTK_WINDOW (window), button);

        gtk_window_present (GTK_WINDOW (window));
    }
}

unittest
{
    loadgtk4all();
    
    // https://www.gtk.org/docs/getting-started/hello-world/
    // #include <gtk/gtk.h>
    // Example is supposed to be in main(), so emulate that here
    static immutable int argc = 1;
    static immutable const(char)*[] argv = [ "app" ];
    
    GtkApplication *app = gtk_application_new ("org.gtk.example", G_APPLICATION_DEFAULT_FLAGS);
    g_signal_connect (app, "activate", G_CALLBACK (&activate), null);
    int status = g_application_run (G_APPLICATION (app), argc, cast(char**)(argv.ptr));
    g_object_unref (app);
    
    exit (status);
}