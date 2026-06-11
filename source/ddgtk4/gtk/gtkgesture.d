module ddgtk4.gtk.gtkgesture;

import ddgtk4.gtk.gtkeventcontroller : GdkEvent, GdkDevice, GdkEventSequence;
import ddgtk4.gtk.gtkenums : GtkEventSequenceState;
import ddgtk4.glib.gtypes : gboolean;

struct GtkGesture;
struct GdkRectangle;
struct GList;

pragma(inline, true)
{
    GtkGesture* GTK_GESTURE(void *f)
    {
        return cast(GtkGesture*)f;
    }
}

extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_gesture_get_device")
    GdkDevice* function(GtkGesture* gesture) gtk_gesture_get_device;

    pragma(mangle, "ddgtk4_gtk_gesture_set_state")
    gboolean function(GtkGesture* gesture, GtkEventSequenceState state) gtk_gesture_set_state;

    pragma(mangle, "ddgtk4_gtk_gesture_get_sequence_state")
    GtkEventSequenceState function(GtkGesture* gesture, GdkEventSequence* sequence) gtk_gesture_get_sequence_state;

    pragma(mangle, "ddgtk4_gtk_gesture_set_sequence_state")
    gboolean function(GtkGesture* gesture, GdkEventSequence* sequence, GtkEventSequenceState state) gtk_gesture_set_sequence_state;

    pragma(mangle, "ddgtk4_gtk_gesture_get_sequences")
    GList* function(GtkGesture* gesture) gtk_gesture_get_sequences;

    pragma(mangle, "ddgtk4_gtk_gesture_get_last_updated_sequence")
    GdkEventSequence* function(GtkGesture* gesture) gtk_gesture_get_last_updated_sequence;

    pragma(mangle, "ddgtk4_gtk_gesture_handles_sequence")
    gboolean function(GtkGesture* gesture, GdkEventSequence* sequence) gtk_gesture_handles_sequence;

    pragma(mangle, "ddgtk4_gtk_gesture_get_last_event")
    GdkEvent* function(GtkGesture* gesture, GdkEventSequence* sequence) gtk_gesture_get_last_event;

    pragma(mangle, "ddgtk4_gtk_gesture_get_point")
    gboolean function(GtkGesture* gesture, GdkEventSequence* sequence, double* x, double* y) gtk_gesture_get_point;

    pragma(mangle, "ddgtk4_gtk_gesture_get_bounding_box")
    gboolean function(GtkGesture* gesture, GdkRectangle* rect) gtk_gesture_get_bounding_box;

    pragma(mangle, "ddgtk4_gtk_gesture_get_bounding_box_center")
    gboolean function(GtkGesture* gesture, double* x, double* y) gtk_gesture_get_bounding_box_center;

    pragma(mangle, "ddgtk4_gtk_gesture_is_active")
    gboolean function(GtkGesture* gesture) gtk_gesture_is_active;

    pragma(mangle, "ddgtk4_gtk_gesture_is_recognized")
    gboolean function(GtkGesture* gesture) gtk_gesture_is_recognized;

    pragma(mangle, "ddgtk4_gtk_gesture_group")
    void function(GtkGesture* group_gesture, GtkGesture* gesture) gtk_gesture_group;

    pragma(mangle, "ddgtk4_gtk_gesture_ungroup")
    void function(GtkGesture* gesture) gtk_gesture_ungroup;

    pragma(mangle, "ddgtk4_gtk_gesture_get_group")
    GList* function(GtkGesture* gesture) gtk_gesture_get_group;

    pragma(mangle, "ddgtk4_gtk_gesture_is_grouped_with")
    gboolean function(GtkGesture* gesture, GtkGesture* other) gtk_gesture_is_grouped_with;
}
