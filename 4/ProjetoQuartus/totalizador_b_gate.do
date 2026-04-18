transcript on

set SCRIPT_FILE [info script]
if {$SCRIPT_FILE eq ""} {
    set SCRIPT_DIR [pwd]
} else {
    set SCRIPT_DIR [file dirname [file normalize $SCRIPT_FILE]]
}

set ::SIM_MODE gate
do [file join $SCRIPT_DIR totalizador_b.do]
