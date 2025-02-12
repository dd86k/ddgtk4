module ddgtk4.glib.gmessages;

import ddgtk4.glib.gtypes;

extern (C)
__gshared
{
    alias A_g_print = extern (C) void function(const(gchar) *fmt, ...);
    A_g_print g_print;
}
