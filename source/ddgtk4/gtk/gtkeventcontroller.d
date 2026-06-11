module ddgtk4.gtk.gtkeventcontroller;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.gtk.gtkenums : GtkPropagationPhase, GtkPropagationLimit;
import ddgtk4.glib.gtypes : guint32;

struct GtkEventController;
struct GdkEvent;
struct GdkDevice;
struct GdkEventSequence;
alias GdkModifierType = uint;

pragma(inline, true)
{
    GtkEventController* GTK_EVENT_CONTROLLER(void *f)
    {
        return cast(GtkEventController*)f;
    }
}

extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_event_controller_get_widget")
    GtkWidget* function(GtkEventController* controller) gtk_event_controller_get_widget;

    pragma(mangle, "ddgtk4_gtk_event_controller_reset")
    void function(GtkEventController* controller) gtk_event_controller_reset;

    pragma(mangle, "ddgtk4_gtk_event_controller_get_propagation_phase")
    GtkPropagationPhase function(GtkEventController* controller) gtk_event_controller_get_propagation_phase;

    pragma(mangle, "ddgtk4_gtk_event_controller_set_propagation_phase")
    void function(GtkEventController* controller, GtkPropagationPhase phase) gtk_event_controller_set_propagation_phase;

    pragma(mangle, "ddgtk4_gtk_event_controller_get_propagation_limit")
    GtkPropagationLimit function(GtkEventController* controller) gtk_event_controller_get_propagation_limit;

    pragma(mangle, "ddgtk4_gtk_event_controller_set_propagation_limit")
    void function(GtkEventController* controller, GtkPropagationLimit limit) gtk_event_controller_set_propagation_limit;

    pragma(mangle, "ddgtk4_gtk_event_controller_get_name")
    const(char)* function(GtkEventController* controller) gtk_event_controller_get_name;

    pragma(mangle, "ddgtk4_gtk_event_controller_set_name")
    void function(GtkEventController* controller, const(char)* name) gtk_event_controller_set_name;

    pragma(mangle, "ddgtk4_gtk_event_controller_set_static_name")
    void function(GtkEventController* controller, const(char)* name) gtk_event_controller_set_static_name;

    pragma(mangle, "ddgtk4_gtk_event_controller_get_current_event")
    GdkEvent* function(GtkEventController* controller) gtk_event_controller_get_current_event;

    pragma(mangle, "ddgtk4_gtk_event_controller_get_current_event_time")
    guint32 function(GtkEventController* controller) gtk_event_controller_get_current_event_time;

    pragma(mangle, "ddgtk4_gtk_event_controller_get_current_event_device")
    GdkDevice* function(GtkEventController* controller) gtk_event_controller_get_current_event_device;

    pragma(mangle, "ddgtk4_gtk_event_controller_get_current_event_state")
    GdkModifierType function(GtkEventController* controller) gtk_event_controller_get_current_event_state;
}
