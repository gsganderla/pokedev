/*
  Warnings:

  - You are about to drop the `Ability` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Ability";

-- CreateTable
CREATE TABLE "modelo" (
    "id" SERIAL NOT NULL,
    "abilities" TEXT NOT NULL,
    "against_bug" DOUBLE PRECISION,
    "against_dark" DOUBLE PRECISION,
    "against_dragon" DOUBLE PRECISION,
    "against_electric" DOUBLE PRECISION,
    "against_fairy" DOUBLE PRECISION,
    "against_fight" DOUBLE PRECISION,
    "against_fire" DOUBLE PRECISION,
    "against_flying" DOUBLE PRECISION,
    "against_ghost" DOUBLE PRECISION,
    "against_grass" DOUBLE PRECISION,
    "against_ground" DOUBLE PRECISION,
    "against_ice" DOUBLE PRECISION,
    "against_normal" DOUBLE PRECISION,
    "against_poison" DOUBLE PRECISION,
    "against_psychic" DOUBLE PRECISION,
    "against_rock" DOUBLE PRECISION,
    "against_steel" DOUBLE PRECISION,
    "against_water" DOUBLE PRECISION,
    "attack" INTEGER,
    "base_egg_steps" INTEGER,
    "base_happiness" INTEGER,
    "base_total" INTEGER,
    "capture_rate" TEXT,
    "classification" TEXT,
    "defense" INTEGER,
    "experience_growth" TEXT,
    "height_m" DOUBLE PRECISION,
    "hp" INTEGER,
    "japanese_name" TEXT,
    "name" TEXT NOT NULL,
    "percentage_male" DOUBLE PRECISION,
    "pokedex_number" INTEGER,
    "sp_attack" INTEGER,
    "sp_defense" INTEGER,
    "speed" INTEGER,
    "type1" TEXT,
    "type2" TEXT,
    "weight_kg" DOUBLE PRECISION,
    "generation" INTEGER,
    "is_legendary" BOOLEAN,

    CONSTRAINT "modelo_pkey" PRIMARY KEY ("id")
);
