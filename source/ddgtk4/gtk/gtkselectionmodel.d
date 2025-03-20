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
__gshared
{
    gboolean function(GtkSelectionModel*, guint) gtk_selection_model_is_selected;
    GtkBitset* function(GtkSelectionModel*) gtk_selection_model_get_selection;
    GtkBitset* function(GtkSelectionModel*, guint, guint) gtk_selection_model_get_selection_in_range;
    gboolean function(GtkSelectionModel*, guint, gboolean) gtk_selection_model_select_item;
    gboolean function(GtkSelectionModel*, guint) gtk_selection_model_unselect_item;
    gboolean function(GtkSelectionModel*, guint, guint, gboolean) gtk_selection_model_select_range;
    gboolean function(GtkSelectionModel*, guint, guint) gtk_selection_model_unselect_range;
    gboolean function(GtkSelectionModel*) gtk_selection_model_select_all;
    gboolean function(GtkSelectionModel*) gtk_selection_model_unselect_all;
    gboolean function(GtkSelectionModel*, GtkBitset*, GtkBitset*) gtk_selection_model_set_selection;
    
    /* for implementations only */
    //void function(GtkSelectionModel*, guint, guint) gtk_selection_model_selection_changed;
}