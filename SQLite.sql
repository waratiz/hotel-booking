
CREATE TABLE rooms (
    room_id INTEGER PRIMARY KEY AUTOINCREMENT,
    room_number TEXT NOT NULL,
    room_type TEXT,
    price_per_night REAL NOT NULL,
    status TEXT DEFAULT 'available' CHECK(status IN ('available', 'booked'))
);


CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone TEXT,
    email TEXT UNIQUE
);


CREATE TABLE bookings (
    booking_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    room_id INTEGER NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    booking_status TEXT DEFAULT 'pending' CHECK(booking_status IN ('pending', 'confirmed', 'cancelled')),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id) ON DELETE SET NULL
);


CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id INTEGER UNIQUE, 
    amount REAL NOT NULL,
    payment_date DATE NOT NULL,
    payment_status TEXT DEFAULT 'pending' CHECK(payment_status IN ('completed', 'pending')),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id) ON DELETE CASCADE
);
