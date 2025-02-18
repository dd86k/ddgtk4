module ddgtk4.gtk.gtkwidget;

import ddgtk4.glib.gtypes : gboolean;

struct GtkWidget;

// Macros
pragma(inline, true)
{
    // Could be from anything
    GtkWidget* GTK_WIDGET(void *f)
    {
        return cast(GtkWidget*)f;
    }
}

// Functions
extern (C)
__gshared
{
    void function(GtkWidget*, gboolean) gtk_widget_set_visible;
    
    void function(GtkWidget*, int, int) gtk_widget_set_size_request;
    
    void function(GtkWidget*, int) gtk_widget_set_margin_top;
    void function(GtkWidget*, int) gtk_widget_set_margin_bottom;
    void function(GtkWidget*, int) gtk_widget_set_margin_start;
    void function(GtkWidget*, int) gtk_widget_set_margin_end;
    
    void function(GtkWidget*, GtkWidget*) gtk_widget_set_parent;
    
    void function(GtkWidget*, gboolean) gtk_widget_set_hexpand;
    void function(GtkWidget*, gboolean) gtk_widget_set_vexpand;
    
    GtkWidget* function(GtkWidget*) gtk_widget_get_first_child;
}