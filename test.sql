CREATE TABLE library (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    isbn BIGINT,
    subject VARCHAR(255),
    publisher VARCHAR(255),
    edition INT,
    type VARCHAR(100),
    bundle_name VARCHAR(255)
);
