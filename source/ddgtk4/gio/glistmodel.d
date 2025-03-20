module ddgtk4.gio.glistmodel;

// GIO_AVAILABLE_IN_2_44
import ddgtk4.glib.gtypes;
public import ddgtk4.glib.gtypes : guint, gpointer;
public import ddgtk4.gobject.gtype : GType;
public import ddgtk4.gobject.gobject : GObject;

struct GListModel;

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
    //GIO_AVAILABLE_IN_2_44:
    
    GType function(GListModel*) g_list_model_get_item_type;
    guint function(GListModel*) g_list_model_get_n_items;
    gpointer function(GListModel*, guint) g_list_model_get_item;
    GObject* function(GListModel*, guint) g_list_model_get_object;
    void function(GListModel*, guint, guint, guint) g_list_model_items_changed;
}
