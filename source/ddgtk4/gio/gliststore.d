module ddgtk4.gio.gliststore;

public import ddgtk4.glib.gtypes :
    gboolean, guint, gpointer,
    GCompareDataFunc, GEqualFunc, GEqualFuncFull;
public import ddgtk4.gtk.gtklistitemfactory : GtkListItemFactory;
public import ddgtk4.gobject.gtype : GType;
public import ddgtk4.gobject.gobject : GObject;

struct GListStore;

// Functions
extern (C)
__gshared
{
    //GIO_AVAILABLE_IN_2_44
    GListStore* function(GType) g_list_store_new;

    //GIO_AVAILABLE_IN_2_44
    // NOTE: Insert GObject*, but header defines it as gpointer
    void function(GListStore*, guint, gpointer) g_list_store_insert;

    //GIO_AVAILABLE_IN_2_44
    // NOTE: Insert GObject*, but header defines it as gpointer
    guint function(GListStore*, gpointer, GCompareDataFunc, gpointer) g_list_store_insert_sorted;

    //GIO_AVAILABLE_IN_2_46
    void function(GListStore*, GCompareDataFunc, gpointer) g_list_store_sort;

    //GIO_AVAILABLE_IN_2_44
    // NOTE: Append GObject*, but header defines it as gpointer
    void function(GListStore*, gpointer) g_list_store_append;

    //GIO_AVAILABLE_IN_2_44
    void function(GListStore*, guint) g_list_store_remove;

    //GIO_AVAILABLE_IN_2_44
    void function(GListStore*) g_list_store_remove_all;

    //GIO_AVAILABLE_IN_2_44
    void function(GListStore*, guint, guint, gpointer*, guint) g_list_store_splice;

    //GIO_AVAILABLE_IN_2_64
    // NOTE: Find GObject*, but header defines it as gpointer
    gboolean function(GListStore*, gpointer, guint*) g_list_store_find;

    //GIO_AVAILABLE_IN_2_64
    // NOTE: Find GObject*, but header defines it as gpointer
    gboolean function(GListStore*, gpointer, GEqualFunc, guint*) g_list_store_find_with_equal_func;

    //GIO_AVAILABLE_IN_2_74
    // NOTE: Find GObject*, but header defines it as gpointer
    gboolean function(GListStore*, gpointer, GEqualFuncFull, gpointer, guint*)
        g_list_store_find_with_equal_func_full;
}