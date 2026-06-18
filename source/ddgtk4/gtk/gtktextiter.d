module ddgtk4.gtk.gtktextiter;

import ddgtk4.glib.gtypes : gboolean, gint, gpointer;

struct GtkTextBuffer;

// GtkTextIter is normally stack-allocated; mirror the upstream private layout
// so the size matches what GTK expects. Fields are private; use the accessor
// functions below.
struct GtkTextIter
{
    private gpointer  dummy1;
    private gpointer  dummy2;
    private gint      dummy3;
    private gint      dummy4;
    private gint      dummy5;
    private gint      dummy6;
    private gint      dummy7;
    private gint      dummy8;
    private gpointer  dummy9;
    private gpointer  dummy10;
    private gint      dummy11;
    private gint      dummy12;
    private gint      dummy13;
    private gpointer  dummy14;
}

// Functions
extern (C)
{
    alias A_gtk_text_iter_get_buffer = GtkTextBuffer* function(const(GtkTextIter)*);
    alias A_gtk_text_iter_get_offset = gint function(const(GtkTextIter)*);
    alias A_gtk_text_iter_get_line = gint function(const(GtkTextIter)*);
    alias A_gtk_text_iter_get_line_offset = gint function(const(GtkTextIter)*);
    alias A_gtk_text_iter_is_start = gboolean function(const(GtkTextIter)*);
    alias A_gtk_text_iter_is_end = gboolean function(const(GtkTextIter)*);
    alias A_gtk_text_iter_forward_char = gboolean function(GtkTextIter*);
    alias A_gtk_text_iter_backward_char = gboolean function(GtkTextIter*);
    alias A_gtk_text_iter_forward_chars = gboolean function(GtkTextIter*, gint);
    alias A_gtk_text_iter_backward_chars = gboolean function(GtkTextIter*, gint);
    alias A_gtk_text_iter_equal = gboolean function(const(GtkTextIter)*, const(GtkTextIter)*);
    alias A_gtk_text_iter_compare = gint function(const(GtkTextIter)*, const(GtkTextIter)*);
}

__gshared
{
    A_gtk_text_iter_get_buffer gtk_text_iter_get_buffer;
    A_gtk_text_iter_get_offset gtk_text_iter_get_offset;
    A_gtk_text_iter_get_line gtk_text_iter_get_line;
    A_gtk_text_iter_get_line_offset gtk_text_iter_get_line_offset;
    A_gtk_text_iter_is_start gtk_text_iter_is_start;
    A_gtk_text_iter_is_end gtk_text_iter_is_end;
    A_gtk_text_iter_forward_char gtk_text_iter_forward_char;
    A_gtk_text_iter_backward_char gtk_text_iter_backward_char;
    A_gtk_text_iter_forward_chars gtk_text_iter_forward_chars;
    A_gtk_text_iter_backward_chars gtk_text_iter_backward_chars;
    A_gtk_text_iter_equal gtk_text_iter_equal;
    A_gtk_text_iter_compare gtk_text_iter_compare;
}
