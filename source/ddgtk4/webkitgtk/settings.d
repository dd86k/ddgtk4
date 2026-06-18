module ddgtk4.webkitgtk.settings;

import ddgtk4.glib.gtypes : gboolean;

struct WebKitSettings;

extern (C)
{
    alias A_webkit_settings_new = WebKitSettings* function();
    alias A_webkit_settings_get_javascript_can_open_windows_automatically = gboolean function(WebKitSettings*);
    alias A_webkit_settings_set_javascript_can_open_windows_automatically = void function(WebKitSettings*, gboolean);
}

__gshared
{
    A_webkit_settings_new webkit_settings_new;
    A_webkit_settings_get_javascript_can_open_windows_automatically webkit_settings_get_javascript_can_open_windows_automatically;
    A_webkit_settings_set_javascript_can_open_windows_automatically webkit_settings_set_javascript_can_open_windows_automatically;
}