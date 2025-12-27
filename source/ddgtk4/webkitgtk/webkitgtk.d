/// WebKitGTK bindings.
///
/// Only supporst WebKitGTK-6.0 (2.40 and later for GTK 4).
///
/// Documentation: https://webkitgtk.org/reference/webkitgtk/stable/index.html
module ddgtk4.webkitgtk.webkitgtk;


// While WebKitGTK itself depends on GObject, Gio, GTK, and Soup,
// function definitions depend on GObject types (like gchar) and
// GTK types (like GtkWidget*), which don't need to be initiated
// explicitly, the library maps the function pointers for its own
// use.
import ddloader;
public import ddgtk4.webkitgtk.settings;
public import ddgtk4.webkitgtk.urirequest;
public import ddgtk4.webkitgtk.webkitnavigationaction;
public import ddgtk4.webkitgtk.webview;

// NOTE: WebKitGTK versions
//       https://blogs.gnome.org/mcatanzaro/2025/04/28/webkitgtk-api-versions/
//
//       webkitgtk-6.0
//         This is WebKitGTK for GTK 4 and libsoup 3, introduced in WebKitGTK 2.40.
//         This is what’s built by default if you build WebKit with -DPORT=GTK.
//
//       webkit2gtk-4.1
//         This is WebKitGTK for GTK 3 and libsoup 3, introduced in WebKitGTK 2.32.
//         Get this by building with -DPORT=GTK -DUSE_GTK3=ON.
//
//       webkit2gtk-4.0
//         This is WebKitGTK for GTK 3 and libsoup 2, introduced in WebKitGTK 2.6.
//         Get this by building with -DPORT=GTK -DUSE_GTK3=ON -DUSE_SOUP2=ON.


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
    ];
}
else // Allows compiling, but loader will error out at runtime
{
    private immutable string[] libNamesWebKitGTK = [
    ];
}

// libwebkit2gtk-4.1.so.0
private __gshared DynamicLibrary libwebkitgtk;
/// Load the WebKitGTK library.
void loadwebkitgtk()
{
    // This approach, as opposed to using a static assert,
    // allows compiling for unsupported platforms.
    if (libNamesWebKitGTK.length == 0)
        throw new Exception("Unsupported platform");
    
    // Let caller catch exceptions
    libwebkitgtk = libraryLoad(libNamesWebKitGTK);
    
    // WebView
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_new, "webkit_web_view_new");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_set_settings, "webkit_web_view_set_settings");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_load_uri, "webkit_web_view_load_uri");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_get_uri, "webkit_web_view_get_uri");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_try_close, "webkit_web_view_try_close");
    
    // WebSettings
    libraryBind(libwebkitgtk, cast(void**)&webkit_settings_new, "webkit_settings_new");
    libraryBind(libwebkitgtk, cast(void**)&webkit_settings_set_javascript_can_open_windows_automatically, "webkit_settings_set_javascript_can_open_windows_automatically");
    libraryBind(libwebkitgtk, cast(void**)&webkit_settings_get_javascript_can_open_windows_automatically, "webkit_settings_get_javascript_can_open_windows_automatically");
    
    // URIRequest
    libraryBind(libwebkitgtk, cast(void**)&webkit_uri_request_new, "webkit_uri_request_new");
}
deprecated("Use loadwebkitgtk")
alias initwebkitgtk = loadwebkitgtk;
