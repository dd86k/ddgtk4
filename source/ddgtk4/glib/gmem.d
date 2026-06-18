module ddgtk4.glib.gmem;

import ddgtk4.glib.gtypes;

extern (C)
{
    // void g_free (gpointer mem);
    alias A_g_free = void function(gpointer);
}

__gshared
{
    A_g_free g_free;
}
