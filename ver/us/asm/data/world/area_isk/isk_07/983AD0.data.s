.include "macro.inc"

.section .data

dlabel D_80241690_983AD0
.word 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000022, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000023, 0x7FFFFE00, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000023, 0x80000002, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x0000005A, 0x0000001E, 0x00000004, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000004B, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000002, StopSound, 0x80000002, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024177C_983BBC
.word 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000022, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000023, 0x7FFFFE00, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000022, 0x80000002, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x0000005A, 0x00000000, 0x0000001E, 0x00000004, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0x0000004B, 0xFE363C80, 0x00000000, 0x00000000, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000002, StopSound, 0x80000002, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80241868_983CA8
.word 0x00000043, 0x00000007, InterpCamTargetPos, 0x00000000, 0x00000001, 0x00000171, 0xFFFFFEA3, 0x00000171, 0x00000014, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0x00000171, 0xFFFFFEA3, 0x00000171, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0x00000171, 0xFFFFFEA3, 0x00000171, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x0000000A, 0x00000002, 0xFAA2B580, 0x00000000, 0x00000046, 0x00000001, D_80241690_983AD0, 0x00000024, 0x00000002, 0xFAA2B580, 0x00000001, 0x00000012, 0x00000000, 0x00000046, 0x00000001, D_8024177C_983BBC, 0x00000024, 0x00000002, 0xFAA2B580, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x00000003, 0xF24A7AE7, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetPanTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000003, WaitForCam, 0x00000000, 0xF24A7E80, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000024, 0x00000002, 0xF971888E, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000022, 0x7FFFFE00, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000023, 0x7FFFFE00, 0x00000024, 0x00000002, 0xFAA2B580, 0x00000000, 0x00000047, 0x00000005, D_80241868_983CA8, 0x00020000, 0xF971888E, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80241A80_983EC0
.word 0x00000011, 0x00000000

dlabel D_80241A88_983EC8
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000001, 0x00000043, 0x00000001, ShowKeyChoicePopup, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0x001D00D8, 0x000000A0, 0x00000028, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000002, 0x00000000, 0x00000016, 0x00000001, 0xFFFFFFFF, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000002, 0x00000000, 0x00000023, 0x00000000, 0x00000043, 0x00000006, PlaySoundAt, 0x00000269, 0x00000000, 0xFFFFFED4, 0xFFFFFE84, 0x00000212, 0x00000043, 0x00000002, RemoveKeyItemAt, 0xFE363C81, 0x00000024, 0x00000002, 0xF8405EED, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFD050F80, 0x00000043, 0x00000001, isk_07_SetEntityFlags100000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000002, 0x00000265, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000041, 0x00000041, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateGroup, 0x0000004F, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000002, 0x7FFFFE00, 0x00000043, 0x00000001, CloseChoicePopup, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xF8405EED, 0x00000000, 0x00000043, 0x00000002, MakeTransformGroup, 0x0000004F, 0x0000004E, 0x00000006, D_80241A88_983EC8, 0x00000100, 0x00004000, D_80241A80_983EC0, 0x00000000, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x0000004F, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000002, 0x7FFFFE00, 0x00000013, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000005A, 0x00000000, 0x00000041, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000005B, 0x00000000, 0x00000041, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000006, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000001, 0x00000006, 0x7FFFFE00, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000006, 0x00000266, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000041, 0x00000000, 0x0000000F, 0x00000001, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x0000005A, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000005B, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000004, PlaySoundAtCollider, 0x00000006, 0x00000267, 0x00000000, 0x00000043, 0x00000005, ShakeCam, 0x00000000, 0x00000000, 0x0000000A, 0xF24A7BB4, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x00000041, 0x0000000F, 0x00000000, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000005, TranslateModel, 0x0000005A, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, TranslateModel, 0x0000005B, 0x00000000, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000006, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
