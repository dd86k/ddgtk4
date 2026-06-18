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
{
    alias A_gtk_gesture_get_device = GdkDevice* function(GtkGesture* gesture);
    alias A_gtk_gesture_set_state = gboolean function(GtkGesture* gesture, GtkEventSequenceState state);
    alias A_gtk_gesture_get_sequence_state = GtkEventSequenceState function(GtkGesture* gesture, GdkEventSequence* sequence);
    alias A_gtk_gesture_set_sequence_state = gboolean function(GtkGesture* gesture, GdkEventSequence* sequence, GtkEventSequenceState state);
    alias A_gtk_gesture_get_sequences = GList* function(GtkGesture* gesture);
    alias A_gtk_gesture_get_last_updated_sequence = GdkEventSequence* function(GtkGesture* gesture);
    alias A_gtk_gesture_handles_sequence = gboolean function(GtkGesture* gesture, GdkEventSequence* sequence);
    alias A_gtk_gesture_get_last_event = GdkEvent* function(GtkGesture* gesture, GdkEventSequence* sequence);
    alias A_gtk_gesture_get_point = gboolean function(GtkGesture* gesture, GdkEventSequence* sequence, double* x, double* y);
    alias A_gtk_gesture_get_bounding_box = gboolean function(GtkGesture* gesture, GdkRectangle* rect);
    alias A_gtk_gesture_get_bounding_box_center = gboolean function(GtkGesture* gesture, double* x, double* y);
    alias A_gtk_gesture_is_active = gboolean function(GtkGesture* gesture);
    alias A_gtk_gesture_is_recognized = gboolean function(GtkGesture* gesture);
    alias A_gtk_gesture_group = void function(GtkGesture* group_gesture, GtkGesture* gesture);
    alias A_gtk_gesture_ungroup = void function(GtkGesture* gesture);
    alias A_gtk_gesture_get_group = GList* function(GtkGesture* gesture);
    alias A_gtk_gesture_is_grouped_with = gboolean function(GtkGesture* gesture, GtkGesture* other);
}

__gshared
{
    A_gtk_gesture_get_device gtk_gesture_get_device;
    A_gtk_gesture_set_state gtk_gesture_set_state;
    A_gtk_gesture_get_sequence_state gtk_gesture_get_sequence_state;
    A_gtk_gesture_set_sequence_state gtk_gesture_set_sequence_state;
    A_gtk_gesture_get_sequences gtk_gesture_get_sequences;
    A_gtk_gesture_get_last_updated_sequence gtk_gesture_get_last_updated_sequence;
    A_gtk_gesture_handles_sequence gtk_gesture_handles_sequence;
    A_gtk_gesture_get_last_event gtk_gesture_get_last_event;
    A_gtk_gesture_get_point gtk_gesture_get_point;
    A_gtk_gesture_get_bounding_box gtk_gesture_get_bounding_box;
    A_gtk_gesture_get_bounding_box_center gtk_gesture_get_bounding_box_center;
    A_gtk_gesture_is_active gtk_gesture_is_active;
    A_gtk_gesture_is_recognized gtk_gesture_is_recognized;
    A_gtk_gesture_group gtk_gesture_group;
    A_gtk_gesture_ungroup gtk_gesture_ungroup;
    A_gtk_gesture_get_group gtk_gesture_get_group;
    A_gtk_gesture_is_grouped_with gtk_gesture_is_grouped_with;
}
