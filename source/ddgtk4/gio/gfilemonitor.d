module ddgtk4.gio.gfilemonitor;

public import ddgtk4.glib.gtypes : gboolean, gint;
public import ddgtk4.gio.gioenums : GFileMonitorEvent;
public import ddgtk4.gio.giotypes : GFile, GFileMonitor;

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_g_file_monitor_cancel")
    gboolean function(GFileMonitor*) g_file_monitor_cancel;
    pragma(mangle, "ddgtk4_g_file_monitor_is_cancelled")
    gboolean function(GFileMonitor*) g_file_monitor_is_cancelled;
    pragma(mangle, "ddgtk4_g_file_monitor_set_rate_limit")
    void function(GFileMonitor*, gint) g_file_monitor_set_rate_limit;
    pragma(mangle, "ddgtk4_g_file_monitor_emit_event")
    void function(GFileMonitor*, GFile*, GFile*, GFileMonitorEvent)
        g_file_monitor_emit_event;
}
