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
__gshared
{
    pragma(mangle, "ddgtk4_g_list_model_get_item_type")
    //GIO_AVAILABLE_IN_2_44:
    
    GType function(GListModel*) g_list_model_get_item_type;
    pragma(mangle, "ddgtk4_g_list_model_get_n_items")
    guint function(GListModel*) g_list_model_get_n_items;
    pragma(mangle, "ddgtk4_g_list_model_get_item")
    gpointer function(GListModel*, guint) g_list_model_get_item;
    pragma(mangle, "ddgtk4_g_list_model_get_object")
    GObject* function(GListModel*, guint) g_list_model_get_object;
    pragma(mangle, "ddgtk4_g_list_model_items_changed")
    void function(GListModel*, guint, guint, guint) g_list_model_items_changed;
}
