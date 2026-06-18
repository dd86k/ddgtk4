module ddgtk4.gio.gsettings;

import ddgtk4.glib.gtypes : gboolean, gchar;
import ddgtk4.glib.gvariant : GVariant;

struct GSettings;

// Functions
extern (C)
{
    alias A_g_settings_set_value = gboolean function(GSettings *settings, const(gchar) *key, GVariant *value);
    alias A_g_settings_set = gboolean function(GSettings *settings, const gchar *key, const gchar *format, ...);
    alias A_g_settings_set_boolean = gboolean function(GSettings *settings, const(gchar) *key, gboolean value);
}

__gshared
{
    A_g_settings_set_value g_settings_set_value;
    A_g_settings_set g_settings_set;
    A_g_settings_set_boolean g_settings_set_boolean;
}
