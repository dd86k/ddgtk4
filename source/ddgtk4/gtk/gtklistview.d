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
{
    alias A_gtk_list_view_new = GtkWidget* function(GtkSelectionModel*, GtkListItemFactory*);
    alias A_gtk_list_view_get_model = GtkSelectionModel* function(GtkListView*);
    alias A_gtk_list_view_set_model = void function(GtkListView*, GtkSelectionModel*);
    alias A_gtk_list_view_set_factory = void function(GtkListView*, GtkListItemFactory*);
    alias A_gtk_list_view_get_factory = GtkListItemFactory* function(GtkListView*);
    /*
    GDK_AVAILABLE_IN_4_12
    void            gtk_list_view_set_header_factory                (GtkListView            *self,
    GtkListItemFactory     *factory);
    GDK_AVAILABLE_IN_4_12
    GtkListItemFactory *
    gtk_list_view_get_header_factory                (GtkListView            *self);
    */
    alias A_gtk_list_view_set_show_separators = void function(GtkListView*, gboolean);
    alias A_gtk_list_view_get_show_separators = gboolean function(GtkListView*);
    alias A_gtk_list_view_set_single_click_activate = void function(GtkListView*, gboolean);
    alias A_gtk_list_view_get_single_click_activate = gboolean function(GtkListView*);
    alias A_gtk_list_view_set_enable_rubberband = void function(GtkListView*, gboolean);
    alias A_gtk_list_view_get_enable_rubberband = gboolean function(GtkListView*);
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

__gshared
{
    A_gtk_list_view_new gtk_list_view_new;
    A_gtk_list_view_get_model gtk_list_view_get_model;
    A_gtk_list_view_set_model gtk_list_view_set_model;
    A_gtk_list_view_set_factory gtk_list_view_set_factory;
    A_gtk_list_view_get_factory gtk_list_view_get_factory;
    A_gtk_list_view_set_show_separators gtk_list_view_set_show_separators;
    A_gtk_list_view_get_show_separators gtk_list_view_get_show_separators;
    A_gtk_list_view_set_single_click_activate gtk_list_view_set_single_click_activate;
    A_gtk_list_view_get_single_click_activate gtk_list_view_get_single_click_activate;
    A_gtk_list_view_set_enable_rubberband gtk_list_view_set_enable_rubberband;
    A_gtk_list_view_get_enable_rubberband gtk_list_view_get_enable_rubberband;
}