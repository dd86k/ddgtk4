module ddgtk4.gtk.gtkdropdown;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtkexpression : GtkExpression;
public import ddgtk4.glib.gtypes : gboolean, guint;
public import ddgtk4.gio.glistmodel : GListModel;

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
{
    alias A_gtk_drop_down_new = GtkWidget* function(GListModel* model, GtkExpression* expression);
    // const char* const*
    alias A_gtk_drop_down_new_from_strings = GtkWidget* function(const(char)**);
    alias A_gtk_drop_down_set_enable_search = void function(GtkDropDown*, gboolean);
    alias A_gtk_drop_down_get_selected = guint function(GtkDropDown*);
}

__gshared
{
    A_gtk_drop_down_new gtk_drop_down_new;
    A_gtk_drop_down_new_from_strings gtk_drop_down_new_from_strings;
    A_gtk_drop_down_set_enable_search gtk_drop_down_set_enable_search;
    A_gtk_drop_down_get_selected gtk_drop_down_get_selected;
}