// Based on https://wiki.gnome.org/Projects/WebKitGtk/ProgrammingGuide/Tutorial
// Following https://docs.gtk.org/gtk4/migrating-3to4.html
module examples.webview.main;

import std.getopt;
import std.string : toStringz;
import core.stdc.stdlib : EXIT_SUCCESS, EXIT_FAILURE;
import ddgtk4;
import ddgtk4.webkitgtk;

extern (C)
static void
activate (GtkApplication *app, gpointer user_data)
{
    GtkWidget *window = gtk_application_window_new( app );
    
    gtk_window_set_title( GTK_WINDOW(window), "WebKitGTK 6.0 Demo" );
    gtk_window_set_default_size( GTK_WINDOW(window), 800, 600 );

    GtkWidget *webview = webkit_web_view_new();
    gtk_window_set_child( GTK_WINDOW(window), webview );

    gtk_window_present( GTK_WINDOW(window) );
    
    webkit_web_view_load_uri( WEBKIT_WEB_VIEW(webview), cast(const(gchar)*)user_data );
}

int main(string[] args)
{
    string osite = "https://example.org/";
    GetoptResult res = void;
    try res = getopt(args, config.caseSensitive,
        "site", `Change default site (default="https://example.org/")`, &osite,
    );
    catch (Exception ex)
    {
        return EXIT_FAILURE;
    }
    
    loadgtk4all();
    loadwebkitgtk();
    
    GtkApplication *app = gtk_application_new( "org.gtk.example", G_APPLICATION_DEFAULT_FLAGS );
    g_signal_connect( app, "activate", G_CALLBACK(&activate), cast(void*)toStringz(osite) );
    scope(exit) g_object_unref( app );
    int status = g_application_run( G_APPLICATION(app), 0, null );
    return status;
}
