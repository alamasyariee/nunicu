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


export default async function Home () {


  return (
    <>
      <Button className="mb-5">Add New</Button>
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
