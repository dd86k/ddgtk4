module ddgtk4.gio.glistmodel;

import ddgtk4.glib.gtypes;
/*
#define G_TYPE_LIST_MODEL g_list_model_get_type ()
GIO_AVAILABLE_IN_2_44
G_DECLARE_INTERFACE(GListModel, g_list_model, G, LIST_MODEL, GObject)

struct _GListModelInterface
{
  GTypeInterface g_iface;

  GType     (* get_item_type)   (GListModel *list);

  guint     (* get_n_items)     (GListModel *list);

  gpointer  (* get_item)        (GListModel *list,
                                 guint       position);
};
*/
struct GListModel;

// Functions
extern (C)
__gshared
{
    // guint g_list_model_get_n_items (GListModel *list);
    guint function(GListModel*) g_list_model_get_n_items;
}
