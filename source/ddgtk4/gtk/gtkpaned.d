module ddgtk4.gtk.gtkpaned;

import ddgtk4.gtk.gtkwidget;
import ddgtk4.gtk.gtkenums : GtkOrientation;
import ddgtk4.glib.gtypes : gboolean;

struct GtkPaned;

// Macros
pragma(inline, true)
{
    GtkPaned* GTK_PANED(void *w)
    {
        return cast(GtkPaned*)w;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget *function(GtkOrientation) gtk_paned_new;
    
    void function(GtkPaned*, GtkWidget*) gtk_paned_set_start_child;
    void function(GtkPaned*, GtkWidget*) gtk_paned_set_end_child;
    
    void function(GtkPaned*, gboolean) gtk_paned_set_shrink_start_child;
    void function(GtkPaned*, gboolean) gtk_paned_set_resize_start_child;
    void function(GtkPaned*, gboolean) gtk_paned_set_shrink_end_child;
    void function(GtkPaned*, gboolean) gtk_paned_set_resize_end_child;
    
    
}