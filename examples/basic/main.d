module examples.basic.main;

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

int main(string[] args)
{
    initddgtk4();
    
    GtkApplication *app = gtk_application_new ("org.gtk.example", G_APPLICATION_DEFAULT_FLAGS);
    g_signal_connect (app, "activate", G_CALLBACK (&activate), null);
    int status = g_application_run (G_APPLICATION (app), 0, null);
    g_object_unref (app);
    return status;
}