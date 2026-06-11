module ddgtk4.gio.gfile;

public import ddgtk4.glib.gtypes : gboolean, gchar;
public import ddgtk4.glib.gerror : GError;
public import ddgtk4.gio.gioenums : GFileMonitorFlags, GFileQueryInfoFlags;
public import ddgtk4.gio.giotypes :
    GFile, GFileInfo, GFileMonitor, GCancellable;

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_g_file_new_for_path")
    GFile* function(const(gchar)*) g_file_new_for_path;
    pragma(mangle, "ddgtk4_g_file_new_for_uri")
    GFile* function(const(gchar)*) g_file_new_for_uri;
    pragma(mangle, "ddgtk4_g_file_new_for_commandline_arg")
    GFile* function(const(gchar)*) g_file_new_for_commandline_arg;
    pragma(mangle, "ddgtk4_g_file_parse_name")
    GFile* function(const(gchar)*) g_file_parse_name;
    pragma(mangle, "ddgtk4_g_file_dup")
    GFile* function(GFile*) g_file_dup;
    pragma(mangle, "ddgtk4_g_file_equal")
    gboolean function(GFile*, GFile*) g_file_equal;
    pragma(mangle, "ddgtk4_g_file_get_basename")
    char* function(GFile*) g_file_get_basename;
    pragma(mangle, "ddgtk4_g_file_get_path")
    char* function(GFile*) g_file_get_path;
    pragma(mangle, "ddgtk4_g_file_get_uri")
    char* function(GFile*) g_file_get_uri;
    pragma(mangle, "ddgtk4_g_file_get_parse_name")
    char* function(GFile*) g_file_get_parse_name;
    pragma(mangle, "ddgtk4_g_file_get_parent")
    GFile* function(GFile*) g_file_get_parent;
    pragma(mangle, "ddgtk4_g_file_has_parent")
    gboolean function(GFile*, GFile*) g_file_has_parent;
    pragma(mangle, "ddgtk4_g_file_get_child")
    GFile* function(GFile*, const(gchar)*) g_file_get_child;
    pragma(mangle, "ddgtk4_g_file_query_exists")
    gboolean function(GFile*, GCancellable*) g_file_query_exists;
    pragma(mangle, "ddgtk4_g_file_query_info")
    GFileInfo* function(GFile*, const(gchar)*, GFileQueryInfoFlags,
                        GCancellable*, GError**) g_file_query_info;
    pragma(mangle, "ddgtk4_g_file_monitor")
    GFileMonitor* function(GFile*, GFileMonitorFlags, GCancellable*, GError**)
        g_file_monitor;
    pragma(mangle, "ddgtk4_g_file_monitor_file")
    GFileMonitor* function(GFile*, GFileMonitorFlags, GCancellable*, GError**)
        g_file_monitor_file;
    pragma(mangle, "ddgtk4_g_file_monitor_directory")
    GFileMonitor* function(GFile*, GFileMonitorFlags, GCancellable*, GError**)
        g_file_monitor_directory;
}
