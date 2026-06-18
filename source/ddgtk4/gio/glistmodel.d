module ddgtk4.gio.glistmodel;

// GIO_AVAILABLE_IN_2_44
import ddgtk4.glib.gtypes;
public import ddgtk4.glib.gtypes : guint, gpointer;
public import ddgtk4.gobject.gtype : GType;
public import ddgtk4.gobject.gobject : GObject;

struct GListModel;

// In gtktypes.h, but it's rather empty
enum guint GTK_INVALID_LIST_POSITION = 0xffffffff;

// Macros
pragma(inline, true)
{
    GListModel* G_LIST_MODEL(void *l)
    {
        return cast(GListModel*)l;
    }
}

// Functions
extern (C)
{
    //GIO_AVAILABLE_IN_2_44:
    alias A_g_list_model_get_item_type = GType function(GListModel*);
    alias A_g_list_model_get_n_items = guint function(GListModel*);
    alias A_g_list_model_get_item = gpointer function(GListModel*, guint);
    alias A_g_list_model_get_object = GObject* function(GListModel*, guint);
    alias A_g_list_model_items_changed = void function(GListModel*, guint, guint, guint);
}

__gshared
{
    A_g_list_model_get_item_type g_list_model_get_item_type;
    A_g_list_model_get_n_items g_list_model_get_n_items;
    A_g_list_model_get_item g_list_model_get_item;
    A_g_list_model_get_object g_list_model_get_object;
    A_g_list_model_items_changed g_list_model_items_changed;
}
