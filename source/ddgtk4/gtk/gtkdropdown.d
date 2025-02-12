module ddgtk4.gtk.gtkdropdown;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.gtk.gtkexpression : GtkExpression;
import ddgtk4.glib.gtypes : gboolean, guint;
import ddgtk4.gio.glistmodel : GListModel;

struct GtkDropDown;

// Macros
pragma(inline, true)
{
    // NOTE: Not in gtkdropdown.h
    GtkDropDown* GTK_DROP_DOWN(GtkWidget *w)
    {
        return cast(GtkDropDown*)w;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function(GListModel* model, GtkExpression* expression) gtk_drop_down_new;
    // const char* const*
    GtkWidget* function(const(char)**) gtk_drop_down_new_from_strings;
    
    void function(GtkDropDown*, gboolean) gtk_drop_down_set_enable_search;
    
    guint function(GtkDropDown*) gtk_drop_down_get_selected;
}