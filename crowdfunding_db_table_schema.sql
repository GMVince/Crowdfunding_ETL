CREATE TABLE "campaign" (
    "cf_ID" int   NULL,
    "contact_id" int   NULL,
    "company_name" varchar(100)   NULL,
    "description" varchar(80)   NULL,
    "goal" numeric(10)   NULL,
    "pledged" numeric(50)   NULL,
    "outcome" varchar(12)   NULL,
    "backers_count" int   NULL,
    "country" varchar(10)   NULL,
    "currency" varchar(10)   NULL,
    "launched_date" date   NULL,
    "end_date" date   NULL,
    "category_id" varchar(10)   NULL,
    "subcategory_id" varchar(10)   NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_ID"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(5)   NULL,
    "category" varchar(35)   NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NULL,
    "last_name" varchar(50)   NULL,
    "email" varchar(50)   NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "category" varchar(35)   NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

SELECT * FROM campaign
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts