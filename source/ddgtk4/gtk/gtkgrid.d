module ddgtk4.gtk.gtkgrid;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes : gboolean, guint;

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
{
    alias A_gtk_grid_new = GtkWidget* function();
    alias A_gtk_grid_insert_row = void function(GtkGrid*, int);
    alias A_gtk_grid_insert_column = void function(GtkGrid*, int);
    alias A_gtk_grid_attach = void function(GtkGrid *grid, GtkWidget *child, int column, int row, int width, int height);
    alias A_gtk_grid_set_column_homogeneous = void function(GtkGrid*, gboolean);
    alias A_gtk_grid_set_row_homogeneous = void function(GtkGrid*, gboolean);
    alias A_gtk_grid_set_column_spacing = void function(GtkGrid*, guint);
    alias A_gtk_grid_set_row_spacing = void function(GtkGrid*, guint);
}

__gshared
{
    A_gtk_grid_new gtk_grid_new;
    A_gtk_grid_insert_row gtk_grid_insert_row;
    A_gtk_grid_insert_column gtk_grid_insert_column;
    A_gtk_grid_attach gtk_grid_attach;
    A_gtk_grid_set_column_homogeneous gtk_grid_set_column_homogeneous;
    A_gtk_grid_set_row_homogeneous gtk_grid_set_row_homogeneous;
    A_gtk_grid_set_column_spacing gtk_grid_set_column_spacing;
    A_gtk_grid_set_row_spacing gtk_grid_set_row_spacing;
}