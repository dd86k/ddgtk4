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
__gshared
{
    pragma(mangle, "ddgtk4_gtk_editable_get_text")
    const(char)* function(GtkEditable*) gtk_editable_get_text;
    pragma(mangle, "ddgtk4_gtk_editable_set_text")
    void function(GtkEditable*, const(char)*) gtk_editable_set_text;
    pragma(mangle, "ddgtk4_gtk_editable_get_chars")
    char* function(GtkEditable*, int, int) gtk_editable_get_chars;// G_GNUC_MALLOC;
    pragma(mangle, "ddgtk4_gtk_editable_insert_text")
    void function(GtkEditable*, const(char)*, int, int*) gtk_editable_insert_text;
    pragma(mangle, "ddgtk4_gtk_editable_delete_text")
    void function(GtkEditable*, int, int) gtk_editable_delete_text;
    pragma(mangle, "ddgtk4_gtk_editable_get_selection_bounds")
    gboolean function(GtkEditable*, int*, int*) gtk_editable_get_selection_bounds;
    pragma(mangle, "ddgtk4_gtk_editable_delete_selection")
    void function(GtkEditable*) gtk_editable_delete_selection;
    pragma(mangle, "ddgtk4_gtk_editable_select_region")
    void function(GtkEditable*, int, int) gtk_editable_select_region;
    pragma(mangle, "ddgtk4_gtk_editable_set_position")
    void function(GtkEditable*, int) gtk_editable_set_position;
    pragma(mangle, "ddgtk4_gtk_editable_get_position")
    int function(GtkEditable*) gtk_editable_get_position;
    pragma(mangle, "ddgtk4_gtk_editable_get_editable")
    gboolean function(GtkEditable*) gtk_editable_get_editable;
    pragma(mangle, "ddgtk4_gtk_editable_set_editable")
    void function(GtkEditable*, gboolean) gtk_editable_set_editable;
    pragma(mangle, "ddgtk4_gtk_editable_get_alignment")
    float function(GtkEditable*) gtk_editable_get_alignment;
    pragma(mangle, "ddgtk4_gtk_editable_set_alignment")
    void function(GtkEditable*, float) gtk_editable_set_alignment;
    pragma(mangle, "ddgtk4_gtk_editable_get_width_chars")
    int function(GtkEditable*) gtk_editable_get_width_chars;
    pragma(mangle, "ddgtk4_gtk_editable_set_width_chars")
    void function(GtkEditable*, int) gtk_editable_set_width_chars;
    pragma(mangle, "ddgtk4_gtk_editable_get_max_width_chars")
    int function(GtkEditable*) gtk_editable_get_max_width_chars;
    pragma(mangle, "ddgtk4_gtk_editable_set_max_width_chars")
    void function (GtkEditable*, int) gtk_editable_set_max_width_chars;
    pragma(mangle, "ddgtk4_gtk_editable_get_enable_undo")
    gboolean function(GtkEditable*) gtk_editable_get_enable_undo;
    pragma(mangle, "ddgtk4_gtk_editable_set_enable_undo")
    void function(GtkEditable*, gboolean) gtk_editable_set_enable_undo;
}