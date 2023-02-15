/*
  Warnings:

  - You are about to alter the column `Num ODDO` on the `Souscriptions` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `mail_sent` on the `com_note` table. The data in that column could be lost. The data in that column will be cast from `Int` to `SmallInt`.

*/
-- AlterTable
ALTER TABLE `Souscriptions` MODIFY `Investisseur` VARCHAR(255) NOT NULL,
    MODIFY `Produit` VARCHAR(255) NOT NULL,
    MODIFY `Montant` VARCHAR(255) NOT NULL,
    MODIFY `DE_WAM` VARCHAR(255) NOT NULL,
    MODIFY `Attestation_ODDO` VARCHAR(255) NOT NULL,
    MODIFY `Cash_in` VARCHAR(255) NOT NULL,
    MODIFY `Fonds` VARCHAR(255) NOT NULL,
    MODIFY `Num ODDO` INTEGER NOT NULL,
    MODIFY `attestation` VARCHAR(255) NOT NULL;

-- AlterTable
ALTER TABLE `com_note` MODIFY `record_id` VARCHAR(255) NOT NULL,
    MODIFY `description` VARCHAR(255) NOT NULL,
    MODIFY `nom` VARCHAR(255) NOT NULL,
    MODIFY `adresse` MEDIUMTEXT NOT NULL,
    MODIFY `email_dist` VARCHAR(255) NOT NULL,
    MODIFY `periode` VARCHAR(255) NOT NULL,
    MODIFY `urlPdf` VARCHAR(255) NOT NULL,
    MODIFY `mail_sent` SMALLINT NOT NULL;

-- AlterTable
ALTER TABLE `distributeurs` MODIFY `Remarque` MEDIUMTEXT NOT NULL,
    MODIFY `Souscriptions` MEDIUMTEXT NOT NULL;
