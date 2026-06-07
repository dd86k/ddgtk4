module ddgtk4.gtk.gtklistitem;

public import ddgtk4.glib.gtypes : gpointer, guint, gboolean;
public import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkListItem;

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_list_item_get_item")
    gpointer function(GtkListItem*) gtk_list_item_get_item;
    pragma(mangle, "ddgtk4_gtk_list_item_get_position")
    guint function(GtkListItem*) gtk_list_item_get_position;
    pragma(mangle, "ddgtk4_gtk_list_item_get_selected")
    gboolean function(GtkListItem*) gtk_list_item_get_selected;
    pragma(mangle, "ddgtk4_gtk_list_item_get_selectable")
    gboolean function(GtkListItem*) gtk_list_item_get_selectable;
    pragma(mangle, "ddgtk4_gtk_list_item_set_selectable")
    void function(GtkListItem*, gboolean) gtk_list_item_set_selectable;
    pragma(mangle, "ddgtk4_gtk_list_item_get_activatable")
    gboolean function(GtkListItem*) gtk_list_item_get_activatable;
    pragma(mangle, "ddgtk4_gtk_list_item_set_activatable")
    void function(GtkListItem*, gboolean)gtk_list_item_set_activatable;
    pragma(mangle, "ddgtk4_gtk_list_item_get_focusable")
    //GDK_AVAILABLE_IN_4_12
    gboolean function(GtkListItem*) gtk_list_item_get_focusable;
    pragma(mangle, "ddgtk4_gtk_list_item_set_focusable")
    //GDK_AVAILABLE_IN_4_12
    void function(GtkListItem*, gboolean) gtk_list_item_set_focusable;
    pragma(mangle, "ddgtk4_gtk_list_item_set_child")
    void function(GtkListItem*, GtkWidget*) gtk_list_item_set_child;
    pragma(mangle, "ddgtk4_gtk_list_item_get_child")
    GtkWidget* function(GtkListItem*) gtk_list_item_get_child;
    pragma(mangle, "ddgtk4_gtk_list_item_set_accessible_description")
    //GDK_AVAILABLE_IN_4_12
    void function(GtkListItem*, const(char)*) gtk_list_item_set_accessible_description;
    pragma(mangle, "ddgtk4_gtk_list_item_get_accessible_description")
    //GDK_AVAILABLE_IN_4_12
    const(char)* function(GtkListItem*) gtk_list_item_get_accessible_description;
    pragma(mangle, "ddgtk4_gtk_list_item_set_accessible_label")
    //GDK_AVAILABLE_IN_4_12
    void function(GtkListItem*, const(char)*)gtk_list_item_set_accessible_label;
    pragma(mangle, "ddgtk4_gtk_list_item_get_accessible_label")
    //GDK_AVAILABLE_IN_4_12
    const(char)* function(GtkListItem*) gtk_list_item_get_accessible_label;
}