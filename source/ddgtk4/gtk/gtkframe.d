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
__gshared
{
    GtkWidget* function(const(char)*)      gtk_frame_new;
    void function(GtkFrame*, const(char)*) gtk_frame_set_label;
    void function(GtkFrame*, GtkWidget*)   gtk_frame_set_child;
}