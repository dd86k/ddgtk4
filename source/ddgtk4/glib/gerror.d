module ddgtk4.glib.gerror;

struct GError;

extern (C)
__gshared
{
    // void g_error_free (GError *error);
    pragma(mangle, "ddgtk4_g_error_free")
    void function(GError*) g_error_free;
    // void g_clear_error (GError **err);
    pragma(mangle, "ddgtk4_g_clear_error")
    void function(GError**) g_clear_error;
}
