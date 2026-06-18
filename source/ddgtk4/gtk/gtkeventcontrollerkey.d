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
{
    alias A_gtk_event_controller_key_new = GtkEventController* function();
}

__gshared
{
    A_gtk_event_controller_key_new gtk_event_controller_key_new;
}
