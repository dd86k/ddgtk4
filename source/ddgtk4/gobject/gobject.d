module ddgtk4.gobject.gobject;

import ddloader;
import ddgtk4.gobject.gsignal;
import ddgtk4.gobject.gclosure;
import ddgtk4.glib.gtypes : gpointer;

// Functions
extern (C)
__gshared
{
    alias A_g_object_unref =
        void function(gpointer obj);
    A_g_object_unref g_object_unref;
}

version (Windows)
{
    private immutable string[] libNamesGObject = [
        "libgobject-2.0-0.dll", // MSYS2
        "gobject-2.0-0.dll",
        "gobject-2.dll"
    ];
}
else version (OSX)
{
    private immutable string[] libNamesGObject = [
        "libgobject-2.0.0.dylib"
    ];
}
else
{
    private immutable string[] libNamesGObject = [
        "libgobject-2.0.so.0"
    ];
}

private __gshared DynamicLibrary libgobject;
void initgobject()
{
    // Let caller catch exceptions
    libgobject = libraryLoad(libNamesGObject);
    
    // gobject
    libraryBind(libgobject, cast(void**)&g_object_unref, "g_object_unref");
    // gsignal
    libraryBind(libgobject, cast(void**)&g_signal_connect_data, "g_signal_connect_data");
}