import {
    Table,
    TableBody,
    TableCaption,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"

import { Button } from "@/components/ui/button";
import prisma from "../lib/prisma";
import AddPameran from "./addPameran";

// const jobQuery = async () => {
//     const res = await prisma.negara.findMany({})

//     return res
// }

// const pameranQuery = async () => {
//     const res = await prisma.pameran.findMany({})

//     return res
// }

export default async function Home () {

    // const [ job, pameran ] = await Promise.all([ jobQuery(), pameranQuery() ])

    // console.log(job);

    return (
        <>
            <AddPameran />
            <Table>
                <TableCaption>A list of your recent invoices.</TableCaption>
                <TableHeader>
                    <TableRow>
                        <TableHead className="w-[100px]">No</TableHead>
                        <TableHead>Nama Job</TableHead>
                        <TableHead>Nama Pameran</TableHead>
                        <TableHead>No Bill Of Lading</TableHead>
                        <TableHead>No Invoice</TableHead>
                        <TableHead>PIC</TableHead>
                    </TableRow>
                </TableHeader>
                <TableBody className="text-gray-500">
                    <TableRow>
                        <TableCell className="font-medium">1</TableCell>
                        <TableCell>JIP.01</TableCell>
                        <TableCell>Jakarta International Paralayang</TableCell>
                        <TableCell>JKTSNG23542</TableCell>
                        <TableCell>JIP/S.01/2024</TableCell>
                        <TableCell>SITI ARSYANI</TableCell>
                    </TableRow>
                </TableBody>
            </Table>

        </>
    );
}
