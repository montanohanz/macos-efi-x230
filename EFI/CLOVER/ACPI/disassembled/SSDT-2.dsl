/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Thu May 16 15:57:57 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000100 (256)
 *     Revision         0x01
 *     Checksum         0xC3
 *     OEM ID           "toleda"
 *     OEM Table ID     "ami8arpt"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20130517 (538117399)
 */
DefinitionBlock ("", "SSDT", 1, "toleda", "ami8arpt", 0x00003000)
{
    Method (_SB.PCI0.RP04.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x0C)
        {
            "AAPL,slot-name", 
            "AirPort", 
            "built-in", 
            Buffer (One)
            {
                 0x00                                           
            }, 

            "device_type", 
            "AirPort", 
            "model", 
            "Broadcom BCM943xx 802.11 a/b/g/n Wireless Network Controller", 
            "name", 
            "AirPort Extreme", 
            "compatible", 
            "pci14e4,43a0"
        })
    }
}

