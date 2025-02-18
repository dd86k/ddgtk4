module ddgtk4.gtk.gtkscrolledwindow;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.glib.gtypes   : gboolean;

struct GtkScrolledWindow;


/**
 * GtkCornerType:
 * @GTK_CORNER_TOP_LEFT: Place the scrollbars on the right and bottom of the
 *   widget (default behaviour).
 * @GTK_CORNER_BOTTOM_LEFT: Place the scrollbars on the top and right of the
 *   widget.
 * @GTK_CORNER_TOP_RIGHT: Place the scrollbars on the left and bottom of the
 *   widget.
 * @GTK_CORNER_BOTTOM_RIGHT: Place the scrollbars on the top and left of the
 *   widget.
 *
 * Specifies which corner a child widget should be placed in when packed into
 * a `GtkScrolledWindow.`
 *
 * This is effectively the opposite of where the scroll bars are placed.
 */
alias GtkCornerType = int;
enum : GtkCornerType
{
  GTK_CORNER_TOP_LEFT,
  GTK_CORNER_BOTTOM_LEFT,
  GTK_CORNER_TOP_RIGHT,
  GTK_CORNER_BOTTOM_RIGHT
}

alias GtkPolicyType = int;
enum : GtkPolicyType
{
    GTK_POLICY_ALWAYS,
    GTK_POLICY_AUTOMATIC,
    GTK_POLICY_NEVER,
    GTK_POLICY_EXTERNAL
}

// Macros
pragma(inline, true)
{
    GtkScrolledWindow* GTK_SCROLLED_WINDOW(GtkWidget *w)
    {
        return cast(GtkScrolledWindow*)w;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function() gtk_scrolled_window_new;
    
    void function(GtkScrolledWindow*, GtkWidget*) gtk_scrolled_window_set_child;
    void function(GtkScrolledWindow*, GtkPolicyType, GtkPolicyType) gtk_scrolled_window_set_policy;
    void function(GtkScrolledWindow*, GtkCornerType) gtk_scrolled_window_set_placement;
    void function(GtkScrolledWindow*, gboolean) gtk_scrolled_window_set_overlay_scrolling;
}
