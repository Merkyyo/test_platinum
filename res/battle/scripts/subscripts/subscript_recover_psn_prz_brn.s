#include "macros/btlcmd.inc"


_000:
    CompareMonDataToValue OPCODE_FLAG_NOT, BTLSCR_ATTACKER, BATTLEMON_STATUS, MON_CONDITION_FACADE_BOOST, _023
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    UpdateMonData OPCODE_SET, BTLSCR_ATTACKER, BATTLEMON_STATUS, MON_CONDITION_NONE
    // {0}’s status returned to normal!
    PrintMessage pl_msg_00000368_00491, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    SetHealthbarStatus BTLSCR_ATTACKER, BATTLE_ANIMATION_NONE
    WaitButtonABTime 30
    End 

_023:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
