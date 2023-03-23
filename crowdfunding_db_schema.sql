-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7YhJTg
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Campaign" (
    "cf_ID" int,   NULL,
    "contact_id" int,   NULL,
    "company_name" varchar(35)   NULL,
    "description" varchar(80)   NULL,
    "goal" numeric(10)   NULL,
    "pledged" numeric(50)   NULL,
    "outcome" varchar(12)   NULL,
    "backers_count" int   NULL,
    "country" varchar(2)   NULL,
    "currency" varchar(3)   NULL,
    "launched_date" date   NULL,
    "end_date" date   NULL,
    "category_id" varchar(5)   NULL,
    "subcategory_id" varchar(10)   NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_ID"
     )
);

CREATE TABLE "Category" (
    "category_id" varchar(5)   NULL,
    "category" varchar(35)   NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_ID" int   NOT NULL,
    "first_name" varchar(15)   NULL,
    "last_name" varchar(20)   NULL,
    "email" varchar(45)   NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_ID"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "category" varchar(35)   NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_ID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

