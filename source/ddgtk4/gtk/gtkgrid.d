module ddgtk4.gtk.gtkgrid;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.glib.gtypes : gboolean, guint;

struct GtkGrid;

pragma(inline, true)
{
    // Typically takes in widgets
    GtkGrid* GTK_GRID(GtkWidget *w)
    {
        return cast(GtkGrid*)w;
    }
}

extern (C)
__gshared
{
    GtkWidget* function() gtk_grid_new;
    
    void function(GtkGrid*, int) gtk_grid_insert_row;
    void function(GtkGrid*, int) gtk_grid_insert_column;
    
    void function(GtkGrid    *grid,
                  GtkWidget  *child,
                  int         column,
                  int         row,
                  int         width,
                  int         height) gtk_grid_attach;
    
    void function(GtkGrid*, gboolean) gtk_grid_set_column_homogeneous;
    void function(GtkGrid*, gboolean) gtk_grid_set_row_homogeneous;
    
    void function(GtkGrid*, guint) gtk_grid_set_column_spacing;
    void function(GtkGrid*, guint) gtk_grid_set_row_spacing;
}