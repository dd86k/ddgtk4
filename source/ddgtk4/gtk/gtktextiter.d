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
__gshared
{
    pragma(mangle, "ddgtk4_gtk_text_iter_get_buffer")
    GtkTextBuffer* function(const(GtkTextIter)*) gtk_text_iter_get_buffer;
    pragma(mangle, "ddgtk4_gtk_text_iter_get_offset")
    gint function(const(GtkTextIter)*) gtk_text_iter_get_offset;
    pragma(mangle, "ddgtk4_gtk_text_iter_get_line")
    gint function(const(GtkTextIter)*) gtk_text_iter_get_line;
    pragma(mangle, "ddgtk4_gtk_text_iter_get_line_offset")
    gint function(const(GtkTextIter)*) gtk_text_iter_get_line_offset;
    pragma(mangle, "ddgtk4_gtk_text_iter_is_start")
    gboolean function(const(GtkTextIter)*) gtk_text_iter_is_start;
    pragma(mangle, "ddgtk4_gtk_text_iter_is_end")
    gboolean function(const(GtkTextIter)*) gtk_text_iter_is_end;
    pragma(mangle, "ddgtk4_gtk_text_iter_forward_char")
    gboolean function(GtkTextIter*) gtk_text_iter_forward_char;
    pragma(mangle, "ddgtk4_gtk_text_iter_backward_char")
    gboolean function(GtkTextIter*) gtk_text_iter_backward_char;
    pragma(mangle, "ddgtk4_gtk_text_iter_forward_chars")
    gboolean function(GtkTextIter*, gint) gtk_text_iter_forward_chars;
    pragma(mangle, "ddgtk4_gtk_text_iter_backward_chars")
    gboolean function(GtkTextIter*, gint) gtk_text_iter_backward_chars;
    pragma(mangle, "ddgtk4_gtk_text_iter_equal")
    gboolean function(const(GtkTextIter)*, const(GtkTextIter)*) gtk_text_iter_equal;
    pragma(mangle, "ddgtk4_gtk_text_iter_compare")
    gint function(const(GtkTextIter)*, const(GtkTextIter)*) gtk_text_iter_compare;
}
