module ddgtk4.gtk.gtkheaderbar;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes   : gboolean;

struct GtkHeaderBar;

// Macros
pragma(inline, true)
{
    GtkHeaderBar* GTK_HEADER_BAR(GtkWidget *o)
    {
        return cast(GtkHeaderBar*)o;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_header_bar_new")
    GtkWidget* function() gtk_header_bar_new;
    pragma(mangle, "ddgtk4_gtk_header_bar_pack_end")
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_pack_end;
    pragma(mangle, "ddgtk4_gtk_header_bar_pack_start")
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_pack_start;
    pragma(mangle, "ddgtk4_gtk_header_bar_set_title_widget")
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_set_title_widget;
    pragma(mangle, "ddgtk4_gtk_header_bar_get_title_widget")
    GtkWidget* function(GtkHeaderBar*)       gtk_header_bar_get_title_widget;
    pragma(mangle, "ddgtk4_gtk_header_bar_remove")
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_remove;
    pragma(mangle, "ddgtk4_gtk_header_bar_get_show_title_buttons")
    gboolean function(GtkHeaderBar*)         gtk_header_bar_get_show_title_buttons;
    pragma(mangle, "ddgtk4_gtk_header_bar_set_show_title_buttons")
    void function(GtkHeaderBar*, gboolean)   gtk_header_bar_set_show_title_buttons;
    pragma(mangle, "ddgtk4_gtk_header_bar_set_decoration_layout")
    void function(GtkHeaderBar*, const(char)*) gtk_header_bar_set_decoration_layout;
    pragma(mangle, "ddgtk4_gtk_header_bar_get_decoration_layout")
    const(char)* function(GtkHeaderBar*)       gtk_header_bar_get_decoration_layout;
}