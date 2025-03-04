module ddgtk4.gio.gsettings;

import ddgtk4.glib.gtypes : gboolean, gchar;
import ddgtk4.glib.gvariant : GVariant;

struct GSettings;

// Functions
extern (C)
__gshared
{
    gboolean function(GSettings    *settings,
                      const(gchar) *key,
                      GVariant     *value) g_settings_set_value;
    gboolean function(GSettings          *settings,
                      const gchar        *key,
                      const gchar        *format,
                      ...) g_settings_set;
    gboolean function(GSettings    *settings,
                      const(gchar) *key,
                      gboolean     value) g_settings_set_boolean;
}
