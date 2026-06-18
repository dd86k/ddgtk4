module ddgtk4.gtk.gtksearchentry;

public import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkSearchEntry;

// Macros
pragma(inline, true)
{
    GtkSearchEntry* GTK_SEARCH_ENTRY(void *w)
    {
        return cast(GtkSearchEntry*) w;
    }
}

// Functions
extern (C)
{
    alias A_gtk_search_entry_new = GtkWidget* function();
    alias A_gtk_search_entry_get_key_capture_widget = GtkWidget* function(GtkSearchEntry*);
    alias A_gtk_search_entry_set_key_capture_widget = void function(GtkSearchEntry*, GtkWidget*);
}

__gshared
{
    A_gtk_search_entry_new gtk_search_entry_new;
    A_gtk_search_entry_get_key_capture_widget gtk_search_entry_get_key_capture_widget;
    A_gtk_search_entry_set_key_capture_widget gtk_search_entry_set_key_capture_widget;
}