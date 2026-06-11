module ddgtk4.gtk.gtktextbuffer;

public import ddgtk4.gtk.gtktextiter : GtkTextBuffer, GtkTextIter;
import ddgtk4.glib.gtypes : gboolean, gint;

struct GtkTextTagTable;

// Macros
pragma(inline, true)
{
    GtkTextBuffer* GTK_TEXT_BUFFER(void *o)
    {
        return cast(GtkTextBuffer*)o;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_text_buffer_new")
    GtkTextBuffer* function(GtkTextTagTable*) gtk_text_buffer_new;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_char_count")
    gint function(GtkTextBuffer*) gtk_text_buffer_get_char_count;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_line_count")
    gint function(GtkTextBuffer*) gtk_text_buffer_get_line_count;
    pragma(mangle, "ddgtk4_gtk_text_buffer_set_text")
    void function(GtkTextBuffer*, const(char)*, gint) gtk_text_buffer_set_text;
    pragma(mangle, "ddgtk4_gtk_text_buffer_insert")
    void function(GtkTextBuffer*, GtkTextIter*, const(char)*, gint) gtk_text_buffer_insert;
    pragma(mangle, "ddgtk4_gtk_text_buffer_insert_at_cursor")
    void function(GtkTextBuffer*, const(char)*, gint) gtk_text_buffer_insert_at_cursor;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_text")
    char* function(GtkTextBuffer*, const(GtkTextIter)*, const(GtkTextIter)*, gboolean) gtk_text_buffer_get_text;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_slice")
    char* function(GtkTextBuffer*, const(GtkTextIter)*, const(GtkTextIter)*, gboolean) gtk_text_buffer_get_slice;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_start_iter")
    void function(GtkTextBuffer*, GtkTextIter*) gtk_text_buffer_get_start_iter;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_end_iter")
    void function(GtkTextBuffer*, GtkTextIter*) gtk_text_buffer_get_end_iter;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_bounds")
    void function(GtkTextBuffer*, GtkTextIter*, GtkTextIter*) gtk_text_buffer_get_bounds;
    pragma(mangle, "ddgtk4_gtk_text_buffer_get_modified")
    gboolean function(GtkTextBuffer*) gtk_text_buffer_get_modified;
    pragma(mangle, "ddgtk4_gtk_text_buffer_set_modified")
    void function(GtkTextBuffer*, gboolean) gtk_text_buffer_set_modified;
    pragma(mangle, "ddgtk4_gtk_text_buffer_delete")
    void function(GtkTextBuffer*, GtkTextIter*, GtkTextIter*) gtk_text_buffer_delete;
}
