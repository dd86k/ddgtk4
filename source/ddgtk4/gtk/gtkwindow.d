module ddgtk4.gtk.gtkwindow;

import ddgtk4.gtk.gtkwidget;
public import ddgtk4.gio.glistmodel : GListModel;
public import ddgtk4.glib.gtypes : gboolean;

struct GtkWindow;

pragma(inline, true)
{
    //#define GTK_WINDOW(obj)			(G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_WINDOW, GtkWindow))
    GtkWindow* GTK_WINDOW(void *window)
    {
        return cast(GtkWindow*)window;
    }
}

extern (C)
__gshared
{
    GtkWidget* function() gtk_window_new;
    
    void function(GtkWindow*, gboolean)     gtk_window_set_modal;
    void function(GtkWindow*, GtkWindow*)   gtk_window_set_transient_for;
    
    void function(GtkWindow*, GtkWidget*)   gtk_window_set_titlebar;
    
    void function(GtkWindow*, const(char)*) gtk_window_set_title;
    void function(GtkWindow*, int, int)     gtk_window_set_default_size;
    void function(GtkWindow*, GtkWidget*)   gtk_window_set_child;
    void function(GtkWindow*)               gtk_window_present;
    
    GListModel* function()                  gtk_window_get_toplevels;
    
    void function(GtkWindow *window)        gtk_window_destroy;
}