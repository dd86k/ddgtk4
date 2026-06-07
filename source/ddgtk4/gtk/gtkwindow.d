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
__gshared
{
    pragma(mangle, "ddgtk4_gtk_window_new")
    GtkWidget* function() gtk_window_new;
    pragma(mangle, "ddgtk4_gtk_window_set_modal")
    void function(GtkWindow*, gboolean)     gtk_window_set_modal;
    pragma(mangle, "ddgtk4_gtk_window_set_resizable")
    void function(GtkWindow*, gboolean)     gtk_window_set_resizable;
    pragma(mangle, "ddgtk4_gtk_window_set_transient_for")
    void function(GtkWindow*, GtkWindow*)   gtk_window_set_transient_for;
    pragma(mangle, "ddgtk4_gtk_window_set_titlebar")
    void function(GtkWindow*, GtkWidget*)   gtk_window_set_titlebar;
    pragma(mangle, "ddgtk4_gtk_window_set_icon_name")
    void function(GtkWindow*, const(char)*) gtk_window_set_icon_name;
    pragma(mangle, "ddgtk4_gtk_window_set_title")
    void function(GtkWindow*, const(char)*) gtk_window_set_title;
    pragma(mangle, "ddgtk4_gtk_window_set_default_size")
    void function(GtkWindow*, int, int)     gtk_window_set_default_size;
    pragma(mangle, "ddgtk4_gtk_window_set_child")
    void function(GtkWindow*, GtkWidget*)   gtk_window_set_child;
    pragma(mangle, "ddgtk4_gtk_window_present")
    void function(GtkWindow*)               gtk_window_present;
    pragma(mangle, "ddgtk4_gtk_window_get_toplevels")
    GListModel* function()                  gtk_window_get_toplevels;
    pragma(mangle, "ddgtk4_gtk_window_destroy")
    void function(GtkWindow *window)        gtk_window_destroy;
    pragma(mangle, "ddgtk4_gtk_window_close")
    void function(GtkWindow *window)        gtk_window_close;
    pragma(mangle, "ddgtk4_gtk_window_get_application")
    GtkApplication* function(GtkWindow*)    gtk_window_get_application;
    pragma(mangle, "ddgtk4_gtk_window_set_decorated")
    void function(GtkWindow*, gboolean)     gtk_window_set_decorated;
}