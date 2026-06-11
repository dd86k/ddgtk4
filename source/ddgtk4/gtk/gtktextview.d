module ddgtk4.gtk.gtktextview;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtktextbuffer : GtkTextBuffer;
public import ddgtk4.gtk.gtkenums : GtkWrapMode, GtkJustification;
import ddgtk4.glib.gtypes : gboolean, gint;

struct GtkTextView;

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
__gshared
{
    pragma(mangle, "ddgtk4_gtk_text_view_new")
    GtkWidget* function() gtk_text_view_new;
    pragma(mangle, "ddgtk4_gtk_text_view_new_with_buffer")
    GtkWidget* function(GtkTextBuffer*) gtk_text_view_new_with_buffer;
    pragma(mangle, "ddgtk4_gtk_text_view_set_buffer")
    void function(GtkTextView*, GtkTextBuffer*) gtk_text_view_set_buffer;
    pragma(mangle, "ddgtk4_gtk_text_view_get_buffer")
    GtkTextBuffer* function(GtkTextView*) gtk_text_view_get_buffer;
    pragma(mangle, "ddgtk4_gtk_text_view_set_editable")
    void function(GtkTextView*, gboolean) gtk_text_view_set_editable;
    pragma(mangle, "ddgtk4_gtk_text_view_get_editable")
    gboolean function(GtkTextView*) gtk_text_view_get_editable;
    pragma(mangle, "ddgtk4_gtk_text_view_set_wrap_mode")
    void function(GtkTextView*, GtkWrapMode) gtk_text_view_set_wrap_mode;
    pragma(mangle, "ddgtk4_gtk_text_view_get_wrap_mode")
    GtkWrapMode function(GtkTextView*) gtk_text_view_get_wrap_mode;
    pragma(mangle, "ddgtk4_gtk_text_view_set_monospace")
    void function(GtkTextView*, gboolean) gtk_text_view_set_monospace;
    pragma(mangle, "ddgtk4_gtk_text_view_get_monospace")
    gboolean function(GtkTextView*) gtk_text_view_get_monospace;
    pragma(mangle, "ddgtk4_gtk_text_view_set_cursor_visible")
    void function(GtkTextView*, gboolean) gtk_text_view_set_cursor_visible;
    pragma(mangle, "ddgtk4_gtk_text_view_get_cursor_visible")
    gboolean function(GtkTextView*) gtk_text_view_get_cursor_visible;
    pragma(mangle, "ddgtk4_gtk_text_view_set_justification")
    void function(GtkTextView*, GtkJustification) gtk_text_view_set_justification;
    pragma(mangle, "ddgtk4_gtk_text_view_get_justification")
    GtkJustification function(GtkTextView*) gtk_text_view_get_justification;
    pragma(mangle, "ddgtk4_gtk_text_view_set_left_margin")
    void function(GtkTextView*, gint) gtk_text_view_set_left_margin;
    pragma(mangle, "ddgtk4_gtk_text_view_set_right_margin")
    void function(GtkTextView*, gint) gtk_text_view_set_right_margin;
    pragma(mangle, "ddgtk4_gtk_text_view_set_top_margin")
    void function(GtkTextView*, gint) gtk_text_view_set_top_margin;
    pragma(mangle, "ddgtk4_gtk_text_view_set_bottom_margin")
    void function(GtkTextView*, gint) gtk_text_view_set_bottom_margin;
}
