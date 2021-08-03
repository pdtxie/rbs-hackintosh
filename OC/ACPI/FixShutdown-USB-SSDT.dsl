/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200717 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of FixShutdown-USB-SSDT.aml, Sun Jun 13 21:56:18 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006C (108)
 *     Revision         0x02
 *     Checksum         0x07
 *     OEM ID           "Slav"
 *     OEM Table ID     "ZPTS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "SSDT", 2, "Slav", "ZPTS", 0x00000000)
{
    External (_SB_.PCI0.XHC_.PMEE, FieldUnitObj)
    External (ZPTS, MethodObj)    // 1 Arguments

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        ZPTS (Arg0)
        If ((0x05 == Arg0))
        {
            \_SB.PCI0.XHC.PMEE = Zero
        }
    }
}

