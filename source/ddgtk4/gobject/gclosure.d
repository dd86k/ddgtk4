module ddgtk4.gobject.gclosure;

import ddgtk4.glib.gtypes;

struct GClosure;

// NOTE: C and D functions are absolutely not the same.
//       In C, all functions *are* pointers as themselves, especially
//       when passed as a parameter to a function.
//       In D, they are a dedicated type, and unable to pass a function
//       as-is (without address-of operator (&)), because parentheses are
//       optional.
//       However, because passing (D) (&example) is the same as (C) (example)
//       is the same, this is safe. On top that they are both one-star pointers.
//alias GCallback = void function();
alias GCallback = void*;

// NOTE: Function pointer declaration needs this set of parameters,
//       and thus provides type safety.
//typedef void  (*GClosureNotify)		(gpointer	 data, GClosure	*closure);
alias GClosureNotify = void function(gpointer data, GClosure *closure);

struct GClosureNotifyData
{
    gpointer       data;
    GClosureNotify notify;
}

// Macros
pragma(inline, true)
{
    GCallback* G_CALLBACK(void *c)
    {
        return cast(GCallback*)c;
    }
}