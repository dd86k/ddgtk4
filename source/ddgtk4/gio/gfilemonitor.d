module ddgtk4.gio.gfilemonitor;

public import ddgtk4.glib.gtypes : gboolean, gint;
public import ddgtk4.gio.gioenums : GFileMonitorEvent;
public import ddgtk4.gio.giotypes : GFile, GFileMonitor;

// Functions
extern (C)
{
    alias A_g_file_monitor_cancel = gboolean function(GFileMonitor*);
    alias A_g_file_monitor_is_cancelled = gboolean function(GFileMonitor*);
    alias A_g_file_monitor_set_rate_limit = void function(GFileMonitor*, gint);
    alias A_g_file_monitor_emit_event = void function(GFileMonitor*, GFile*, GFile*, GFileMonitorEvent);
}

__gshared
{
    A_g_file_monitor_cancel g_file_monitor_cancel;
    A_g_file_monitor_is_cancelled g_file_monitor_is_cancelled;
    A_g_file_monitor_set_rate_limit g_file_monitor_set_rate_limit;
    A_g_file_monitor_emit_event g_file_monitor_emit_event;
}
