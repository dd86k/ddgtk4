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
{
    alias A_gtk_paned_new = GtkWidget *function(GtkOrientation);
    alias A_gtk_paned_set_start_child = void function(GtkPaned*, GtkWidget*);
    alias A_gtk_paned_set_end_child = void function(GtkPaned*, GtkWidget*);
    alias A_gtk_paned_set_shrink_start_child = void function(GtkPaned*, gboolean);
    alias A_gtk_paned_set_resize_start_child = void function(GtkPaned*, gboolean);
    alias A_gtk_paned_set_shrink_end_child = void function(GtkPaned*, gboolean);
    alias A_gtk_paned_set_resize_end_child = void function(GtkPaned*, gboolean);
}

__gshared
{
    A_gtk_paned_new gtk_paned_new;
    A_gtk_paned_set_start_child gtk_paned_set_start_child;
    A_gtk_paned_set_end_child gtk_paned_set_end_child;
    A_gtk_paned_set_shrink_start_child gtk_paned_set_shrink_start_child;
    A_gtk_paned_set_resize_start_child gtk_paned_set_resize_start_child;
    A_gtk_paned_set_shrink_end_child gtk_paned_set_shrink_end_child;
    A_gtk_paned_set_resize_end_child gtk_paned_set_resize_end_child;
}