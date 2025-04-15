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
    GtkWidget* function() gtk_header_bar_new;
    
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_pack_end;
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_pack_start;
    
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_set_title_widget;
    GtkWidget* function(GtkHeaderBar*)       gtk_header_bar_get_title_widget;
    void function(GtkHeaderBar*, GtkWidget*) gtk_header_bar_remove;
    
    gboolean function(GtkHeaderBar*)         gtk_header_bar_get_show_title_buttons;
    void function(GtkHeaderBar*, gboolean)   gtk_header_bar_set_show_title_buttons;
    
    void function(GtkHeaderBar*, const(char)*) gtk_header_bar_set_decoration_layout;
    const(char)* function(GtkHeaderBar*)       gtk_header_bar_get_decoration_layout;
}