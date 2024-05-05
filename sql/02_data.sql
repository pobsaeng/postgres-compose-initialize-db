-- Insert data into tb_permission
INSERT INTO tb_permission (permission_name) VALUES
    ('Read'),
    ('Write'),
    ('Delete');

-- Insert data into tb_role
INSERT INTO tb_role (role_name) VALUES
    ('Admin'),
    ('User');

-- Insert data into tb_role_in_permission
INSERT INTO tb_role_in_permission (role_id, permission_id) VALUES
    (1, 1),
    (1, 2),
    (2, 1);

-- Insert data into tb_user
INSERT INTO tb_user (username, password, role_id) VALUES
    ('admin', 'admin123', 1),
    ('user1', 'user123', 2),
    ('user2', 'user123', 2);

-- Insert data into tbl_product
    INSERT INTO tbl_product (name, image, price, store, type) VALUES
    ('Product 1', 'image1.jpg', 10.99, 100, 'Type A'),
    ('Product 2', 'image2.jpg', 20.50, 200, 'Type B'),
    ('Product 3', 'image3.jpg', 15.75, 150, 'Type A'),
    ('Product 4', 'image4.jpg', 8.99, 120, 'Type C'),
    ('Product 5', 'image5.jpg', 12.25, 180, 'Type B'),
    ('Product 6', 'image6.jpg', 18.00, 220, 'Type A'),
    ('Product 7', 'image7.jpg', 9.99, 130, 'Type C'),
    ('Product 8', 'image8.jpg', 23.75, 250, 'Type B'),
    ('Product 9', 'image9.jpg', 11.50, 170, 'Type A'),
    ('Product 10', 'image10.jpg', 16.99, 190, 'Type C');


-- Insert data into tbl_order
INSERT INTO tbl_order (customer_id, number, order_date, total_quantity, total_price, active, created_by, updated_by, created_at, updated_at) VALUES
    ('550e8400-e29b-41d4-a716-446655440000', 'ORD001', '2024-04-15', 10, 100.00, true, 'admin', 'admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('551e8400-e29b-41d4-a716-446655440001', 'ORD002', '2024-04-16', 15, 150.00, true, 'user1', 'user1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert data into tb_order_detail
INSERT INTO tb_order_detail (order_id, product_id, quantity, price, create_by, update_by, create_date, update_date) VALUES
    ('550e8400-e29b-41d4-a716-446655440000', '750e8400-e29b-41d4-a716-446655440002', 5, 50.00, 'admin', 'admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('550e8400-e29b-41d4-a716-446655440000', '751e8400-e29b-41d4-a716-446655440003', 5, 50.00, 'admin', 'admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('551e8400-e29b-41d4-a716-446655440001', '752e8400-e29b-41d4-a716-446655440004', 10, 100.00, 'user1', 'user1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
