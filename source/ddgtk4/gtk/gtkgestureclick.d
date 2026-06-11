module ddgtk4.gtk.gtkgestureclick;

struct GtkGestureClick;
struct GtkGesture;

pragma(inline, true)
{
    GtkGestureClick* GTK_GESTURE_CLICK(void *f)
    {
        return cast(GtkGestureClick*)f;
    }
}

extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_gesture_click_new")
    GtkGesture* function() gtk_gesture_click_new;
}
