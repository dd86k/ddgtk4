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
{
    alias A_gtk_popover_new = GtkWidget* function();
    alias A_gtk_popover_set_child = void function(GtkPopover*, GtkWidget*);
    alias A_gtk_popover_set_has_arrow = void function(GtkPopover*, gboolean);
    alias A_gtk_popover_set_position = void function(GtkPopover*, GtkPositionType);
    alias A_gtk_popover_popup = void function(GtkPopover*);
    alias A_gtk_popover_popdown = void function(GtkPopover*);
}

__gshared
{
    A_gtk_popover_new gtk_popover_new;
    A_gtk_popover_set_child gtk_popover_set_child;
    A_gtk_popover_set_has_arrow gtk_popover_set_has_arrow;
    A_gtk_popover_set_position gtk_popover_set_position;
    A_gtk_popover_popup gtk_popover_popup;
    A_gtk_popover_popdown gtk_popover_popdown;
}
