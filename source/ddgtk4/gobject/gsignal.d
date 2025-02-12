module ddgtk4.gobject.gsignal;

import ddgtk4.glib.gtypes;
import ddgtk4.gobject.gclosure;

alias GConnectFlags = int;
enum : GConnectFlags
{
    //G_CONNECT_DEFAULT
    GOBJECT_AVAILABLE_ENUMERATOR_IN_2_74 = 0,
    G_CONNECT_AFTER	= 1 << 0,
    G_CONNECT_SWAPPED	= 1 << 1
}

// Macros
pragma(inline, true)
{
/*#define g_signal_connect(instance, detailed_signal, c_handler, data) \
    g_signal_connect_data ((instance), (detailed_signal), (c_handler), (data), NULL, (GConnectFlags) 0)*/
    gulong g_signal_connect(gpointer      instance, 
                            const(gchar) *detailed_signal,
                            GCallback     c_handler,
                            gpointer      data)
    {
        return g_signal_connect_data(
            instance, detailed_signal, c_handler, data, null, cast(GConnectFlags) 0);
    }
}

// Functions
extern (C)
__gshared
{
    alias A_g_signal_connect_data =
        gulong function (gpointer       instance,
                         const(gchar)   *detailed_signal,
                         GCallback      c_handler,
                         gpointer       data,
                         GClosureNotify destroy_data,
                         GConnectFlags  connect_flags);
    A_g_signal_connect_data g_signal_connect_data;
}
