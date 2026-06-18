module ddgtk4.glib.gerror;

struct GError;

extern (C)
{
    // void g_error_free (GError *error);
    alias A_g_error_free = void function(GError*);
    // void g_clear_error (GError **err);
    alias A_g_clear_error = void function(GError**);
}

__gshared
{
    A_g_error_free g_error_free;
    A_g_clear_error g_clear_error;
}
