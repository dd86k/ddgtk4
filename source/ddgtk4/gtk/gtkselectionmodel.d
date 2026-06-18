module ddgtk4.gtk.gtkselectionmodel;

import ddgtk4.glib.gtypes : gboolean, guint;

struct GtkSelectionModel;
struct GtkBitset; // temp until its own module

// Macros
pragma(inline, true)
{
    GtkSelectionModel* GTK_SELECTION_MODEL(void *l)
    {
        return cast(GtkSelectionModel*)l;
    }
}

// Functions
extern (C)
{
    alias A_gtk_selection_model_is_selected = gboolean function(GtkSelectionModel*, guint);
    alias A_gtk_selection_model_get_selection = GtkBitset* function(GtkSelectionModel*);
    alias A_gtk_selection_model_get_selection_in_range = GtkBitset* function(GtkSelectionModel*, guint, guint);
    alias A_gtk_selection_model_select_item = gboolean function(GtkSelectionModel*, guint, gboolean);
    alias A_gtk_selection_model_unselect_item = gboolean function(GtkSelectionModel*, guint);
    alias A_gtk_selection_model_select_range = gboolean function(GtkSelectionModel*, guint, guint, gboolean);
    alias A_gtk_selection_model_unselect_range = gboolean function(GtkSelectionModel*, guint, guint);
    alias A_gtk_selection_model_select_all = gboolean function(GtkSelectionModel*);
    alias A_gtk_selection_model_unselect_all = gboolean function(GtkSelectionModel*);
    alias A_gtk_selection_model_set_selection = gboolean function(GtkSelectionModel*, GtkBitset*, GtkBitset*);
    /* for implementations only */
    //void function(GtkSelectionModel*, guint, guint) gtk_selection_model_selection_changed;
}

__gshared
{
    A_gtk_selection_model_is_selected gtk_selection_model_is_selected;
    A_gtk_selection_model_get_selection gtk_selection_model_get_selection;
    A_gtk_selection_model_get_selection_in_range gtk_selection_model_get_selection_in_range;
    A_gtk_selection_model_select_item gtk_selection_model_select_item;
    A_gtk_selection_model_unselect_item gtk_selection_model_unselect_item;
    A_gtk_selection_model_select_range gtk_selection_model_select_range;
    A_gtk_selection_model_unselect_range gtk_selection_model_unselect_range;
    A_gtk_selection_model_select_all gtk_selection_model_select_all;
    A_gtk_selection_model_unselect_all gtk_selection_model_unselect_all;
    A_gtk_selection_model_set_selection gtk_selection_model_set_selection;
}