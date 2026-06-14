module ddgtk4.gtk.gtkeventcontrollerkey;

import ddgtk4.gtk.gtkeventcontroller : GtkEventController;

struct GtkEventControllerKey;

pragma(inline, true)
{
    GtkEventControllerKey* GTK_EVENT_CONTROLLER_KEY(void *f)
    {
        return cast(GtkEventControllerKey*)f;
    }
}

extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_event_controller_key_new")
    GtkEventController* function() gtk_event_controller_key_new;
}
