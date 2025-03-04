module ddgtk4.gtk.gtknotebook;

public import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkNotebook;

pragma(inline, true)
{
    GtkNotebook* GTK_NOTEBOOK(void *f)
    {
        return cast(GtkNotebook*)f;
    }
}

extern (C)
__gshared
{
    alias A_gtk_notebook_new =
        GtkWidget* function();
    A_gtk_notebook_new gtk_notebook_new;
    
    alias A_gtk_notebook_prepend_page =
        int function(
            GtkNotebook* notebook,
            GtkWidget* child,
            GtkWidget* tab_label);
    A_gtk_notebook_prepend_page gtk_notebook_prepend_page;
    
    alias A_gtk_notebook_append_page =
        int function(
            GtkNotebook* notebook,
            GtkWidget* child,
            GtkWidget* tab_label);
    A_gtk_notebook_append_page gtk_notebook_append_page;
}