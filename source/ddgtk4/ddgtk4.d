module ddgtk4.ddgtk4;

public import ddgtk4.glib;
public import ddgtk4.gtk;
public import ddgtk4.gio;
public import ddgtk4.gobject;

void initddgtk4()
{
    initgobject();
    initgio();
    initglib();
    initgtk4();
}

//
// Example (unittest)
//

version(unittest)
{
    import core.stdc.stdlib : exit;
    
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
    initddgtk4();
    
    // https://www.gtk.org/docs/getting-started/hello-world/
    // #include <gtk/gtk.h>
    // Example is supposed to be in main(), so emulate that here
    static int argc = 1;
    static immutable const(char)*[] argv = [ "app" ];
    
    GtkApplication *app = gtk_application_new ("org.gtk.example", G_APPLICATION_DEFAULT_FLAGS);
    g_signal_connect (app, "activate", G_CALLBACK (&activate), null);
    int status = g_application_run (G_APPLICATION (app), argc, cast(char**)(argv.ptr));
    g_object_unref (app);
    
    exit (status);
    
    // Another example (https://docs.gtk.org/gtk4/initialization.html)
    /*
    int main (int argc, char **argv)
    {
    GtkWidget *window;
    // Initialize i18n support with bindtextdomain(), etc.

    // ...

    // Initialize the widget set
    gtk_init ();

    // Create the main window
    window = gtk_window_new ();

    // Set up our GUI elements

    // ...

    // Show the application window
    gtk_window_present (GTK_WINDOW (window));

    // Enter the main event loop, and wait for user interaction
    while (!done)
        g_main_context_iteration (NULL, TRUE);

    // The user lost interest
    return 0;
    }
    */
}