module ddgtk4.gtk.gtkwindow;

import ddgtk4.gtk.gtkwidget;
public import ddgtk4.gtk.gtkapplication : GtkApplication;
public import ddgtk4.gio.glistmodel     : GListModel;
public import ddgtk4.glib.gtypes        : gboolean;

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
{
    alias A_gtk_window_new = GtkWidget* function();
    alias A_gtk_window_set_modal = void function(GtkWindow*, gboolean);
    alias A_gtk_window_set_resizable = void function(GtkWindow*, gboolean);
    alias A_gtk_window_set_transient_for = void function(GtkWindow*, GtkWindow*);
    alias A_gtk_window_set_titlebar = void function(GtkWindow*, GtkWidget*);
    alias A_gtk_window_set_icon_name = void function(GtkWindow*, const(char)*);
    alias A_gtk_window_set_title = void function(GtkWindow*, const(char)*);
    alias A_gtk_window_set_default_size = void function(GtkWindow*, int, int);
    alias A_gtk_window_set_child = void function(GtkWindow*, GtkWidget*);
    alias A_gtk_window_present = void function(GtkWindow*);
    alias A_gtk_window_get_toplevels = GListModel* function();
    alias A_gtk_window_destroy = void function(GtkWindow *window);
    alias A_gtk_window_close = void function(GtkWindow *window);
    alias A_gtk_window_get_application = GtkApplication* function(GtkWindow*);
    alias A_gtk_window_set_decorated = void function(GtkWindow*, gboolean);
    alias A_gtk_window_set_hide_on_close = void function(GtkWindow*, gboolean);
}

__gshared
{
    A_gtk_window_new gtk_window_new;
    A_gtk_window_set_modal gtk_window_set_modal;
    A_gtk_window_set_resizable gtk_window_set_resizable;
    A_gtk_window_set_transient_for gtk_window_set_transient_for;
    A_gtk_window_set_titlebar gtk_window_set_titlebar;
    A_gtk_window_set_icon_name gtk_window_set_icon_name;
    A_gtk_window_set_title gtk_window_set_title;
    A_gtk_window_set_default_size gtk_window_set_default_size;
    A_gtk_window_set_child gtk_window_set_child;
    A_gtk_window_present gtk_window_present;
    A_gtk_window_get_toplevels gtk_window_get_toplevels;
    A_gtk_window_destroy gtk_window_destroy;
    A_gtk_window_close gtk_window_close;
    A_gtk_window_get_application gtk_window_get_application;
    A_gtk_window_set_decorated gtk_window_set_decorated;
    A_gtk_window_set_hide_on_close gtk_window_set_hide_on_close;
}