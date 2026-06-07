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
__gshared
{
    pragma(mangle, "ddgtk4_gtk_grid_new")
    GtkWidget* function() gtk_grid_new;
    pragma(mangle, "ddgtk4_gtk_grid_insert_row")
    void function(GtkGrid*, int) gtk_grid_insert_row;
    pragma(mangle, "ddgtk4_gtk_grid_insert_column")
    void function(GtkGrid*, int) gtk_grid_insert_column;
    pragma(mangle, "ddgtk4_gtk_grid_attach")
    void function(GtkGrid    *grid,
                  GtkWidget  *child,
                  int         column,
                  int         row,
                  int         width,
                  int         height) gtk_grid_attach;
    pragma(mangle, "ddgtk4_gtk_grid_set_column_homogeneous")
    void function(GtkGrid*, gboolean) gtk_grid_set_column_homogeneous;
    pragma(mangle, "ddgtk4_gtk_grid_set_row_homogeneous")
    void function(GtkGrid*, gboolean) gtk_grid_set_row_homogeneous;
    pragma(mangle, "ddgtk4_gtk_grid_set_column_spacing")
    void function(GtkGrid*, guint) gtk_grid_set_column_spacing;
    pragma(mangle, "ddgtk4_gtk_grid_set_row_spacing")
    void function(GtkGrid*, guint) gtk_grid_set_row_spacing;
}