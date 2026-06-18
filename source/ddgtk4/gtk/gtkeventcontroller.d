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
{
    alias A_gtk_event_controller_get_widget = GtkWidget* function(GtkEventController* controller);
    alias A_gtk_event_controller_reset = void function(GtkEventController* controller);
    alias A_gtk_event_controller_get_propagation_phase = GtkPropagationPhase function(GtkEventController* controller);
    alias A_gtk_event_controller_set_propagation_phase = void function(GtkEventController* controller, GtkPropagationPhase phase);
    alias A_gtk_event_controller_get_propagation_limit = GtkPropagationLimit function(GtkEventController* controller);
    alias A_gtk_event_controller_set_propagation_limit = void function(GtkEventController* controller, GtkPropagationLimit limit);
    alias A_gtk_event_controller_get_name = const(char)* function(GtkEventController* controller);
    alias A_gtk_event_controller_set_name = void function(GtkEventController* controller, const(char)* name);
    alias A_gtk_event_controller_set_static_name = void function(GtkEventController* controller, const(char)* name);
    alias A_gtk_event_controller_get_current_event = GdkEvent* function(GtkEventController* controller);
    alias A_gtk_event_controller_get_current_event_time = guint32 function(GtkEventController* controller);
    alias A_gtk_event_controller_get_current_event_device = GdkDevice* function(GtkEventController* controller);
    alias A_gtk_event_controller_get_current_event_state = GdkModifierType function(GtkEventController* controller);
}

__gshared
{
    A_gtk_event_controller_get_widget gtk_event_controller_get_widget;
    A_gtk_event_controller_reset gtk_event_controller_reset;
    A_gtk_event_controller_get_propagation_phase gtk_event_controller_get_propagation_phase;
    A_gtk_event_controller_set_propagation_phase gtk_event_controller_set_propagation_phase;
    A_gtk_event_controller_get_propagation_limit gtk_event_controller_get_propagation_limit;
    A_gtk_event_controller_set_propagation_limit gtk_event_controller_set_propagation_limit;
    A_gtk_event_controller_get_name gtk_event_controller_get_name;
    A_gtk_event_controller_set_name gtk_event_controller_set_name;
    A_gtk_event_controller_set_static_name gtk_event_controller_set_static_name;
    A_gtk_event_controller_get_current_event gtk_event_controller_get_current_event;
    A_gtk_event_controller_get_current_event_time gtk_event_controller_get_current_event_time;
    A_gtk_event_controller_get_current_event_device gtk_event_controller_get_current_event_device;
    A_gtk_event_controller_get_current_event_state gtk_event_controller_get_current_event_state;
}
