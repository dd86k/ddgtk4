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
{
    alias A_gtk_label_new = GtkWidget* function(const(char)*);
    alias A_gtk_label_set_text = void function(GtkLabel*, const(char)*);
    alias A_gtk_label_set_justify = void function(GtkLabel*, GtkJustification);
    alias A_gtk_label_get_justify = GtkJustification function(GtkLabel*);
    alias A_gtk_label_get_xalign = float function(GtkLabel*);
    alias A_gtk_label_set_xalign = void function(GtkLabel*, float);
}

__gshared
{
    A_gtk_label_new gtk_label_new;
    A_gtk_label_set_text gtk_label_set_text;
    A_gtk_label_set_justify gtk_label_set_justify;
    A_gtk_label_get_justify gtk_label_get_justify;
    A_gtk_label_get_xalign gtk_label_get_xalign;
    A_gtk_label_set_xalign gtk_label_set_xalign;
}