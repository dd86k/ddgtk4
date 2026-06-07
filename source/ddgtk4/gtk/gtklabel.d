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
    pragma(mangle, "ddgtk4_gtk_label_new")
    GtkWidget* function(const(char)*) gtk_label_new;
    pragma(mangle, "ddgtk4_gtk_label_set_text")
    void function(GtkLabel*, const(char)*) gtk_label_set_text;
    pragma(mangle, "ddgtk4_gtk_label_set_justify")
    void function(GtkLabel*, GtkJustification) gtk_label_set_justify;
    pragma(mangle, "ddgtk4_gtk_label_get_justify")
    GtkJustification function(GtkLabel*) gtk_label_get_justify;
    pragma(mangle, "ddgtk4_gtk_label_get_xalign")
    float function(GtkLabel*) gtk_label_get_xalign;
    pragma(mangle, "ddgtk4_gtk_label_set_xalign")
    void function(GtkLabel*, float) gtk_label_set_xalign;
}