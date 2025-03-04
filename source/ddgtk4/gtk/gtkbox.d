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
__gshared
{
    GtkWidget* function(GtkOrientation, int) gtk_box_new;
    
    void function(GtkBox*, GtkWidget*) gtk_box_append;
    
    void function(GtkBox*, gboolean) gtk_box_set_homogeneous;
    
    void function(GtkBox*, GtkWidget*) gtk_box_remove;
}
