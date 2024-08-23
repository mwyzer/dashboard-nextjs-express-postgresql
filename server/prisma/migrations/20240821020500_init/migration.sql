/*
  Warnings:

  - The primary key for the `ExpenseByCategory` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `expenseByCategpry` on the `ExpenseByCategory` table. All the data in the column will be lost.
  - Added the required column `expenseByCategoryId` to the `ExpenseByCategory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `amount` to the `Expenses` table without a default value. This is not possible if the table is not empty.
  - Added the required column `timestamp` to the `Expenses` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ExpenseByCategory" DROP CONSTRAINT "ExpenseByCategory_pkey",
DROP COLUMN "expenseByCategpry",
ADD COLUMN     "expenseByCategoryId" TEXT NOT NULL,
ADD CONSTRAINT "ExpenseByCategory_pkey" PRIMARY KEY ("expenseByCategoryId");

-- AlterTable
ALTER TABLE "Expenses" ADD COLUMN     "amount" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "timestamp" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "PurchaseSummary" (
    "purchaseSummaryId" TEXT NOT NULL,
    "totalPurchased" DOUBLE PRECISION NOT NULL,
    "changePercentage" DOUBLE PRECISION,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "PurchaseSummary_pkey" PRIMARY KEY ("purchaseSummaryId")
);
