module ddgtk4.gtk.gtktextview;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtktextbuffer : GtkTextBuffer, GtkTextIter;
public import ddgtk4.gtk.gtkenums : GtkWrapMode, GtkJustification,
    GtkTextWindowType, GtkTextViewLayer;
public import ddgtk4.gtk.gtksnapshot : GtkSnapshot;
import ddgtk4.glib.gtypes : gboolean, gint, gpointer;

struct GtkTextView;

struct GdkRectangle
{
    int x;
    int y;
    int width;
    int height;
}

// Signal callback signature for "snapshot-layer"
extern (C) alias GtkTextViewSnapshotLayerCallback =
    void function(GtkTextView* self, GtkTextViewLayer layer, GtkSnapshot* snapshot, gpointer user_data);

// Macros
pragma(inline, true)
{
    GtkTextView* GTK_TEXT_VIEW(void *o)
    {
        return cast(GtkTextView*)o;
    }
}

// Functions
extern (C)
{
    alias A_gtk_text_view_new = GtkWidget* function();
    alias A_gtk_text_view_new_with_buffer = GtkWidget* function(GtkTextBuffer*);
    alias A_gtk_text_view_set_buffer = void function(GtkTextView*, GtkTextBuffer*);
    alias A_gtk_text_view_get_buffer = GtkTextBuffer* function(GtkTextView*);
    alias A_gtk_text_view_set_editable = void function(GtkTextView*, gboolean);
    alias A_gtk_text_view_get_editable = gboolean function(GtkTextView*);
    alias A_gtk_text_view_set_wrap_mode = void function(GtkTextView*, GtkWrapMode);
    alias A_gtk_text_view_get_wrap_mode = GtkWrapMode function(GtkTextView*);
    alias A_gtk_text_view_set_monospace = void function(GtkTextView*, gboolean);
    alias A_gtk_text_view_get_monospace = gboolean function(GtkTextView*);
    alias A_gtk_text_view_set_cursor_visible = void function(GtkTextView*, gboolean);
    alias A_gtk_text_view_get_cursor_visible = gboolean function(GtkTextView*);
    alias A_gtk_text_view_set_justification = void function(GtkTextView*, GtkJustification);
    alias A_gtk_text_view_get_justification = GtkJustification function(GtkTextView*);
    alias A_gtk_text_view_set_left_margin = void function(GtkTextView*, gint);
    alias A_gtk_text_view_set_right_margin = void function(GtkTextView*, gint);
    alias A_gtk_text_view_set_top_margin = void function(GtkTextView*, gint);
    alias A_gtk_text_view_set_bottom_margin = void function(GtkTextView*, gint);
    alias A_gtk_text_view_scroll_to_iter = gboolean function(GtkTextView*, GtkTextIter*, double, gboolean, double, double);
    alias A_gtk_text_view_get_iter_location = void function(GtkTextView*, const(GtkTextIter)*, GdkRectangle*);
    alias A_gtk_text_view_buffer_to_window_coords = void function(GtkTextView*, GtkTextWindowType, gint, gint, gint*, gint*);
}

__gshared
{
    A_gtk_text_view_new gtk_text_view_new;
    A_gtk_text_view_new_with_buffer gtk_text_view_new_with_buffer;
    A_gtk_text_view_set_buffer gtk_text_view_set_buffer;
    A_gtk_text_view_get_buffer gtk_text_view_get_buffer;
    A_gtk_text_view_set_editable gtk_text_view_set_editable;
    A_gtk_text_view_get_editable gtk_text_view_get_editable;
    A_gtk_text_view_set_wrap_mode gtk_text_view_set_wrap_mode;
    A_gtk_text_view_get_wrap_mode gtk_text_view_get_wrap_mode;
    A_gtk_text_view_set_monospace gtk_text_view_set_monospace;
    A_gtk_text_view_get_monospace gtk_text_view_get_monospace;
    A_gtk_text_view_set_cursor_visible gtk_text_view_set_cursor_visible;
    A_gtk_text_view_get_cursor_visible gtk_text_view_get_cursor_visible;
    A_gtk_text_view_set_justification gtk_text_view_set_justification;
    A_gtk_text_view_get_justification gtk_text_view_get_justification;
    A_gtk_text_view_set_left_margin gtk_text_view_set_left_margin;
    A_gtk_text_view_set_right_margin gtk_text_view_set_right_margin;
    A_gtk_text_view_set_top_margin gtk_text_view_set_top_margin;
    A_gtk_text_view_set_bottom_margin gtk_text_view_set_bottom_margin;
    A_gtk_text_view_scroll_to_iter gtk_text_view_scroll_to_iter;
    A_gtk_text_view_get_iter_location gtk_text_view_get_iter_location;
    A_gtk_text_view_buffer_to_window_coords gtk_text_view_buffer_to_window_coords;
}
