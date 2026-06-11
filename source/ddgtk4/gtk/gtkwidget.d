module ddgtk4.gtk.gtkwidget;

public import ddgtk4.glib.gtypes : gboolean;
public import ddgtk4.gtk.gtkenums : GtkTextDirection, GtkAlign;

struct GtkWidget;
struct GtkSettings; // temp until its own module

// Macros
pragma(inline, true)
{
    // Could be from anything
    GtkWidget* GTK_WIDGET(void *f)
    {
        return cast(GtkWidget*)f;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_widget_set_visible")
    void function(GtkWidget*, gboolean) gtk_widget_set_visible;
    pragma(mangle, "ddgtk4_gtk_widget_set_size_request")
    void function(GtkWidget*, int, int) gtk_widget_set_size_request;
    pragma(mangle, "ddgtk4_gtk_widget_set_margin_top")
    void function(GtkWidget*, int) gtk_widget_set_margin_top;
    pragma(mangle, "ddgtk4_gtk_widget_set_margin_bottom")
    void function(GtkWidget*, int) gtk_widget_set_margin_bottom;
    pragma(mangle, "ddgtk4_gtk_widget_set_margin_start")
    void function(GtkWidget*, int) gtk_widget_set_margin_start;
    pragma(mangle, "ddgtk4_gtk_widget_set_margin_end")
    void function(GtkWidget*, int) gtk_widget_set_margin_end;
    pragma(mangle, "ddgtk4_gtk_widget_set_parent")
    void function(GtkWidget*, GtkWidget*) gtk_widget_set_parent;
    pragma(mangle, "ddgtk4_gtk_widget_set_hexpand")
    void function(GtkWidget*, gboolean) gtk_widget_set_hexpand;
    pragma(mangle, "ddgtk4_gtk_widget_set_vexpand")
    void function(GtkWidget*, gboolean) gtk_widget_set_vexpand;
    pragma(mangle, "ddgtk4_gtk_widget_get_first_child")
    GtkWidget* function(GtkWidget*) gtk_widget_get_first_child;
    pragma(mangle, "ddgtk4_gtk_widget_get_settings")
    GtkSettings* function(GtkWidget*) gtk_widget_get_settings;
    pragma(mangle, "ddgtk4_gtk_widget_set_default_direction")
    void function(GtkTextDirection) gtk_widget_set_default_direction;
    pragma(mangle, "ddgtk4_gtk_widget_set_direction")
    void function(GtkWidget*, GtkTextDirection) gtk_widget_set_direction;
    pragma(mangle, "ddgtk4_gtk_widget_get_direction")
    GtkTextDirection function(GtkWidget*) gtk_widget_get_direction;
    pragma(mangle, "ddgtk4_gtk_widget_get_halign")
    GtkAlign function(GtkWidget*) gtk_widget_get_halign;
    pragma(mangle, "ddgtk4_gtk_widget_set_halign")
    void function(GtkWidget*, GtkAlign) gtk_widget_set_halign;
    pragma(mangle, "ddgtk4_gtk_widget_get_valign")
    GtkAlign function(GtkWidget*) gtk_widget_get_valign;
    pragma(mangle, "ddgtk4_gtk_widget_set_valign")
    void function(GtkWidget*, GtkAlign) gtk_widget_set_valign;
    pragma(mangle, "ddgtk4_gtk_widget_add_css_class")
    void function(GtkWidget*, const(char)*) gtk_widget_add_css_class;
    pragma(mangle, "ddgtk4_gtk_widget_remove_css_class")
    void function(GtkWidget*, const(char)*) gtk_widget_remove_css_class;
    pragma(mangle, "ddgtk4_gtk_widget_grab_focus")
    gboolean function(GtkWidget*) gtk_widget_grab_focus;

}