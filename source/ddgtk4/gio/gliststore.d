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
{
    //GIO_AVAILABLE_IN_2_44
    alias A_g_list_store_new = GListStore* function(GType);
    //GIO_AVAILABLE_IN_2_44
    // NOTE: Insert GObject*, but header defines it as gpointer
    alias A_g_list_store_insert = void function(GListStore*, guint, gpointer);
    //GIO_AVAILABLE_IN_2_44
    // NOTE: Insert GObject*, but header defines it as gpointer
    alias A_g_list_store_insert_sorted = guint function(GListStore*, gpointer, GCompareDataFunc, gpointer);
    //GIO_AVAILABLE_IN_2_46
    alias A_g_list_store_sort = void function(GListStore*, GCompareDataFunc, gpointer);
    //GIO_AVAILABLE_IN_2_44
    // NOTE: Append GObject*, but header defines it as gpointer
    alias A_g_list_store_append = void function(GListStore*, gpointer);
    //GIO_AVAILABLE_IN_2_44
    alias A_g_list_store_remove = void function(GListStore*, guint);
    //GIO_AVAILABLE_IN_2_44
    alias A_g_list_store_remove_all = void function(GListStore*);
    //GIO_AVAILABLE_IN_2_44
    alias A_g_list_store_splice = void function(GListStore*, guint, guint, gpointer*, guint);
    //GIO_AVAILABLE_IN_2_64
    // NOTE: Find GObject*, but header defines it as gpointer
    alias A_g_list_store_find = gboolean function(GListStore*, gpointer, guint*);
    //GIO_AVAILABLE_IN_2_64
    // NOTE: Find GObject*, but header defines it as gpointer
    alias A_g_list_store_find_with_equal_func = gboolean function(GListStore*, gpointer, GEqualFunc, guint*);
    //GIO_AVAILABLE_IN_2_74
    // NOTE: Find GObject*, but header defines it as gpointer
    alias A_g_list_store_find_with_equal_func_full = gboolean function(GListStore*, gpointer, GEqualFuncFull, gpointer, guint*);
}

__gshared
{
    A_g_list_store_new g_list_store_new;
    A_g_list_store_insert g_list_store_insert;
    A_g_list_store_insert_sorted g_list_store_insert_sorted;
    A_g_list_store_sort g_list_store_sort;
    A_g_list_store_append g_list_store_append;
    A_g_list_store_remove g_list_store_remove;
    A_g_list_store_remove_all g_list_store_remove_all;
    A_g_list_store_splice g_list_store_splice;
    A_g_list_store_find g_list_store_find;
    A_g_list_store_find_with_equal_func g_list_store_find_with_equal_func;
    A_g_list_store_find_with_equal_func_full g_list_store_find_with_equal_func_full;
}