
module ddgtk4.webkitgtk.webkitgtk;

/// Sources:
/// - https://webkitgtk.org/reference/webkit2gtk/stable/index.html (4.1, relies on gtk3)
/// - https://webkitgtk.org/reference/webkitgtk/stable/index.html (6.0, relies on gtk4)

// While WebKitGTK itself depends on GObject, Gio, GTK, and Soup,
// function definitions depend on GObject types (like gchar) and
// GTK types (like GtkWidget*), which don't need to be initiated.
import ddloader;
import ddgtk4.webkitgtk;

version (Windows)
{
    private immutable string[] libNamesWebKitGTK = [
    ];
}
else version (OSX)
{
    private immutable string[] libNamesWebKitGTK = [
    ];
}
else version (Posix)
{
    private immutable string[] libNamesWebKitGTK = [
        "libwebkitgtk-6.0.so.4",    // Needs package libwebkitgtk-6.0-4 on Ubuntu
        //"libwebkit2gtk-4.1.so.0", // Needs package libwebkit2gtk-4.1-0 on Ubuntu
    ];
}
else
    static assert(false, "Implement webkitgtk.d");

// libwebkit2gtk-4.1.so.0
private __gshared DynamicLibrary libwebkitgtk;
void initwebkitgtk()
{
    // This approach, as opposed to using a static assert,
    // allows compiling.
    if (libNamesWebKitGTK.length == 0)
        throw new Exception("Unsupported platform");
    
    // Let caller catch exceptions
    libwebkitgtk = libraryLoad(libNamesWebKitGTK);
    
    // WebView
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_new, "webkit_web_view_new");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_set_settings, "webkit_web_view_set_settings");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_load_uri, "webkit_web_view_load_uri");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_get_uri, "webkit_web_view_get_uri");
    
    // WebSettings
    libraryBind(libwebkitgtk, cast(void**)&webkit_settings_new, "webkit_settings_new");
    libraryBind(libwebkitgtk, cast(void**)&webkit_settings_set_javascript_can_open_windows_automatically, "webkit_settings_set_javascript_can_open_windows_automatically");
    libraryBind(libwebkitgtk, cast(void**)&webkit_settings_get_javascript_can_open_windows_automatically, "webkit_settings_get_javascript_can_open_windows_automatically");
    
    // URIRequest
    libraryBind(libwebkitgtk, cast(void**)&webkit_uri_request_new, "webkit_uri_request_new");
}
