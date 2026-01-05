module ddgtk4.adwaita.application;

public import ddgtk4.gio.gioenums : GApplicationFlags;

struct AdwApplication;

extern (C)
__gshared
{
    AdwApplication * function(
        const(char) *application_id,
        GApplicationFlags  flags)
        adw_application_new;
}