module ddgtk4.webkitgtk.settings;

import ddgtk4.glib.gtypes : gboolean;

struct WebKitSettings;

extern (C)
__gshared
{
    WebKitSettings* function() webkit_settings_new;
    
    gboolean function(WebKitSettings*) webkit_settings_get_javascript_can_open_windows_automatically;
    void function(WebKitSettings*, gboolean) webkit_settings_set_javascript_can_open_windows_automatically;
}