module ddgtk4.gtk.gtklistitem;

public import ddgtk4.glib.gtypes : gpointer, guint, gboolean;
public import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkListItem;

// Functions
extern (C)
{
    alias A_gtk_list_item_get_item = gpointer function(GtkListItem*);
    alias A_gtk_list_item_get_position = guint function(GtkListItem*);
    alias A_gtk_list_item_get_selected = gboolean function(GtkListItem*);
    alias A_gtk_list_item_get_selectable = gboolean function(GtkListItem*);
    alias A_gtk_list_item_set_selectable = void function(GtkListItem*, gboolean);
    alias A_gtk_list_item_get_activatable = gboolean function(GtkListItem*);
    alias A_gtk_list_item_set_activatable = void function(GtkListItem*, gboolean);
    //GDK_AVAILABLE_IN_4_12
    alias A_gtk_list_item_get_focusable = gboolean function(GtkListItem*);
    //GDK_AVAILABLE_IN_4_12
    alias A_gtk_list_item_set_focusable = void function(GtkListItem*, gboolean);
    alias A_gtk_list_item_set_child = void function(GtkListItem*, GtkWidget*);
    alias A_gtk_list_item_get_child = GtkWidget* function(GtkListItem*);
    //GDK_AVAILABLE_IN_4_12
    alias A_gtk_list_item_set_accessible_description = void function(GtkListItem*, const(char)*);
    //GDK_AVAILABLE_IN_4_12
    alias A_gtk_list_item_get_accessible_description = const(char)* function(GtkListItem*);
    //GDK_AVAILABLE_IN_4_12
    alias A_gtk_list_item_set_accessible_label = void function(GtkListItem*, const(char)*);
    //GDK_AVAILABLE_IN_4_12
    alias A_gtk_list_item_get_accessible_label = const(char)* function(GtkListItem*);
}

__gshared
{
    A_gtk_list_item_get_item gtk_list_item_get_item;
    A_gtk_list_item_get_position gtk_list_item_get_position;
    A_gtk_list_item_get_selected gtk_list_item_get_selected;
    A_gtk_list_item_get_selectable gtk_list_item_get_selectable;
    A_gtk_list_item_set_selectable gtk_list_item_set_selectable;
    A_gtk_list_item_get_activatable gtk_list_item_get_activatable;
    A_gtk_list_item_set_activatable gtk_list_item_set_activatable;
    A_gtk_list_item_get_focusable gtk_list_item_get_focusable;
    A_gtk_list_item_set_focusable gtk_list_item_set_focusable;
    A_gtk_list_item_set_child gtk_list_item_set_child;
    A_gtk_list_item_get_child gtk_list_item_get_child;
    A_gtk_list_item_set_accessible_description gtk_list_item_set_accessible_description;
    A_gtk_list_item_get_accessible_description gtk_list_item_get_accessible_description;
    A_gtk_list_item_set_accessible_label gtk_list_item_set_accessible_label;
    A_gtk_list_item_get_accessible_label gtk_list_item_get_accessible_label;
}