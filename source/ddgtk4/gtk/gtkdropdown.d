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
__gshared
{
    pragma(mangle, "ddgtk4_gtk_drop_down_new")
    GtkWidget* function(GListModel* model, GtkExpression* expression) gtk_drop_down_new;
    pragma(mangle, "ddgtk4_gtk_drop_down_new_from_strings")
    // const char* const*
    GtkWidget* function(const(char)**) gtk_drop_down_new_from_strings;
    pragma(mangle, "ddgtk4_gtk_drop_down_set_enable_search")
    void function(GtkDropDown*, gboolean) gtk_drop_down_set_enable_search;
    pragma(mangle, "ddgtk4_gtk_drop_down_get_selected")
    guint function(GtkDropDown*) gtk_drop_down_get_selected;
}