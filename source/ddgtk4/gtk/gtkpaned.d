module ddgtk4.gtk.gtkpaned;

import ddgtk4.gtk.gtkwidget;
public import ddgtk4.gtk.gtkenums : GtkOrientation;
public import ddgtk4.glib.gtypes : gboolean;

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
    pragma(mangle, "ddgtk4_gtk_paned_new")
    GtkWidget *function(GtkOrientation) gtk_paned_new;
    pragma(mangle, "ddgtk4_gtk_paned_set_start_child")
    void function(GtkPaned*, GtkWidget*) gtk_paned_set_start_child;
    pragma(mangle, "ddgtk4_gtk_paned_set_end_child")
    void function(GtkPaned*, GtkWidget*) gtk_paned_set_end_child;
    pragma(mangle, "ddgtk4_gtk_paned_set_shrink_start_child")
    void function(GtkPaned*, gboolean) gtk_paned_set_shrink_start_child;
    pragma(mangle, "ddgtk4_gtk_paned_set_resize_start_child")
    void function(GtkPaned*, gboolean) gtk_paned_set_resize_start_child;
    pragma(mangle, "ddgtk4_gtk_paned_set_shrink_end_child")
    void function(GtkPaned*, gboolean) gtk_paned_set_shrink_end_child;
    pragma(mangle, "ddgtk4_gtk_paned_set_resize_end_child")
    void function(GtkPaned*, gboolean) gtk_paned_set_resize_end_child;
    
    
}