/*
  Warnings:

  - The `is_legendary` column on the `modelo` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "modelo" DROP COLUMN "is_legendary",
ADD COLUMN     "is_legendary" INTEGER;
