module ddgtk4.gtk.gtkbox;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.gtk.gtkenums : GtkOrientation;
import ddgtk4.glib.gtypes : gboolean;

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
    alias A_gtk_box_new =
        GtkWidget* function(GtkOrientation, int);
    A_gtk_box_new gtk_box_new;
    
    alias A_gtk_box_append =
        void function(GtkBox*, GtkWidget*);
    A_gtk_box_append gtk_box_append;
    
    alias A_gtk_box_set_homogeneous =
        void function(GtkBox* box, gboolean homogeneous);
    A_gtk_box_set_homogeneous gtk_box_set_homogeneous;
}
