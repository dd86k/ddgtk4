module ddgtk4.glib.gstrfuncs;

import ddgtk4.glib.gtypes;

extern (C)
__gshared
{
    // gchar *g_strdup (const gchar *str);
    pragma(mangle, "ddgtk4_g_strdup")
    gchar* function(const(gchar)*) g_strdup;
    // gchar *g_strdup_printf (const gchar *format, ...) G_GNUC_PRINTF (1, 2);
    pragma(mangle, "ddgtk4_g_strdup_printf")
    gchar* function(const(gchar)*, ...) g_strdup_printf;
    // void g_strfreev (gchar **str_array);
    pragma(mangle, "ddgtk4_g_strfreev")
    void function(gchar**) g_strfreev;
}
