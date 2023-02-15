/*
  Warnings:

  - Added the required column `Attestation_ODDO` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Cash_in` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Date BS` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Date d'effet` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Fonds` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Id_dist` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Last Modified` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Num ODDO` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `attestation` to the `Souscriptions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Souscriptions` ADD COLUMN `Attestation_ODDO` VARCHAR(191) NOT NULL,
    ADD COLUMN `Cash_in` VARCHAR(191) NOT NULL,
    ADD COLUMN `Date BS` DATETIME(3) NOT NULL,
    ADD COLUMN `Date d'effet` VARCHAR(191) NOT NULL,
    ADD COLUMN `Fonds` VARCHAR(191) NOT NULL,
    ADD COLUMN `Id_dist` INTEGER NOT NULL,
    ADD COLUMN `Last Modified` DATETIME(3) NOT NULL,
    ADD COLUMN `Num ODDO` VARCHAR(191) NOT NULL,
    ADD COLUMN `attestation` VARCHAR(191) NOT NULL;
