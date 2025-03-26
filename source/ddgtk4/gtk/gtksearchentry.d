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
__gshared
{
    GtkWidget* function() gtk_search_entry_new;
    
    GtkWidget* function(GtkSearchEntry*) gtk_search_entry_get_key_capture_widget;
    void function(GtkSearchEntry*, GtkWidget*) gtk_search_entry_set_key_capture_widget;
}