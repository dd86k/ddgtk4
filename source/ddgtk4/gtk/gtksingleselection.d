module ddgtk4.gtk.gtksingleselection;

public import ddgtk4.glib.gtypes : gboolean, guint, gpointer;
public import ddgtk4.gio.glistmodel : GListModel;

struct GtkSingleSelection;

// Macros
pragma(inline, true)
{
    GtkSingleSelection* GTK_SINGLE_SELECTION(void *s)
    {
        return cast(GtkSingleSelection*)s;
    }
}

// Functions
extern (C)
__gshared
{
    GtkSingleSelection* function(GListModel*) gtk_single_selection_new;
    GListModel* function(GtkSingleSelection*) gtk_single_selection_get_model;
    void function(GtkSingleSelection*, GListModel*) gtk_single_selection_set_model;
    guint function(GtkSingleSelection*) gtk_single_selection_get_selected;
    void function(GtkSingleSelection*, guint) gtk_single_selection_set_selected;
    gpointer function(GtkSingleSelection*) gtk_single_selection_get_selected_item;
    gboolean function(GtkSingleSelection*) gtk_single_selection_get_autoselect;
    void function(GtkSingleSelection*, gboolean) gtk_single_selection_set_autoselect;
    gboolean function(GtkSingleSelection*) gtk_single_selection_get_can_unselect;
    void function(GtkSingleSelection*, gboolean) gtk_single_selection_set_can_unselect;
}