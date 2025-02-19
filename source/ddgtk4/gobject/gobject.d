module ddgtk4.gobject.gobject;

import ddloader;
import ddgtk4.gobject;
import ddgtk4.glib.gtypes   : gpointer, gchar;

 struct GObject;
 struct GObjectClass;
 struct GInitiallyUnowned;
 struct GInitiallyUnownedClass;
 struct GObjectConstructParam;

// Functions
extern (C)
__gshared
{
    void function(gpointer obj) g_object_unref;
    void function(GObject*, const(gchar)*, const(GValue)*) g_object_set_property;
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
void loadgobject()
{
    // Let caller catch exceptions
    libgobject = libraryLoad(libNamesGObject);
    
    // gobject
    libraryBind(libgobject, cast(void**)&g_object_unref, "g_object_unref");
    libraryBind(libgobject, cast(void**)&g_object_set_property, "g_object_set_property");
    // gsignal
    libraryBind(libgobject, cast(void**)&g_signal_connect_data, "g_signal_connect_data");
}