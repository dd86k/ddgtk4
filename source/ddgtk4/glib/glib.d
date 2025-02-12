/// Also acts as gmain.
module ddgtk4.glib.glib;

import ddloader;
import ddgtk4.glib.gmessages;
import ddgtk4.glib.gtypes;

struct GMainContext;

extern (C)
__gshared
{
    // gboolean g_main_context_iteration (GMainContext *context,
    //                                    gboolean      may_block);
    alias A_g_main_context_iteration =
        gboolean function(GMainContext*, gboolean);
    A_g_main_context_iteration g_main_context_iteration;
}

version (Windows)
{
    private immutable string[] libNamesGLib = [
        "libglib-2.0-0.dll", // MSYS2
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
void initglib()
{
    // Let caller catch exceptions
    libglib = libraryLoad(libNamesGLib);
    
    libraryBind(libglib, cast(void**)&g_print, "g_print");
    libraryBind(libglib, cast(void**)&g_main_context_iteration, "g_main_context_iteration");
}
