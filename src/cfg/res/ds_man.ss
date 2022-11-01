
#Demo recording manager
# using ds_ commands so ds_status can be used (https://github.com/ValveSoftware/Source-1-Games/issues/4094)

enum ds_man {
    {
    ds_record manual
    wait 50
    cc_emit "#DM.Started"
    },{
    ds_stop
    wait 50
    cc_emit "#DM.Stopped"
    }
}
