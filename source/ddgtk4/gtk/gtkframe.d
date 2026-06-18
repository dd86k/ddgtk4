module ddgtk4.gtk.gtkframe;

public import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkFrame;

// Macros
pragma(inline, true)
{
    GtkFrame* GTK_FRAME(void *f)
    {
        return cast(GtkFrame*)f;
    }
}

// Functions
extern (C)
{
    alias A_gtk_frame_new = GtkWidget* function(const(char)*);
    alias A_gtk_frame_set_label = void function(GtkFrame*, const(char)*);
    alias A_gtk_frame_set_child = void function(GtkFrame*, GtkWidget*);
}

__gshared
{
    A_gtk_frame_new gtk_frame_new;
    A_gtk_frame_set_label gtk_frame_set_label;
    A_gtk_frame_set_child gtk_frame_set_child;
}