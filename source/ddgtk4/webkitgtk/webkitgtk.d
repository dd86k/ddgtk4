
module ddgtk4.webkitgtk.webkitgtk;

/// Sources:
/// - https://webkitgtk.org/reference/webkit2gtk/stable/index.html (4.1, relies on gtk3)
/// - https://webkitgtk.org/reference/webkitgtk/stable/index.html (6.0, relies on gtk4)

// While WebKitGTK itself depends on GObject, Gio, GTK, and Soup,
// function definitions depend on GObject types (like gchar) and
// GTK types (like GtkWidget*), which don't need to be initiated.
import ddloader;
import ddgtk4.gtk;
public import ddgtk4.glib.gtypes;
public import ddgtk4.gtk.gtkwidget; // For GtkWidget

struct WebKitWebView;
struct WebKitURIRequest;

// Macros
pragma(inline, true)
{
    // Usually takes from GtkWidget* webkit_web_view_new();
    WebKitWebView* WEBKIT_WEB_VIEW(GtkWidget *w)
    {
        return cast(WebKitWebView*)w;
    }
}

// Functions
extern (C)
__gshared
{
    // WebView
    alias A_webkit_web_view_new =
        GtkWidget* function();
    A_webkit_web_view_new webkit_web_view_new;
    
    alias A_webkit_web_view_load_uri =
        void function(WebKitWebView*, const(gchar) *uri);
    A_webkit_web_view_load_uri webkit_web_view_load_uri;
    
    // URIRequest
    alias A_webkit_uri_request_new =
        WebKitURIRequest* function(const(gchar) *uri);
    A_webkit_uri_request_new webkit_uri_request_new;
}

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
else
{
    private immutable string[] libNamesWebKitGTK = [
        //"libwebkit2gtk-4.1.so.0", // Needs package libwebkit2gtk-4.1-0 on Ubuntu
        "libwebkitgtk-6.0.so.4",    // Needs package libwebkitgtk-6.0-4 on Ubuntu
    ];
}

// libwebkit2gtk-4.1.so.0
private __gshared DynamicLibrary libwebkitgtk;
void initwebkitgtk()
{
    if (libNamesWebKitGTK.length == 0)
        throw new Exception("Unsupported platform");
    
    // Let caller catch exceptions
    libwebkitgtk = libraryLoad(libNamesWebKitGTK);
    
    // WebView
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_new, "webkit_web_view_new");
    libraryBind(libwebkitgtk, cast(void**)&webkit_web_view_load_uri, "webkit_web_view_load_uri");
    
    // URIRequest
    libraryBind(libwebkitgtk, cast(void**)&webkit_uri_request_new, "webkit_uri_request_new");
}
