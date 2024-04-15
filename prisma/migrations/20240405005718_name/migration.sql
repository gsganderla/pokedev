/*
  Warnings:

  - You are about to drop the column `classification` on the `modelo` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "modelo" DROP COLUMN "classification",
ADD COLUMN     "classfication" TEXT;
