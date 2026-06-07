module ddgtk4.webkitgtk.urirequest;

import ddgtk4.glib.gtypes : gchar;

struct WebKitURIRequest;

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_webkit_uri_request_new")
    // URIRequest
    WebKitURIRequest* function(const(gchar) *uri) webkit_uri_request_new;
}