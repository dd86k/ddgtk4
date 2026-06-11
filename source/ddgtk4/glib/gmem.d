module ddgtk4.glib.gmem;

import ddgtk4.glib.gtypes;

extern (C)
__gshared
{
    // void g_free (gpointer mem);
    pragma(mangle, "ddgtk4_g_free")
    void function(gpointer) g_free;
}
