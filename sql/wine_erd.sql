-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "wine" (
    "wine_id" INT   NOT NULL,
    "wine_type_id" INT   NOT NULL,
    "fixed_acidity" DEC   NOT NULL,
    "volatile_acidity" DEC   NOT NULL,
    "citric_acid" DEC   NOT NULL,
    "residual_sugar" DEC   NOT NULL,
    "chlorides" DEC   NOT NULL,
    "free_sulfur_dioxide" INT   NOT NULL,
    "total_sulfure_dioxide" INT   NOT NULL,
    "density" DEC   NOT NULL,
    "ph" DEC   NOT NULL,
    "sulphates" DEC   NOT NULL,
    "alcohol" DEC   NOT NULL,
    "quality" INT   NOT NULL,
    CONSTRAINT "pk_wine" PRIMARY KEY (
        "wine_id"
     )
);

CREATE TABLE "wine_type" (
    "wine_type_id" INT   NOT NULL,
    "wine_type" VARCHAR   NOT NULL,
    CONSTRAINT "pk_wine_type" PRIMARY KEY (
        "wine_type_id"
     )
);

ALTER TABLE "wine" ADD CONSTRAINT "fk_wine_wine_type_id" FOREIGN KEY("wine_type_id")
REFERENCES "wine_type" ("wine_type_id");

