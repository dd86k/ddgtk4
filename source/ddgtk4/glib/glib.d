/// Also acts as gmain.
module ddgtk4.glib.glib;

import ddloader;
import ddgtk4.glib.gerror;
import ddgtk4.glib.gmem;
import ddgtk4.glib.gmessages;
import ddgtk4.glib.gstrfuncs;
import ddgtk4.glib.gtypes;

struct GMainContext;

// Return values for GSourceFunc.
enum G_SOURCE_REMOVE   = false; // FALSE
enum G_SOURCE_CONTINUE = true;  // TRUE

extern (C)
{
    // gboolean g_main_context_iteration (GMainContext *context,
    //                                    gboolean      may_block);
    alias A_g_main_context_iteration = gboolean function(GMainContext*, gboolean);

    // typedef gboolean (*GSourceFunc) (gpointer user_data);
    alias GSourceFunc = gboolean function(gpointer user_data);

    // guint g_timeout_add (guint        interval,
    //                      GSourceFunc  function,
    //                      gpointer     data);
    alias A_g_timeout_add = guint function(guint, GSourceFunc, gpointer);

    // gboolean g_source_remove (guint tag);
    alias A_g_source_remove = gboolean function(guint);
}

__gshared
{
    A_g_main_context_iteration g_main_context_iteration;
    A_g_timeout_add g_timeout_add;
    A_g_source_remove g_source_remove;
}

version (Windows)
{
    private immutable string[] libNamesGLib = [
        "libglib-2.0-0.dll", // MSYS2
        "glib-2.0-0.dll",
        "g-2.0-0.dll",
        "g-2.dll"
    ];
}
else version (OSX)
{
    private immutable string[] libNamesGLib = [
        "libglib-2.0.0.dylib"
    ];
}
else
{
    private immutable string[] libNamesGLib = [
        "libglib-2.0.so.0"
    ];
}

private __gshared DynamicLibrary libglib;

void loadglib()
{
    // Let caller catch exceptions
    libglib = libraryLoad(libNamesGLib);
    
    libraryBind(libglib, cast(void**)&g_free, "g_free");
    libraryBind(libglib, cast(void**)&g_strdup, "g_strdup");
    libraryBind(libglib, cast(void**)&g_strdup_printf, "g_strdup_printf");
    libraryBind(libglib, cast(void**)&g_strfreev, "g_strfreev");
    libraryBind(libglib, cast(void**)&g_error_free, "g_error_free");
    libraryBind(libglib, cast(void**)&g_clear_error, "g_clear_error");
    libraryBind(libglib, cast(void**)&g_print, "g_print");
    libraryBind(libglib, cast(void**)&g_printerr, "g_printerr");
    libraryBind(libglib, cast(void**)&g_log, "g_log");
    libraryBind(libglib, cast(void**)&g_logv, "g_logv");
    libraryBind(libglib, cast(void**)&g_main_context_iteration, "g_main_context_iteration");
    libraryBind(libglib, cast(void**)&g_timeout_add, "g_timeout_add");
    libraryBind(libglib, cast(void**)&g_source_remove, "g_source_remove");
}
