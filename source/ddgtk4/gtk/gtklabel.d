module ddgtk4.gtk.gtklabel;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.gtk.gtkenums : GtkJustification;

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
    void function(GtkLabel*, GtkJustification) gtk_label_set_justify;
    GtkJustification function(GtkLabel*) gtk_label_get_justify;
    
    float function(GtkLabel*) gtk_label_get_xalign;
    void function(GtkLabel*, float) gtk_label_set_xalign;
}