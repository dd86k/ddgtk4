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
{
    alias A_gtk_text_buffer_new = GtkTextBuffer* function(GtkTextTagTable*);
    alias A_gtk_text_buffer_get_char_count = gint function(GtkTextBuffer*);
    alias A_gtk_text_buffer_get_line_count = gint function(GtkTextBuffer*);
    alias A_gtk_text_buffer_set_text = void function(GtkTextBuffer*, const(char)*, gint);
    alias A_gtk_text_buffer_insert = void function(GtkTextBuffer*, GtkTextIter*, const(char)*, gint);
    alias A_gtk_text_buffer_insert_at_cursor = void function(GtkTextBuffer*, const(char)*, gint);
    alias A_gtk_text_buffer_get_text = char* function(GtkTextBuffer*, const(GtkTextIter)*, const(GtkTextIter)*, gboolean);
    alias A_gtk_text_buffer_get_slice = char* function(GtkTextBuffer*, const(GtkTextIter)*, const(GtkTextIter)*, gboolean);
    alias A_gtk_text_buffer_get_start_iter = void function(GtkTextBuffer*, GtkTextIter*);
    alias A_gtk_text_buffer_get_end_iter = void function(GtkTextBuffer*, GtkTextIter*);
    alias A_gtk_text_buffer_get_bounds = void function(GtkTextBuffer*, GtkTextIter*, GtkTextIter*);
    alias A_gtk_text_buffer_get_modified = gboolean function(GtkTextBuffer*);
    alias A_gtk_text_buffer_set_modified = void function(GtkTextBuffer*, gboolean);
    alias A_gtk_text_buffer_delete = void function(GtkTextBuffer*, GtkTextIter*, GtkTextIter*);
    alias A_gtk_text_buffer_get_iter_at_line = gboolean function(GtkTextBuffer*, GtkTextIter*, gint);
    alias A_gtk_text_buffer_place_cursor = void function(GtkTextBuffer*, const(GtkTextIter)*);
}

__gshared
{
    A_gtk_text_buffer_new gtk_text_buffer_new;
    A_gtk_text_buffer_get_char_count gtk_text_buffer_get_char_count;
    A_gtk_text_buffer_get_line_count gtk_text_buffer_get_line_count;
    A_gtk_text_buffer_set_text gtk_text_buffer_set_text;
    A_gtk_text_buffer_insert gtk_text_buffer_insert;
    A_gtk_text_buffer_insert_at_cursor gtk_text_buffer_insert_at_cursor;
    A_gtk_text_buffer_get_text gtk_text_buffer_get_text;
    A_gtk_text_buffer_get_slice gtk_text_buffer_get_slice;
    A_gtk_text_buffer_get_start_iter gtk_text_buffer_get_start_iter;
    A_gtk_text_buffer_get_end_iter gtk_text_buffer_get_end_iter;
    A_gtk_text_buffer_get_bounds gtk_text_buffer_get_bounds;
    A_gtk_text_buffer_get_modified gtk_text_buffer_get_modified;
    A_gtk_text_buffer_set_modified gtk_text_buffer_set_modified;
    A_gtk_text_buffer_delete gtk_text_buffer_delete;
    A_gtk_text_buffer_get_iter_at_line gtk_text_buffer_get_iter_at_line;
    A_gtk_text_buffer_place_cursor gtk_text_buffer_place_cursor;
}
