module ddgtk4.webkitgtk.settings;

import ddgtk4.glib.gtypes : gboolean;

struct WebKitSettings;

extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_webkit_settings_new")
    WebKitSettings* function() webkit_settings_new;
    pragma(mangle, "ddgtk4_webkit_settings_get_javascript_can_open_windows_automatically")
    gboolean function(WebKitSettings*) webkit_settings_get_javascript_can_open_windows_automatically;
    pragma(mangle, "ddgtk4_webkit_settings_set_javascript_can_open_windows_automatically")
    void function(WebKitSettings*, gboolean) webkit_settings_set_javascript_can_open_windows_automatically;
}