/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `Post`;

-- DropTable
DROP TABLE `User`;

-- CreateTable
CREATE TABLE `distributeurs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_dist` INTEGER NOT NULL,
    `Raison_sociale` VARCHAR(255) NOT NULL,
    `Remarque` VARCHAR(191) NOT NULL,
    `Souscriptions` VARCHAR(191) NOT NULL,
    `Pdf_convention` VARCHAR(255) NOT NULL,
    `email_signataire` VARCHAR(255) NOT NULL,
    `email_compta` VARCHAR(255) NOT NULL,
    `civ` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `capital` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `rcsnb` VARCHAR(255) NOT NULL,
    `rcsof` VARCHAR(255) NOT NULL,
    `oriasNb` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NOT NULL,
    `email_notification` VARCHAR(255) NOT NULL,
    `IBAN` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Souscriptions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `Investisseur` VARCHAR(191) NOT NULL,
    `Produit` VARCHAR(191) NOT NULL,
    `Montant` VARCHAR(191) NOT NULL,
    `Droit d'entrée` VARCHAR(191) NOT NULL,
    `DE_WAM` VARCHAR(191) NOT NULL,
    `Mode Paiement` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `com_note` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `note_id` INTEGER NOT NULL,
    `record_id` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `id_dist` INTEGER NOT NULL,
    `nom` VARCHAR(191) NOT NULL,
    `adresse` VARCHAR(191) NOT NULL,
    `email_dist` VARCHAR(191) NOT NULL,
    `periode` VARCHAR(191) NOT NULL,
    `note_date` DATETIME(3) NOT NULL,
    `total` DOUBLE NOT NULL,
    `urlPdf` VARCHAR(191) NOT NULL,
    `mail_sent` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
