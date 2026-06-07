module ddgtk4.gtk.gtktogglebutton;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes : gboolean;

struct GtkToggleButton;

// Macros
pragma(inline, true)
{
    GtkToggleButton* GTK_TOGGLE_BUTTON(void *o)
    {
        return cast(GtkToggleButton*)o;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_toggle_button_new")
    GtkWidget* function() gtk_toggle_button_new;
    pragma(mangle, "ddgtk4_gtk_toggle_button_new_with_label")
    GtkWidget* function(const(char)*) gtk_toggle_button_new_with_label;
    pragma(mangle, "ddgtk4_gtk_toggle_button_new_with_mnemonic")
    GtkWidget* function(const(char)*) gtk_toggle_button_new_with_mnemonic;
    pragma(mangle, "ddgtk4_gtk_toggle_button_set_active")
    void function(GtkToggleButton*, gboolean) gtk_toggle_button_set_active;
    pragma(mangle, "ddgtk4_gtk_toggle_button_get_active")
    gboolean function(GtkToggleButton*)       gtk_toggle_button_get_active;
    pragma(mangle, "ddgtk4_gtk_toggle_button_set_group")
    void function(GtkToggleButton*, GtkToggleButton*) gtk_toggle_button_set_group;
}