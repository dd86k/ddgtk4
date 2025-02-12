module ddgtk4.gtk.gtkheaderbar;

import ddgtk4.gtk.gtkwidget : GtkWidget;

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
}