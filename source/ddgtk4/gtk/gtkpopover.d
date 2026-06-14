module ddgtk4.gtk.gtkpopover;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtkenums  : GtkPositionType;
public import ddgtk4.glib.gtypes   : gboolean;

struct GtkPopover;

// Macros
pragma(inline, true)
{
    GtkPopover* GTK_POPOVER(void *o)
    {
        return cast(GtkPopover*)o;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_popover_new")
    GtkWidget* function() gtk_popover_new;
    pragma(mangle, "ddgtk4_gtk_popover_set_child")
    void function(GtkPopover*, GtkWidget*) gtk_popover_set_child;
    pragma(mangle, "ddgtk4_gtk_popover_set_has_arrow")
    void function(GtkPopover*, gboolean) gtk_popover_set_has_arrow;
    pragma(mangle, "ddgtk4_gtk_popover_set_position")
    void function(GtkPopover*, GtkPositionType) gtk_popover_set_position;
    pragma(mangle, "ddgtk4_gtk_popover_popup")
    void function(GtkPopover*) gtk_popover_popup;
    pragma(mangle, "ddgtk4_gtk_popover_popdown")
    void function(GtkPopover*) gtk_popover_popdown;
}
