module ddgtk4.gtk.gtkbox;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtkenums : GtkOrientation;
public import ddgtk4.glib.gtypes : gboolean;

struct GtkBox;

// Macros
pragma(inline, true)
{
    GtkBox* GTK_BOX(GtkWidget *w)
    {
        return cast(GtkBox*)w;
    }
}

// Functions
extern (C)
{
    alias A_gtk_box_new = GtkWidget* function(GtkOrientation, int);
    alias A_gtk_box_append = void function(GtkBox*, GtkWidget*);
    alias A_gtk_box_set_homogeneous = void function(GtkBox*, gboolean);
    alias A_gtk_box_remove = void function(GtkBox*, GtkWidget*);
}

__gshared
{
    A_gtk_box_new gtk_box_new;
    A_gtk_box_append gtk_box_append;
    A_gtk_box_set_homogeneous gtk_box_set_homogeneous;
    A_gtk_box_remove gtk_box_remove;
}
