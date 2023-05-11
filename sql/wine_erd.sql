-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "wine_quality" (
    "wine_type_id" INT   NOT NULL,
    "fixed_acidity" DEC   NOT NULL,
    "volatile_acidity" DEC   NOT NULL,
    "citric_acid" DEC   NOT NULL,
    "residual_sugar" DEC   NOT NULL,
    "chlorides" DEC   NOT NULL,
    "free_sulfur_dioxide" INT   NOT NULL,
    "total_sulfur_dioxide" INT   NOT NULL,
    "density" DEC   NOT NULL,
    "pH" DEC   NOT NULL,
    "sulphates" DEC   NOT NULL,
    "alcohol" DEC   NOT NULL,
    "quality" INT   NOT NULL
);

CREATE TABLE "wine" (
    "id" INT   NOT NULL,
    "wine_type" VARCHAR   NOT NULL,
    CONSTRAINT "pk_wine" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "wine" ADD CONSTRAINT "fk_wine_id" FOREIGN KEY("id")
REFERENCES "wine_quality" ("wine_type_id");

