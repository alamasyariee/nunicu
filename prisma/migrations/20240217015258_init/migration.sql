-- CreateEnum
CREATE TYPE "Progres" AS ENUM ('ONBC23', 'ONBC25', 'ONBC30');

-- CreateEnum
CREATE TYPE "ShipmentType" AS ENUM ('FCL', 'LCL');

-- CreateEnum
CREATE TYPE "JenisKemasan" AS ENUM ('PACKAGES', 'PALLETE');

-- CreateTable
CREATE TABLE "Venue" (
    "id" SERIAL NOT NULL,
    "nama" TEXT NOT NULL,
    "alias" TEXT,
    "alamat" TEXT NOT NULL,
    "noIzin" TEXT NOT NULL,
    "API" TEXT NOT NULL,
    "PIC" TEXT NOT NULL,
    "jabatan" TEXT NOT NULL,

    CONSTRAINT "Venue_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pameran" (
    "id" SERIAL NOT NULL,
    "nama" TEXT NOT NULL,
    "alias" TEXT,
    "tahun" TEXT NOT NULL,
    "tanggalMulai" TIMESTAMP(3) NOT NULL,
    "tanggalBerakhir" TIMESTAMP(3) NOT NULL,
    "idVenue" INTEGER NOT NULL,

    CONSTRAINT "Pameran_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Negara" (
    "id" SERIAL NOT NULL,
    "nama" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "kode" TEXT NOT NULL,

    CONSTRAINT "Negara_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Shipper" (
    "id" SERIAL NOT NULL,
    "nama" TEXT NOT NULL,
    "alias" TEXT,
    "alamat" TEXT NOT NULL,
    "idNegara" INTEGER NOT NULL,

    CONSTRAINT "Shipper_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KargoInfo" (
    "id" SERIAL NOT NULL,
    "nomorBL" TEXT NOT NULL,
    "tanggalBL" TIMESTAMP(3) NOT NULL,
    "shipmentType" "ShipmentType" NOT NULL,
    "voyage" TEXT NOT NULL,
    "vessel" TEXT NOT NULL,
    "portKeberangkatan" TEXT NOT NULL,
    "portKedatangan" TEXT NOT NULL,
    "ETD" TIMESTAMP(3) NOT NULL,
    "ETA" TIMESTAMP(3) NOT NULL,
    "jenisKemasan" "JenisKemasan" NOT NULL,
    "totalKemasan" INTEGER NOT NULL,
    "weight" INTEGER NOT NULL,
    "deskripsiBarang" TEXT NOT NULL,
    "volume" INTEGER NOT NULL,

    CONSTRAINT "KargoInfo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Job" (
    "id" SERIAL NOT NULL,
    "nama" TEXT NOT NULL,
    "progres" "Progres" NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "idPameran" INTEGER NOT NULL,
    "idShipper" INTEGER NOT NULL,
    "idKargo" INTEGER NOT NULL,

    CONSTRAINT "Job_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Venue_alias_key" ON "Venue"("alias");

-- CreateIndex
CREATE UNIQUE INDEX "Negara_kode_key" ON "Negara"("kode");

-- CreateIndex
CREATE UNIQUE INDEX "KargoInfo_nomorBL_key" ON "KargoInfo"("nomorBL");

-- AddForeignKey
ALTER TABLE "Pameran" ADD CONSTRAINT "Pameran_idVenue_fkey" FOREIGN KEY ("idVenue") REFERENCES "Venue"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Shipper" ADD CONSTRAINT "Shipper_idNegara_fkey" FOREIGN KEY ("idNegara") REFERENCES "Negara"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Job" ADD CONSTRAINT "Job_idPameran_fkey" FOREIGN KEY ("idPameran") REFERENCES "Pameran"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Job" ADD CONSTRAINT "Job_idShipper_fkey" FOREIGN KEY ("idShipper") REFERENCES "Shipper"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Job" ADD CONSTRAINT "Job_idKargo_fkey" FOREIGN KEY ("idKargo") REFERENCES "KargoInfo"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
