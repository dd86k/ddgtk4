module ddgtk4.gio.gapplication;

import ddgtk4.gio.gapplication;

struct GApplication;

pragma(inline, true)
{
    //#define G_APPLICATION(inst) (G_TYPE_CHECK_INSTANCE_CAST ((inst), G_TYPE_APPLICATION, GApplication))
    // Usually takes in GtkApplication*
    GApplication* G_APPLICATION(void *f)
    {
        return cast(GApplication*)f;
    }
}

extern (C)
__gshared
{
    int function(GApplication *application,
                 int           argc,
                 char        **argv) g_application_run;
}
