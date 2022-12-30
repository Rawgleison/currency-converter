-- CreateTable
CREATE TABLE "user" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "trasaction" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "fromCurr" TEXT NOT NULL,
    "toCurr" TEXT NOT NULL,
    "amoun" REAL NOT NULL,
    "rate" REAL NOT NULL,
    "userId" TEXT NOT NULL,
    CONSTRAINT "trasaction_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");
