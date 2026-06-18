module ddgtk4.gio.gappinfo;

public import ddgtk4.glib.gtypes : gboolean;
public import ddgtk4.glib.glist : GList;
public import ddgtk4.glib.gerror : GError;

struct GAppInfo;
struct GAppLaunchContext;

// Functions
extern (C)
{
    alias A_g_app_info_launch = gboolean function(GAppInfo*, GList*, GAppLaunchContext*, GError**);
}

__gshared
{
    A_g_app_info_launch g_app_info_launch;
}