module ddgtk4.webkitgtk.urirequest;

import ddgtk4.glib.gtypes : gchar;

struct WebKitURIRequest;

// Functions
extern (C)
{
    // URIRequest
    alias A_webkit_uri_request_new = WebKitURIRequest* function(const(gchar) *uri);
}

__gshared
{
    A_webkit_uri_request_new webkit_uri_request_new;
}