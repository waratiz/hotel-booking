INSERT INTO rooms (room_number, room_type, price_per_night, status) VALUES
    ('101', 'Single', 1000.00, 'available'),
    ('102', 'Double', 1500.00, 'available'),
    ('103', 'Suite', 2500.00, 'available');
    
INSERT INTO customers (first_name, last_name, phone, email) VALUES
    ('Alice', 'Smith', '0812345678', 'a@example.com'),
    ('Bob', 'Johnson', '0812345679', 'b@example.com'),
    ('Charlie', 'Williams', '0812345680', 'c@example.com'),
    ('David', 'Brown', '0812345681', 'd@example.com'),
    ('Eve', 'Jones', '0812345682', 'e@example.com'),
    ('Frank', 'Garcia', '0812345683', 'f@example.com'),
    ('Grace', 'Martinez', '0812345684', 'g@example.com'),
    ('Hank', 'Rodriguez', '0812345685', 'h@example.com'),
    ('Ivy', 'Wilson', '0812345686', 'i@example.com'),
    ('Jack', 'Davis', '0812345687', 'j@example.com');
    
INSERT INTO bookings (customer_id, room_id, check_in_date, check_out_date, booking_status) VALUES
    (1, 1, '2024-11-10', '2024-11-12', 'confirmed'),
    (2, 2, '2024-11-11', '2024-11-13', 'confirmed'),
    (3, 3, '2024-11-12', '2024-11-14', 'confirmed'),
    (4, 1, '2024-11-13', '2024-11-15', 'pending'),
    (5, 2, '2024-11-14', '2024-11-16', 'pending'),
    (6, 3, '2024-11-15', '2024-11-17', 'confirmed'),
    (7, 1, '2024-11-16', '2024-11-18', 'cancelled'),
    (8, 2, '2024-11-17', '2024-11-19', 'confirmed'),
    (9, 3, '2024-11-18', '2024-11-20', 'pending'),
    (10, 1, '2024-11-19', '2024-11-21', 'confirmed');
    
INSERT INTO payments (booking_id, amount, payment_date, payment_status) VALUES
    (1, 2000.00, '2024-11-12', 'completed'),  
    (2, 3000.00, '2024-11-13', 'completed'),   
    (3, 5000.00, '2024-11-14', 'completed'),   
    (4, 2000.00, '2024-11-15', 'pending'),    
    (5, 3000.00, '2024-11-16', 'pending'),   
    (6, 5000.00, '2024-11-17', 'completed'),  
    (7, 2000.00, '2024-11-18', 'completed'),  
    (9, 5000.00, '2024-11-20', 'pending'),     
    (10, 2000.00, '2024-11-21', 'completed');  