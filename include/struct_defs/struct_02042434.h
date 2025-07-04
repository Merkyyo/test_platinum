#ifndef POKEPLATINUM_STRUCT_02042434_H
#define POKEPLATINUM_STRUCT_02042434_H

#include "overlay019/box_settings.h"

#include "savedata.h"

typedef struct {
    SaveData *saveData;
    enum BoxMode boxMode;
    BOOL recordBoxUseInJournal;
} UnkStruct_02042434;

#endif // POKEPLATINUM_STRUCT_02042434_H
