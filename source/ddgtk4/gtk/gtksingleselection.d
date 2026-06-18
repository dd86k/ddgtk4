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
{
    alias A_gtk_single_selection_new = GtkSingleSelection* function(GListModel*);
    alias A_gtk_single_selection_get_model = GListModel* function(GtkSingleSelection*);
    alias A_gtk_single_selection_set_model = void function(GtkSingleSelection*, GListModel*);
    alias A_gtk_single_selection_get_selected = guint function(GtkSingleSelection*);
    alias A_gtk_single_selection_set_selected = void function(GtkSingleSelection*, guint);
    alias A_gtk_single_selection_get_selected_item = gpointer function(GtkSingleSelection*);
    alias A_gtk_single_selection_get_autoselect = gboolean function(GtkSingleSelection*);
    alias A_gtk_single_selection_set_autoselect = void function(GtkSingleSelection*, gboolean);
    alias A_gtk_single_selection_get_can_unselect = gboolean function(GtkSingleSelection*);
    alias A_gtk_single_selection_set_can_unselect = void function(GtkSingleSelection*, gboolean);
}

__gshared
{
    A_gtk_single_selection_new gtk_single_selection_new;
    A_gtk_single_selection_get_model gtk_single_selection_get_model;
    A_gtk_single_selection_set_model gtk_single_selection_set_model;
    A_gtk_single_selection_get_selected gtk_single_selection_get_selected;
    A_gtk_single_selection_set_selected gtk_single_selection_set_selected;
    A_gtk_single_selection_get_selected_item gtk_single_selection_get_selected_item;
    A_gtk_single_selection_get_autoselect gtk_single_selection_get_autoselect;
    A_gtk_single_selection_set_autoselect gtk_single_selection_set_autoselect;
    A_gtk_single_selection_get_can_unselect gtk_single_selection_get_can_unselect;
    A_gtk_single_selection_set_can_unselect gtk_single_selection_set_can_unselect;
}