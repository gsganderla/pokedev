/*
  Warnings:

  - The `capture_rate` column on the `modelo` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `experience_growth` column on the `modelo` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "modelo" DROP COLUMN "capture_rate",
ADD COLUMN     "capture_rate" INTEGER,
DROP COLUMN "experience_growth",
ADD COLUMN     "experience_growth" INTEGER;
