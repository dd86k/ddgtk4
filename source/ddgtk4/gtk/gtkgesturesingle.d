module ddgtk4.gtk.gtkgesturesingle;

import ddgtk4.glib.gtypes : gboolean, guint;
import ddgtk4.gtk.gtkeventcontroller : GdkEventSequence;

struct GtkGestureSingle;

pragma(inline, true)
{
    GtkGestureSingle* GTK_GESTURE_SINGLE(void *f)
    {
        return cast(GtkGestureSingle*)f;
    }
}

extern (C)
{
    alias A_gtk_gesture_single_get_touch_only = gboolean function(GtkGestureSingle* gesture);
    alias A_gtk_gesture_single_set_touch_only = void function(GtkGestureSingle* gesture, gboolean touch_only);
    alias A_gtk_gesture_single_get_exclusive = gboolean function(GtkGestureSingle* gesture);
    alias A_gtk_gesture_single_set_exclusive = void function(GtkGestureSingle* gesture, gboolean exclusive);
    alias A_gtk_gesture_single_get_button = guint function(GtkGestureSingle* gesture);
    alias A_gtk_gesture_single_set_button = void function(GtkGestureSingle* gesture, guint button);
    alias A_gtk_gesture_single_get_current_button = guint function(GtkGestureSingle* gesture);
    alias A_gtk_gesture_single_get_current_sequence = GdkEventSequence* function(GtkGestureSingle* gesture);
}

__gshared
{
    A_gtk_gesture_single_get_touch_only gtk_gesture_single_get_touch_only;
    A_gtk_gesture_single_set_touch_only gtk_gesture_single_set_touch_only;
    A_gtk_gesture_single_get_exclusive gtk_gesture_single_get_exclusive;
    A_gtk_gesture_single_set_exclusive gtk_gesture_single_set_exclusive;
    A_gtk_gesture_single_get_button gtk_gesture_single_get_button;
    A_gtk_gesture_single_set_button gtk_gesture_single_set_button;
    A_gtk_gesture_single_get_current_button gtk_gesture_single_get_current_button;
    A_gtk_gesture_single_get_current_sequence gtk_gesture_single_get_current_sequence;
}
