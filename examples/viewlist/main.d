module examples.viewlist.main;

import ddgtk4;
import std.stdio;
import std.string;

// Setup (typically creating) the item for the list
static void
factory_setup_item_cb(GtkListItemFactory *factory,
                      GtkListItem        *list_item)
{
    writeln("factory_setup_item_cb");
    gtk_list_item_set_child (list_item, gtk_label_new (null));
}

// Bind (update) the item for the list
static void
factory_bind_item_cb(GtkListItemFactory *factory,
                     GtkListItem        *list_item)
{
    writeln("factory_bind_item_cb");
    GtkLabel *label = GTK_LABEL (gtk_list_item_get_child (list_item));
    ExampleItem *item = cast(ExampleItem*) gtk_list_item_get_item (list_item);
    gtk_label_set_text (label, item.name);
}

// GtkListView item is activated (typically double-click)
static void
viewlist_activate_cb(GtkListView  *list,
                     guint         position,
                     gpointer      unused)
{
    writeln("viewlist_activate_cb position=", position);
}

// The item is selected via notify::selected from the selection model
extern (C)
static void
viewlist_selection_changed(GObject *object, GParamSpec *pspec, gpointer p)
{
    writeln("viewlist_selection_changed");
}

// Defining custom type

struct ExampleItem
{
    GObject parent;
    
    // members
    const(char)* name;
}

struct ExampleItemClass
{
    GObjectClass parent;
}

extern (C)
static void
example_item_init(GTypeInstance *inst, gpointer o)
{
    
}

extern (C)
static void
example_item_class_init(gpointer p, gpointer o)
{
    
}

extern (C)
static GType
example_list_item_get_type()
{
    __gshared GType type = 0;
    writeln("example_list_item_get_type");
    if (type == 0)
    {
        // Needs to be available at all time during runtime,
        // so initiate statically on heap
        /*
        static immutable GTypeInfo gtypeinfo =
        {
            cast(guint) ExampleItemClass.sizeof, // class_size
            null, // base_init
            null, // base_finalize
            cast(void function(void*,void*))&example_item_class_init, // class_init
            null, // class_finalize
            null, // class_data
            cast(guint16) ExampleItem.sizeof, // instance size
            0, // n_preallocs
            cast(void function(void*,void*))&example_item_init, // instance_init
        };
        */
        //type = g_type_register_static (G_TYPE_OBJECT, "ExampleItem", &gtypeinfo, 0);
        type = g_type_register_static_simple (G_TYPE_OBJECT,
            "ExampleItem",
            cast(guint) ExampleItemClass.sizeof,
            cast(void function(void*,void*))&example_item_class_init,
            cast(guint16) ExampleItem.sizeof,
            cast(void function(void*,void*))&example_item_init,
            0);
        writeln("type=", type);
    }
    assert(type, "non-zero type received");
    return type;
}

extern (C)
static ExampleItem*
create_item(string name)
{
    writeln("create_item");
    GObject *o = g_object_new (example_list_item_get_type (), null);
    
    ExampleItem *item = cast(ExampleItem*) o;
    item.name = toStringz(name.idup);
    
    return item;
}

extern (C)
static GListModel*
create_application_list()
{
    writeln("create_application_list");
    // ViewList *wants* GObject, no question
    GListStore *list = g_list_store_new (G_TYPE_OBJECT);
    
    g_list_store_append (list, create_item ("Item 1"));
    g_list_store_append (list, create_item ("Item 2"));
    g_list_store_append (list, create_item ("Item 3"));
    
    return cast(GListModel*) list;
}

extern (C)
static void
activate(GtkApplication *app, gpointer user_data)
{
    GtkWindow *window = GTK_WINDOW (gtk_application_window_new (app));
    gtk_window_set_title (window, "View Example");
    gtk_widget_set_size_request (GTK_WIDGET(window), 500, 400);
    
    GListModel *model = create_application_list ();

    GtkListItemFactory *factory = gtk_signal_list_item_factory_new();
    g_signal_connect (factory, "setup", G_CALLBACK(&factory_setup_item_cb), null);
    g_signal_connect (factory, "bind",  G_CALLBACK(&factory_bind_item_cb), null);

    GtkSelectionModel *selectionmodel = GTK_SELECTION_MODEL (gtk_single_selection_new(model));
    g_signal_connect (selectionmodel, "notify::selected", G_CALLBACK(&viewlist_selection_changed), null);
    
    GtkListView *list = GTK_LIST_VIEW (gtk_list_view_new (selectionmodel, factory));
    g_signal_connect (list, "activate", G_CALLBACK (&viewlist_activate_cb), null);
    // Set single clicks *and* select on hover.
    // This is why the selection model has the notify::selected signal connection
    //gtk_list_view_set_single_click_activate (list, TRUE);
    
    gtk_widget_set_vexpand (GTK_WIDGET (list), TRUE);
    gtk_widget_set_hexpand (GTK_WIDGET (list), TRUE);
    
    gtk_window_set_child (window, GTK_WIDGET (list));
    gtk_window_present (window);
}

int main()
{
    loadgtk4all();
    
    GtkApplication *app = gtk_application_new ("org.gtk.example", G_APPLICATION_DEFAULT_FLAGS);
    g_signal_connect (app, "activate", G_CALLBACK(&activate), null);
    scope(exit) g_object_unref (app);
    
    return g_application_run (G_APPLICATION(app), 0, null);
}