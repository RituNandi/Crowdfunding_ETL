CREATE TABLE contacts (
    contact_id INT   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    email VARCHAR(50)   NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE category (
    category_id VARCHAR(4)   NOT NULL,
    category VARCHAR(30)   NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(8)   NOT NULL,
    subcategory VARCHAR(30)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR(50)   NOT NULL,
    description VARCHAR(100)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(30)   NOT NULL,
    backers_count INT   NOT NULL,
    country CHAR(2)   NOT NULL,
    currency CHAR(3)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(4)   NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id VARCHAR(8)   NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    PRIMARY KEY (cf_id)
);


