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
{
    alias A_gtk_toggle_button_new = GtkWidget* function();
    alias A_gtk_toggle_button_new_with_label = GtkWidget* function(const(char)*);
    alias A_gtk_toggle_button_new_with_mnemonic = GtkWidget* function(const(char)*);
    alias A_gtk_toggle_button_set_active = void function(GtkToggleButton*, gboolean);
    alias A_gtk_toggle_button_get_active = gboolean function(GtkToggleButton*);
    alias A_gtk_toggle_button_set_group = void function(GtkToggleButton*, GtkToggleButton*);
}

__gshared
{
    A_gtk_toggle_button_new gtk_toggle_button_new;
    A_gtk_toggle_button_new_with_label gtk_toggle_button_new_with_label;
    A_gtk_toggle_button_new_with_mnemonic gtk_toggle_button_new_with_mnemonic;
    A_gtk_toggle_button_set_active gtk_toggle_button_set_active;
    A_gtk_toggle_button_get_active gtk_toggle_button_get_active;
    A_gtk_toggle_button_set_group gtk_toggle_button_set_group;
}