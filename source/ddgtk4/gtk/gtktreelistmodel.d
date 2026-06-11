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
__gshared
{
    pragma(mangle, "ddgtk4_gtk_tree_list_model_new")
    GtkTreeListModel* function(GListModel*, gboolean, gboolean, GtkTreeListModelCreateModelFunc, gpointer, GDestroyNotify) gtk_tree_list_model_new;
    pragma(mangle, "ddgtk4_gtk_tree_list_model_get_model")
    GListModel* function(GtkTreeListModel*) gtk_tree_list_model_get_model;
    pragma(mangle, "ddgtk4_gtk_tree_list_model_get_passthrough")
    gboolean function(GtkTreeListModel*) gtk_tree_list_model_get_passthrough;
    pragma(mangle, "ddgtk4_gtk_tree_list_model_set_autoexpand")
    void function(GtkTreeListModel*, gboolean) gtk_tree_list_model_set_autoexpand;
    pragma(mangle, "ddgtk4_gtk_tree_list_model_get_autoexpand")
    gboolean function(GtkTreeListModel*) gtk_tree_list_model_get_autoexpand;
    pragma(mangle, "ddgtk4_gtk_tree_list_model_get_child_row")
    GtkTreeListRow* function(GtkTreeListModel*, guint) gtk_tree_list_model_get_child_row;
    pragma(mangle, "ddgtk4_gtk_tree_list_model_get_row")
    GtkTreeListRow* function(GtkTreeListModel*, guint) gtk_tree_list_model_get_row;

    pragma(mangle, "ddgtk4_gtk_tree_list_row_get_item")
    gpointer function(GtkTreeListRow*) gtk_tree_list_row_get_item;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_set_expanded")
    void function(GtkTreeListRow*, gboolean) gtk_tree_list_row_set_expanded;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_get_expanded")
    gboolean function(GtkTreeListRow*) gtk_tree_list_row_get_expanded;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_is_expandable")
    gboolean function(GtkTreeListRow*) gtk_tree_list_row_is_expandable;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_get_position")
    guint function(GtkTreeListRow*) gtk_tree_list_row_get_position;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_get_depth")
    guint function(GtkTreeListRow*) gtk_tree_list_row_get_depth;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_get_children")
    GListModel* function(GtkTreeListRow*) gtk_tree_list_row_get_children;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_get_parent")
    GtkTreeListRow* function(GtkTreeListRow*) gtk_tree_list_row_get_parent;
    pragma(mangle, "ddgtk4_gtk_tree_list_row_get_child_row")
    GtkTreeListRow* function(GtkTreeListRow*, guint) gtk_tree_list_row_get_child_row;
}
