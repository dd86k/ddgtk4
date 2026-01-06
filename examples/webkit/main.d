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
    AppOptions *options = cast(AppOptions*)user_data;
    
    GtkWidget *window = gtk_application_window_new( app );
    
    gtk_window_set_title( GTK_WINDOW(window), options.title );
    gtk_window_set_default_size( GTK_WINDOW(window), 800, 600 );

    GtkWidget *webview = webkit_web_view_new();
    gtk_window_set_child( GTK_WINDOW(window), webview );

    gtk_window_present( GTK_WINDOW(window) );
    
    webkit_web_view_load_uri( WEBKIT_WEB_VIEW(webview), options.url );
}

struct AppOptions
{
    const(gchar) *title;
    const(gchar) *url;
}

int main(string[] args)
{
    __gshared AppOptions opts = AppOptions(
        "WebKitGTK 6.0 Demo",
        "https://example.org/"
    );
    GetoptResult res = void;
    try res = getopt(args, config.caseSensitive,
        "title", `Change title (default="WebKitGTK 6.0 Demo")`,
        (string _, string val)
        {
            opts.title = toStringz(val);
        },
        "site",  `Change site (default="https://example.org/")`,
        (string _, string val)
        {
            opts.url = toStringz(val);
        },
    );
    catch (Exception ex)
    {
        return EXIT_FAILURE;
    }
    
    loadgtk4all();
    loadwebkitgtk();
    
    GtkApplication *app = gtk_application_new( "org.gtk.example", G_APPLICATION_DEFAULT_FLAGS );
    g_signal_connect( app, "activate", G_CALLBACK(&activate), &opts );
    scope(exit) g_object_unref( app );
    return g_application_run( G_APPLICATION(app), 0, null );
}
