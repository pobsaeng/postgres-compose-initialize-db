-- Create table tb_permission
CREATE TABLE IF NOT EXISTS tb_permission (
    id SERIAL PRIMARY KEY,
    permission_name VARCHAR(50)
);

-- Create table tb_role
CREATE TABLE IF NOT EXISTS tb_role (
    id SERIAL PRIMARY KEY,
    role_name VARCHAR(50)
);

-- Create table tb_role_in_permission
CREATE TABLE IF NOT EXISTS tb_role_in_permission (
    id SERIAL PRIMARY KEY,
    role_id INT,
    permission_id INT
);

-- Create table tb_user
CREATE TABLE IF NOT EXISTS tb_user (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    role_id INT
);

-- Create table tbl_product
CREATE TABLE IF NOT EXISTS tbl_product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    image VARCHAR(255),
    price DOUBLE PRECISION,
    store INT,
    type VARCHAR(255)
);

-- Create table tbl_order
CREATE TABLE IF NOT EXISTS tbl_order (
    id SERIAL PRIMARY KEY,
    customer_id UUID,
    number VARCHAR(20),
    order_date TIMESTAMP,
    order_cancel_date TIMESTAMP,
    total_quantity INT DEFAULT 0,
    total_price DECIMAL(19,2) DEFAULT 0.00,
    active BOOLEAN,
    created_by VARCHAR(50),
    updated_by VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Create table tb_order_detail
CREATE TABLE IF NOT EXISTS tb_order_detail (
    id SERIAL PRIMARY KEY,
    order_id UUID,
    product_id UUID,
    quantity INT DEFAULT NULL,
    price DECIMAL(19,2) DEFAULT 0.00,
    create_by VARCHAR(50),
    update_by VARCHAR(50),
    create_date TIMESTAMP,
    update_date TIMESTAMP
);
