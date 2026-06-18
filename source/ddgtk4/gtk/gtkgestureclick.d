module ddgtk4.gtk.gtkgestureclick;

import ddgtk4.gtk.gtkgesture : GtkGesture;

struct GtkGestureClick;

pragma(inline, true)
{
    GtkGestureClick* GTK_GESTURE_CLICK(void *f)
    {
        return cast(GtkGestureClick*)f;
    }
}

extern (C)
{
    alias A_gtk_gesture_click_new = GtkGesture* function();
}

__gshared
{
    A_gtk_gesture_click_new gtk_gesture_click_new;
}
