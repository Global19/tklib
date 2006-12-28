#==============================================================================
# Main Tablelist_tile package module.
#
# Copyright (c) 2000-2007  Csaba Nemethi (E-mail: csaba.nemethi@t-online.de)
#==============================================================================

package require Tcl  8.4
package require Tk   8.4
if {$::tk_version < 8.5 || [regexp {^8\.5a[1-5]$} $::tk_patchLevel]} {
    package require tile 0.6
}
package require tablelist::common

package provide Tablelist_tile 4.6
package provide tablelist_tile 4.6

::tablelist::useTile 1

#
# Define the aliases ::tablelist::getThemes and ::tablelist::setTheme
#
if {[info commands ::ttk::themes] ne ""} {
    interp alias {} ::tablelist::getThemes {} ::ttk::themes
} else {
    interp alias {} ::tablelist::getThemes {} ::tile::availableThemes
}
if {[info commands "::ttk::setTheme"] ne ""} {
    interp alias {} ::tablelist::setTheme {} ::ttk::setTheme
} else {
    interp alias {} ::tablelist::setTheme {} ::tile::setTheme
}

namespace eval ::tablelist {
    #
    # Commands related to tile themes:
    #
    namespace export	getThemes getCurrentTheme setTheme setThemeDefaults
}
