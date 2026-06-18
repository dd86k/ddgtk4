module ddgtk4.gtk.gtktreelistmodel;

public import ddgtk4.glib.gtypes : gboolean, guint, gpointer, GDestroyNotify;
public import ddgtk4.gio.glistmodel : GListModel;

struct GtkTreeListModel;
struct GtkTreeListRow;

alias GtkTreeListModelCreateModelFunc = GListModel* function(gpointer item, gpointer user_data);

// Macros
pragma(inline, true)
{
    GtkTreeListModel* GTK_TREE_LIST_MODEL(void *l)
    {
        return cast(GtkTreeListModel*)l;
    }

    GtkTreeListRow* GTK_TREE_LIST_ROW(void *r)
    {
        return cast(GtkTreeListRow*)r;
    }
}

// Functions
extern (C)
{
    alias A_gtk_tree_list_model_new = GtkTreeListModel* function(GListModel*, gboolean, gboolean, GtkTreeListModelCreateModelFunc, gpointer, GDestroyNotify);
    alias A_gtk_tree_list_model_get_model = GListModel* function(GtkTreeListModel*);
    alias A_gtk_tree_list_model_get_passthrough = gboolean function(GtkTreeListModel*);
    alias A_gtk_tree_list_model_set_autoexpand = void function(GtkTreeListModel*, gboolean);
    alias A_gtk_tree_list_model_get_autoexpand = gboolean function(GtkTreeListModel*);
    alias A_gtk_tree_list_model_get_child_row = GtkTreeListRow* function(GtkTreeListModel*, guint);
    alias A_gtk_tree_list_model_get_row = GtkTreeListRow* function(GtkTreeListModel*, guint);

    alias A_gtk_tree_list_row_get_item = gpointer function(GtkTreeListRow*);
    alias A_gtk_tree_list_row_set_expanded = void function(GtkTreeListRow*, gboolean);
    alias A_gtk_tree_list_row_get_expanded = gboolean function(GtkTreeListRow*);
    alias A_gtk_tree_list_row_is_expandable = gboolean function(GtkTreeListRow*);
    alias A_gtk_tree_list_row_get_position = guint function(GtkTreeListRow*);
    alias A_gtk_tree_list_row_get_depth = guint function(GtkTreeListRow*);
    alias A_gtk_tree_list_row_get_children = GListModel* function(GtkTreeListRow*);
    alias A_gtk_tree_list_row_get_parent = GtkTreeListRow* function(GtkTreeListRow*);
    alias A_gtk_tree_list_row_get_child_row = GtkTreeListRow* function(GtkTreeListRow*, guint);
}

__gshared
{
    A_gtk_tree_list_model_new gtk_tree_list_model_new;
    A_gtk_tree_list_model_get_model gtk_tree_list_model_get_model;
    A_gtk_tree_list_model_get_passthrough gtk_tree_list_model_get_passthrough;
    A_gtk_tree_list_model_set_autoexpand gtk_tree_list_model_set_autoexpand;
    A_gtk_tree_list_model_get_autoexpand gtk_tree_list_model_get_autoexpand;
    A_gtk_tree_list_model_get_child_row gtk_tree_list_model_get_child_row;
    A_gtk_tree_list_model_get_row gtk_tree_list_model_get_row;
    A_gtk_tree_list_row_get_item gtk_tree_list_row_get_item;
    A_gtk_tree_list_row_set_expanded gtk_tree_list_row_set_expanded;
    A_gtk_tree_list_row_get_expanded gtk_tree_list_row_get_expanded;
    A_gtk_tree_list_row_is_expandable gtk_tree_list_row_is_expandable;
    A_gtk_tree_list_row_get_position gtk_tree_list_row_get_position;
    A_gtk_tree_list_row_get_depth gtk_tree_list_row_get_depth;
    A_gtk_tree_list_row_get_children gtk_tree_list_row_get_children;
    A_gtk_tree_list_row_get_parent gtk_tree_list_row_get_parent;
    A_gtk_tree_list_row_get_child_row gtk_tree_list_row_get_child_row;
}
