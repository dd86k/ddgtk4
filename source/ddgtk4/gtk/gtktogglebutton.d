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
    GtkWidget* function() gtk_toggle_button_new;
    GtkWidget* function(const(char)*) gtk_toggle_button_new_with_label;
    GtkWidget* function(const(char)*) gtk_toggle_button_new_with_mnemonic;
    
    void function(GtkToggleButton*, gboolean) gtk_toggle_button_set_active;
    gboolean function(GtkToggleButton*)       gtk_toggle_button_get_active;
    
    void function(GtkToggleButton*, GtkToggleButton*) gtk_toggle_button_set_group;
}