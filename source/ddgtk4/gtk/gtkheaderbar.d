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
{
    alias A_gtk_header_bar_new = GtkWidget* function();
    alias A_gtk_header_bar_pack_end = void function(GtkHeaderBar*, GtkWidget*);
    alias A_gtk_header_bar_pack_start = void function(GtkHeaderBar*, GtkWidget*);
    alias A_gtk_header_bar_set_title_widget = void function(GtkHeaderBar*, GtkWidget*);
    alias A_gtk_header_bar_get_title_widget = GtkWidget* function(GtkHeaderBar*);
    alias A_gtk_header_bar_remove = void function(GtkHeaderBar*, GtkWidget*);
    alias A_gtk_header_bar_get_show_title_buttons = gboolean function(GtkHeaderBar*);
    alias A_gtk_header_bar_set_show_title_buttons = void function(GtkHeaderBar*, gboolean);
    alias A_gtk_header_bar_set_decoration_layout = void function(GtkHeaderBar*, const(char)*);
    alias A_gtk_header_bar_get_decoration_layout = const(char)* function(GtkHeaderBar*);
}

__gshared
{
    A_gtk_header_bar_new gtk_header_bar_new;
    A_gtk_header_bar_pack_end gtk_header_bar_pack_end;
    A_gtk_header_bar_pack_start gtk_header_bar_pack_start;
    A_gtk_header_bar_set_title_widget gtk_header_bar_set_title_widget;
    A_gtk_header_bar_get_title_widget gtk_header_bar_get_title_widget;
    A_gtk_header_bar_remove gtk_header_bar_remove;
    A_gtk_header_bar_get_show_title_buttons gtk_header_bar_get_show_title_buttons;
    A_gtk_header_bar_set_show_title_buttons gtk_header_bar_set_show_title_buttons;
    A_gtk_header_bar_set_decoration_layout gtk_header_bar_set_decoration_layout;
    A_gtk_header_bar_get_decoration_layout gtk_header_bar_get_decoration_layout;
}