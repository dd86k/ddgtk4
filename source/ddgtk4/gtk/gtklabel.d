module ddgtk4.gtk.gtklabel;

import ddgtk4.gtk.gtkwidget : GtkWidget;

struct GtkLabel;

// Macros
pragma(inline, true)
{
    GtkLabel* GTK_LABEL(void *o)
    {
        return cast(GtkLabel*)o;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function(const(char)*) gtk_label_new;
    void function(GtkLabel*, const(char)*) gtk_label_set_text;
}