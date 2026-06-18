module ddgtk4.adwaita.application;

public import ddgtk4.gio.gioenums : GApplicationFlags;

struct AdwApplication;

extern (C)
{
    alias A_adw_application_new = AdwApplication * function( const(char) *application_id, GApplicationFlags flags);
}

__gshared
{
    A_adw_application_new adw_application_new;
}