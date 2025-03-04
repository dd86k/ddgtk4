module ddgtk4.webkitgtk.webview;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.glib.gtypes : gchar;
import ddgtk4.webkitgtk.settings : WebKitSettings;

struct WebKitWebView;
struct WebKitPrintOperation;

alias WebKitPolicyDecisionType = int;
enum : WebKitPolicyDecisionType
{
    WEBKIT_POLICY_DECISION_TYPE_NAVIGATION_ACTION,
    WEBKIT_POLICY_DECISION_TYPE_NEW_WINDOW_ACTION,
    WEBKIT_POLICY_DECISION_TYPE_RESPONSE,
}

alias WebKitLoadEvent = int;
enum : WebKitLoadEvent
{
    WEBKIT_LOAD_STARTED,
    WEBKIT_LOAD_REDIRECTED,
    WEBKIT_LOAD_COMMITTED,
    WEBKIT_LOAD_FINISHED
}

alias WebKitSaveMode = int;
enum : WebKitSaveMode
{
    WEBKIT_SAVE_MODE_MHTML
}

alias WebKitInsecureContentEvent = int;
enum : WebKitInsecureContentEvent
{
    WEBKIT_INSECURE_CONTENT_RUN,
    WEBKIT_INSECURE_CONTENT_DISPLAYED
}

//#if PLATFORM(GTK)
alias WebKitSnapshotOptions = int;
enum : WebKitSnapshotOptions
{
    WEBKIT_SNAPSHOT_OPTIONS_NONE = 0,
    WEBKIT_SNAPSHOT_OPTIONS_INCLUDE_SELECTION_HIGHLIGHTING = 1 << 0,
    WEBKIT_SNAPSHOT_OPTIONS_TRANSPARENT_BACKGROUND = 1 << 1,
}

alias WebKitSnapshotRegion = int;
enum : WebKitSnapshotRegion
{
    WEBKIT_SNAPSHOT_REGION_VISIBLE = 0,
    WEBKIT_SNAPSHOT_REGION_FULL_DOCUMENT,
}
// otherwise, it's WPE (Apple's) interface
//#endif

alias WebKitWebProcessTerminationReason = int;
enum : WebKitWebProcessTerminationReason
{
    WEBKIT_WEB_PROCESS_CRASHED,
    WEBKIT_WEB_PROCESS_EXCEEDED_MEMORY_LIMIT,
    WEBKIT_WEB_PROCESS_TERMINATED_BY_API
}

alias WebKitMediaCaptureState = int;
enum : WebKitMediaCaptureState
{
    WEBKIT_MEDIA_CAPTURE_STATE_NONE,
    WEBKIT_MEDIA_CAPTURE_STATE_ACTIVE,
    WEBKIT_MEDIA_CAPTURE_STATE_MUTED,
}

alias WebKitWebExtensionMode = int;
enum : WebKitWebExtensionMode
{
    WEBKIT_WEB_EXTENSION_MODE_NONE,
    WEBKIT_WEB_EXTENSION_MODE_MANIFESTV2,
    WEBKIT_WEB_EXTENSION_MODE_MANIFESTV3,
}

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
    GtkWidget* function() webkit_web_view_new;
    
    void function(WebKitWebView*, WebKitSettings*) webkit_web_view_set_settings;
    
    void function(WebKitWebView*, const(gchar) *uri) webkit_web_view_load_uri;
    
    const(gchar)* function(WebKitWebView*) webkit_web_view_get_uri;
    
    void function(WebKitWebView*) webkit_web_view_try_close;
}