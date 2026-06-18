module ddgtk4.gtk.gtkeditable;

public import ddgtk4.gtk.gtkwidget : GtkWidget;
public import ddgtk4.glib.gtypes : gboolean;

struct GtkEditable;

// Macros
pragma(inline, true)
{
    GtkEditable* GTK_EDITABLE(void *w)
    {
        return cast(GtkEditable*) w;
    }
}

// Functions
extern (C)
{
    alias A_gtk_editable_get_text = const(char)* function(GtkEditable*);
    alias A_gtk_editable_set_text = void function(GtkEditable*, const(char)*);
    alias A_gtk_editable_get_chars = char* function(GtkEditable*, int, int); // G_GNUC_MALLOC;
    alias A_gtk_editable_insert_text = void function(GtkEditable*, const(char)*, int, int*);
    alias A_gtk_editable_delete_text = void function(GtkEditable*, int, int);
    alias A_gtk_editable_get_selection_bounds = gboolean function(GtkEditable*, int*, int*);
    alias A_gtk_editable_delete_selection = void function(GtkEditable*);
    alias A_gtk_editable_select_region = void function(GtkEditable*, int, int);
    alias A_gtk_editable_set_position = void function(GtkEditable*, int);
    alias A_gtk_editable_get_position = int function(GtkEditable*);
    alias A_gtk_editable_get_editable = gboolean function(GtkEditable*);
    alias A_gtk_editable_set_editable = void function(GtkEditable*, gboolean);
    alias A_gtk_editable_get_alignment = float function(GtkEditable*);
    alias A_gtk_editable_set_alignment = void function(GtkEditable*, float);
    alias A_gtk_editable_get_width_chars = int function(GtkEditable*);
    alias A_gtk_editable_set_width_chars = void function(GtkEditable*, int);
    alias A_gtk_editable_get_max_width_chars = int function(GtkEditable*);
    alias A_gtk_editable_set_max_width_chars = void function (GtkEditable*, int);
    alias A_gtk_editable_get_enable_undo = gboolean function(GtkEditable*);
    alias A_gtk_editable_set_enable_undo = void function(GtkEditable*, gboolean);
}

__gshared
{
    A_gtk_editable_get_text gtk_editable_get_text;
    A_gtk_editable_set_text gtk_editable_set_text;
    A_gtk_editable_get_chars gtk_editable_get_chars;
    A_gtk_editable_insert_text gtk_editable_insert_text;
    A_gtk_editable_delete_text gtk_editable_delete_text;
    A_gtk_editable_get_selection_bounds gtk_editable_get_selection_bounds;
    A_gtk_editable_delete_selection gtk_editable_delete_selection;
    A_gtk_editable_select_region gtk_editable_select_region;
    A_gtk_editable_set_position gtk_editable_set_position;
    A_gtk_editable_get_position gtk_editable_get_position;
    A_gtk_editable_get_editable gtk_editable_get_editable;
    A_gtk_editable_set_editable gtk_editable_set_editable;
    A_gtk_editable_get_alignment gtk_editable_get_alignment;
    A_gtk_editable_set_alignment gtk_editable_set_alignment;
    A_gtk_editable_get_width_chars gtk_editable_get_width_chars;
    A_gtk_editable_set_width_chars gtk_editable_set_width_chars;
    A_gtk_editable_get_max_width_chars gtk_editable_get_max_width_chars;
    A_gtk_editable_set_max_width_chars gtk_editable_set_max_width_chars;
    A_gtk_editable_get_enable_undo gtk_editable_get_enable_undo;
    A_gtk_editable_set_enable_undo gtk_editable_set_enable_undo;
}