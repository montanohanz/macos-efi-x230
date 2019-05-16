/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-ARPT-RP05-4352.aml, Thu May 16 15:57:57 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008B (139)
 *     Revision         0x01
 *     Checksum         0x48
 *     OEM ID           "toleda"
 *     OEM Table ID     "ami8arpt"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20141107 (538185991)
 */
DefinitionBlock ("", "SSDT", 1, "toleda", "ami8arpt", 0x00003000)
{
    External (_SB_.PCI0.RP05, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // Warning: Unknown object
    External (PXSX, DeviceObj)    // Warning: Unknown object

    Scope (\_SB.PCI0.RP05)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x02)
                {
                    "compatible", 
                    "pci14e4,43a0"
                })
            }
        }
    }
}

