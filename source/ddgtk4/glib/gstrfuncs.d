module ddgtk4.glib.gstrfuncs;

import ddgtk4.glib.gtypes;

extern (C)
{
    // gchar *g_strdup (const gchar *str);
    alias A_g_strdup = gchar* function(const(gchar)*);
    // gchar *g_strdup_printf (const gchar *format, ...) G_GNUC_PRINTF (1, 2);
    alias A_g_strdup_printf = gchar* function(const(gchar)*, ...);
    // void g_strfreev (gchar **str_array);
    alias A_g_strfreev = void function(gchar**);
}

__gshared
{
    A_g_strdup g_strdup;
    A_g_strdup_printf g_strdup_printf;
    A_g_strfreev g_strfreev;
}
