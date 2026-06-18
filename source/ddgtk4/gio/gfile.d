module ddgtk4.gio.gfile;

public import ddgtk4.glib.gtypes : gboolean, gchar;
public import ddgtk4.glib.gerror : GError;
public import ddgtk4.gio.gioenums : GFileMonitorFlags, GFileQueryInfoFlags;
public import ddgtk4.gio.giotypes :
    GFile, GFileInfo, GFileMonitor, GCancellable;

// Functions
extern (C)
{
    alias A_g_file_new_for_path = GFile* function(const(gchar)*);
    alias A_g_file_new_for_uri = GFile* function(const(gchar)*);
    alias A_g_file_new_for_commandline_arg = GFile* function(const(gchar)*);
    alias A_g_file_parse_name = GFile* function(const(gchar)*);
    alias A_g_file_dup = GFile* function(GFile*);
    alias A_g_file_equal = gboolean function(GFile*, GFile*);
    alias A_g_file_get_basename = char* function(GFile*);
    alias A_g_file_get_path = char* function(GFile*);
    alias A_g_file_get_uri = char* function(GFile*);
    alias A_g_file_get_parse_name = char* function(GFile*);
    alias A_g_file_get_parent = GFile* function(GFile*);
    alias A_g_file_has_parent = gboolean function(GFile*, GFile*);
    alias A_g_file_get_child = GFile* function(GFile*, const(gchar)*);
    alias A_g_file_query_exists = gboolean function(GFile*, GCancellable*);
    alias A_g_file_query_info = GFileInfo* function(GFile*, const(gchar)*, GFileQueryInfoFlags, GCancellable*, GError**);
    alias A_g_file_monitor = GFileMonitor* function(GFile*, GFileMonitorFlags, GCancellable*, GError**);
    alias A_g_file_monitor_file = GFileMonitor* function(GFile*, GFileMonitorFlags, GCancellable*, GError**);
    alias A_g_file_monitor_directory = GFileMonitor* function(GFile*, GFileMonitorFlags, GCancellable*, GError**);
}

__gshared
{
    A_g_file_new_for_path g_file_new_for_path;
    A_g_file_new_for_uri g_file_new_for_uri;
    A_g_file_new_for_commandline_arg g_file_new_for_commandline_arg;
    A_g_file_parse_name g_file_parse_name;
    A_g_file_dup g_file_dup;
    A_g_file_equal g_file_equal;
    A_g_file_get_basename g_file_get_basename;
    A_g_file_get_path g_file_get_path;
    A_g_file_get_uri g_file_get_uri;
    A_g_file_get_parse_name g_file_get_parse_name;
    A_g_file_get_parent g_file_get_parent;
    A_g_file_has_parent g_file_has_parent;
    A_g_file_get_child g_file_get_child;
    A_g_file_query_exists g_file_query_exists;
    A_g_file_query_info g_file_query_info;
    A_g_file_monitor g_file_monitor;
    A_g_file_monitor_file g_file_monitor_file;
    A_g_file_monitor_directory g_file_monitor_directory;
}
