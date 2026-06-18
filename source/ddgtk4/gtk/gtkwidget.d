module ddgtk4.gtk.gtkwidget;

public import ddgtk4.glib.gtypes : gboolean;
public import ddgtk4.gtk.gtkenums : GtkTextDirection, GtkAlign;

public import ddgtk4.gtk.gtkeventcontroller : GtkEventController;

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
{
    alias A_gtk_widget_set_visible = void function(GtkWidget*, gboolean);
    alias A_gtk_widget_set_size_request = void function(GtkWidget*, int, int);
    alias A_gtk_widget_set_margin_top = void function(GtkWidget*, int);
    alias A_gtk_widget_set_margin_bottom = void function(GtkWidget*, int);
    alias A_gtk_widget_set_margin_start = void function(GtkWidget*, int);
    alias A_gtk_widget_set_margin_end = void function(GtkWidget*, int);
    alias A_gtk_widget_set_parent = void function(GtkWidget*, GtkWidget*);
    alias A_gtk_widget_set_hexpand = void function(GtkWidget*, gboolean);
    alias A_gtk_widget_set_vexpand = void function(GtkWidget*, gboolean);
    alias A_gtk_widget_get_first_child = GtkWidget* function(GtkWidget*);
    alias A_gtk_widget_get_next_sibling = GtkWidget* function(GtkWidget*);
    alias A_gtk_widget_get_settings = GtkSettings* function(GtkWidget*);
    alias A_gtk_widget_set_default_direction = void function(GtkTextDirection);
    alias A_gtk_widget_set_direction = void function(GtkWidget*, GtkTextDirection);
    alias A_gtk_widget_get_direction = GtkTextDirection function(GtkWidget*);
    alias A_gtk_widget_get_halign = GtkAlign function(GtkWidget*);
    alias A_gtk_widget_set_halign = void function(GtkWidget*, GtkAlign);
    alias A_gtk_widget_get_valign = GtkAlign function(GtkWidget*);
    alias A_gtk_widget_set_valign = void function(GtkWidget*, GtkAlign);
    alias A_gtk_widget_add_css_class = void function(GtkWidget*, const(char)*);
    alias A_gtk_widget_remove_css_class = void function(GtkWidget*, const(char)*);
    alias A_gtk_widget_grab_focus = gboolean function(GtkWidget*);
    alias A_gtk_widget_add_controller = void function(GtkWidget*, GtkEventController*);
    alias A_gtk_widget_remove_controller = void function(GtkWidget*, GtkEventController*);
}

__gshared
{
    A_gtk_widget_set_visible gtk_widget_set_visible;
    A_gtk_widget_set_size_request gtk_widget_set_size_request;
    A_gtk_widget_set_margin_top gtk_widget_set_margin_top;
    A_gtk_widget_set_margin_bottom gtk_widget_set_margin_bottom;
    A_gtk_widget_set_margin_start gtk_widget_set_margin_start;
    A_gtk_widget_set_margin_end gtk_widget_set_margin_end;
    A_gtk_widget_set_parent gtk_widget_set_parent;
    A_gtk_widget_set_hexpand gtk_widget_set_hexpand;
    A_gtk_widget_set_vexpand gtk_widget_set_vexpand;
    A_gtk_widget_get_first_child gtk_widget_get_first_child;
    A_gtk_widget_get_next_sibling gtk_widget_get_next_sibling;
    A_gtk_widget_get_settings gtk_widget_get_settings;
    A_gtk_widget_set_default_direction gtk_widget_set_default_direction;
    A_gtk_widget_set_direction gtk_widget_set_direction;
    A_gtk_widget_get_direction gtk_widget_get_direction;
    A_gtk_widget_get_halign gtk_widget_get_halign;
    A_gtk_widget_set_halign gtk_widget_set_halign;
    A_gtk_widget_get_valign gtk_widget_get_valign;
    A_gtk_widget_set_valign gtk_widget_set_valign;
    A_gtk_widget_add_css_class gtk_widget_add_css_class;
    A_gtk_widget_remove_css_class gtk_widget_remove_css_class;
    A_gtk_widget_grab_focus gtk_widget_grab_focus;
    A_gtk_widget_add_controller gtk_widget_add_controller;
    A_gtk_widget_remove_controller gtk_widget_remove_controller;
}