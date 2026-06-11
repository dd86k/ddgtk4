module ddgtk4.gtk.gtkgesturesingle;

import ddgtk4.glib.gtypes : gboolean, guint;

struct GtkGestureSingle;
struct GdkEventSequence;

pragma(inline, true)
{
    GtkGestureSingle* GTK_GESTURE_SINGLE(void *f)
    {
        return cast(GtkGestureSingle*)f;
    }
}

extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_gesture_single_get_touch_only")
    gboolean function(GtkGestureSingle* gesture) gtk_gesture_single_get_touch_only;

    pragma(mangle, "ddgtk4_gtk_gesture_single_set_touch_only")
    void function(GtkGestureSingle* gesture, gboolean touch_only) gtk_gesture_single_set_touch_only;

    pragma(mangle, "ddgtk4_gtk_gesture_single_get_exclusive")
    gboolean function(GtkGestureSingle* gesture) gtk_gesture_single_get_exclusive;

    pragma(mangle, "ddgtk4_gtk_gesture_single_set_exclusive")
    void function(GtkGestureSingle* gesture, gboolean exclusive) gtk_gesture_single_set_exclusive;

    pragma(mangle, "ddgtk4_gtk_gesture_single_get_button")
    guint function(GtkGestureSingle* gesture) gtk_gesture_single_get_button;

    pragma(mangle, "ddgtk4_gtk_gesture_single_set_button")
    void function(GtkGestureSingle* gesture, guint button) gtk_gesture_single_set_button;

    pragma(mangle, "ddgtk4_gtk_gesture_single_get_current_button")
    guint function(GtkGestureSingle* gesture) gtk_gesture_single_get_current_button;

    pragma(mangle, "ddgtk4_gtk_gesture_single_get_current_sequence")
    GdkEventSequence* function(GtkGestureSingle* gesture) gtk_gesture_single_get_current_sequence;
}
