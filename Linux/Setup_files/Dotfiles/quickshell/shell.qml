//@ pragma Env QS_NO_RELOAD_POPUP=1
//@ pragma Env QSG_RENDER_LOOP=threaded
//@ pragma Env QT_QUICK_FLICKABLE_WHEEL_DECELERATION=10000

// It is the root of all, this Brings everything together. 

import "modules"
import "modules/drawers"
import "modules/background"
import "modules/lock"
import Quickshell

ShellRoot {
    Background {}
    Drawers {}
    Lock {
        id: lock
    }

    Shortcuts {}
    BatteryMonitor {}
    IdleMonitors {
        lock: lock
    }
}
