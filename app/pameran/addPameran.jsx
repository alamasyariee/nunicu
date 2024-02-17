"use client"

import { Button } from "@/components/ui/button"
import {
    Popover,
    PopoverContent,
    PopoverTrigger,
} from "@/components/ui/popover"
import { FormInput } from "@/components/ui/FormInput"
import { Label } from "@radix-ui/react-label"
import { Input } from "postcss"


export default function AddPameran () {

    return (
        <>
            <Button>
                <Popover className="place-center">
                    <PopoverTrigger>Add New</PopoverTrigger>
                    <PopoverContent className="p-5">
                        <form className="flex flex-col gap-2">
                            <label className="text-sm text-gray-500">Nama Job</label>
                            <input className="p-2" type="text" placeholder="Masukkan Nama Job" />

                            <label className="text-sm text-gray-500">Nama Pameran</label>
                            <input className="p-2" type="text" placeholder="Masukkan Nama Job" />

                            <label className="text-sm text-gray-500">No B/L</label>
                            <input className="p-2" type="text" placeholder="Masukkan Nama Job" />

                            <label className="text-sm text-gray-500">Nama PIC</label>
                            <input className="p-2" type="text" placeholder="Masukkan Nama Job" />

                            <Button>Submit</Button>
                        </form>
                    </PopoverContent>
                </Popover>
            </Button>
        </>

    )
}
