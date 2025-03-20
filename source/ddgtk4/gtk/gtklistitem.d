module ddgtk4.gtk.gtklistitem;

public import ddgtk4.glib.gtypes : gpointer, guint, gboolean;
public import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkListItem;

// Functions
extern (C)
__gshared
{
    gpointer function(GtkListItem*) gtk_list_item_get_item;
    guint function(GtkListItem*) gtk_list_item_get_position;
    gboolean function(GtkListItem*) gtk_list_item_get_selected;
    gboolean function(GtkListItem*) gtk_list_item_get_selectable;
    void function(GtkListItem*, gboolean) gtk_list_item_set_selectable;
    gboolean function(GtkListItem*) gtk_list_item_get_activatable;
    void function(GtkListItem*, gboolean)gtk_list_item_set_activatable;
    //GDK_AVAILABLE_IN_4_12
    gboolean function(GtkListItem*) gtk_list_item_get_focusable;
    //GDK_AVAILABLE_IN_4_12
    void function(GtkListItem*, gboolean) gtk_list_item_set_focusable;

    void function(GtkListItem*, GtkWidget*) gtk_list_item_set_child;
    GtkWidget* function(GtkListItem*) gtk_list_item_get_child;

    //GDK_AVAILABLE_IN_4_12
    void function(GtkListItem*, const(char)*) gtk_list_item_set_accessible_description;
    //GDK_AVAILABLE_IN_4_12
    const(char)* function(GtkListItem*) gtk_list_item_get_accessible_description;

    //GDK_AVAILABLE_IN_4_12
    void function(GtkListItem*, const(char)*)gtk_list_item_set_accessible_label;
    //GDK_AVAILABLE_IN_4_12
    const(char)* function(GtkListItem*) gtk_list_item_get_accessible_label;
}