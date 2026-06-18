module ddgtk4.gtk.gtklistitemfactory;



struct GtkListItemFactory;

// Functions
extern (C)
{
    alias A_gtk_signal_list_item_factory_new = GtkListItemFactory* function();
}

__gshared
{
    A_gtk_signal_list_item_factory_new gtk_signal_list_item_factory_new;
}