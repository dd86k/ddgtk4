module ddgtk4.gtk.gtklistitemfactory;



struct GtkListItemFactory;

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_signal_list_item_factory_new")
    GtkListItemFactory* function() gtk_signal_list_item_factory_new;
}