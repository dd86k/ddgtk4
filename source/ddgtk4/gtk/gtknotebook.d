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
    pragma(mangle, "ddgtk4_gtk_notebook_new")
    A_gtk_notebook_new gtk_notebook_new;
    
    alias A_gtk_notebook_prepend_page =
        int function(
            GtkNotebook* notebook,
            GtkWidget* child,
            GtkWidget* tab_label);
    pragma(mangle, "ddgtk4_gtk_notebook_prepend_page")
    A_gtk_notebook_prepend_page gtk_notebook_prepend_page;
    
    alias A_gtk_notebook_append_page =
        int function(
            GtkNotebook* notebook,
            GtkWidget* child,
            GtkWidget* tab_label);
    pragma(mangle, "ddgtk4_gtk_notebook_append_page")
    A_gtk_notebook_append_page gtk_notebook_append_page;

    alias A_gtk_notebook_remove_page =
        void function(
            GtkNotebook* notebook,
            int page_num);
    pragma(mangle, "ddgtk4_gtk_notebook_remove_page")
    A_gtk_notebook_remove_page gtk_notebook_remove_page;

    alias A_gtk_notebook_set_current_page =
        void function(
            GtkNotebook* notebook,
            int page_num);
    pragma(mangle, "ddgtk4_gtk_notebook_set_current_page")
    A_gtk_notebook_set_current_page gtk_notebook_set_current_page;

    alias A_gtk_notebook_get_current_page =
        int function(GtkNotebook* notebook);
    pragma(mangle, "ddgtk4_gtk_notebook_get_current_page")
    A_gtk_notebook_get_current_page gtk_notebook_get_current_page;

    alias A_gtk_notebook_get_n_pages =
        int function(GtkNotebook* notebook);
    pragma(mangle, "ddgtk4_gtk_notebook_get_n_pages")
    A_gtk_notebook_get_n_pages gtk_notebook_get_n_pages;

    alias A_gtk_notebook_get_nth_page =
        GtkWidget* function(
            GtkNotebook* notebook,
            int page_num);
    pragma(mangle, "ddgtk4_gtk_notebook_get_nth_page")
    A_gtk_notebook_get_nth_page gtk_notebook_get_nth_page;

    alias A_gtk_notebook_page_num =
        int function(
            GtkNotebook* notebook,
            GtkWidget* child);
    pragma(mangle, "ddgtk4_gtk_notebook_page_num")
    A_gtk_notebook_page_num gtk_notebook_page_num;
}