/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL9Eu8tk.aml, Tue Nov  2 08:44:23 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000028C (652)
 *     Revision         0x02
 *     Checksum         0xB0
 *     OEM ID           "HACK"
 *     OEM Table ID     "Hack"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "Hack", 0x00001000)
{
    External (_PR_.CPU0, ProcessorObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.SPTS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.SWAK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.NPTS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.NWAK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (PTX_, MethodObj)    // 0 Arguments
    External (WAX_, MethodObj)    // 0 Arguments

    Scope (\)
    {
        OperationRegion (RCRG, SystemMemory, 0xFED1F418, One)
        Field (RCRG, DWordAcc, Lock, Preserve)
        {
                ,   13, 
            EH2D,   1, 
                ,   1, 
            EH1D,   1
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                EH1D = One
                EH2D = One
            }
        }

        Scope (_SB)
        {
            Device (SLPB)
            {
                Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (PCI0)
            {
                Device (MCHC)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (_OSI ("Darwin"))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Scope (LPCB)
                {
                    Device (EC)
                    {
                        Name (_HID, "ACID0001")  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (_OSI ("Darwin"))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }
            }
        }

        Scope (_PR)
        {
            Scope (CPU0)
            {
                If (_OSI ("Darwin"))
                {
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x02)
                        {
                            "plugin-type", 
                            One
                        })
                    }
                }
            }
        }
    }

    Method (PTS, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If (Arg0)
            {
                \_SB.PCI0.LPCB.SPTS (Arg0)
                \_SB.PCI0.NPTS (Arg0)
            }
        }

        Return (PTX ())
    }

    Method (WAK, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            \_SB.PCI0.LPCB.SWAK (Arg0)
            \_SB.PCI0.NWAK (Arg0)
        }

        Return (WAX ())
    }
}

