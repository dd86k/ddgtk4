module ddgtk4.gtk.gtklistview;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes : gboolean;
public import ddgtk4.gtk.gtkselectionmodel : GtkSelectionModel;
public import ddgtk4.gtk.gtklistitemfactory : GtkListItemFactory;

struct GtkListView;

// Macros
pragma(inline, true)
{
    GtkListView* GTK_LIST_VIEW(void *w)
    {
        return cast(GtkListView*)w;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function(GtkSelectionModel*, GtkListItemFactory*) gtk_list_view_new;
    GtkSelectionModel* function(GtkListView*) gtk_list_view_get_model;
    void function(GtkListView*, GtkSelectionModel*) gtk_list_view_set_model;
    void function(GtkListView*, GtkListItemFactory*) gtk_list_view_set_factory;
    GtkListItemFactory* function(GtkListView*) gtk_list_view_get_factory;
/*
GDK_AVAILABLE_IN_4_12
void            gtk_list_view_set_header_factory                (GtkListView            *self,
                                                                 GtkListItemFactory     *factory);
GDK_AVAILABLE_IN_4_12
GtkListItemFactory *
                gtk_list_view_get_header_factory                (GtkListView            *self);
*/
    void function(GtkListView*, gboolean) gtk_list_view_set_show_separators;
    gboolean function(GtkListView*) gtk_list_view_get_show_separators;
    
    void function(GtkListView*, gboolean) gtk_list_view_set_single_click_activate;
    gboolean function(GtkListView*) gtk_list_view_get_single_click_activate;
    
    void function(GtkListView*, gboolean) gtk_list_view_set_enable_rubberband;
    gboolean function(GtkListView*) gtk_list_view_get_enable_rubberband;
/*
GDK_AVAILABLE_IN_4_12
void            gtk_list_view_set_tab_behavior                  (GtkListView            *self,
                                                                 GtkListTabBehavior      tab_behavior);
GDK_AVAILABLE_IN_4_12
GtkListTabBehavior
                gtk_list_view_get_tab_behavior                  (GtkListView            *self);

GDK_AVAILABLE_IN_4_12
void            gtk_list_view_scroll_to                         (GtkListView            *self,
                                                                 guint                   pos,
                                                                 GtkListScrollFlags      flags,
                                                                 GtkScrollInfo          *scroll);
*/
}