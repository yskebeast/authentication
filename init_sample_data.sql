USE authentication;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT IGNORE INTO users (username, email, password_hash) VALUES
('admin', 'admin@example.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj5LvmOq6q9u'), -- password: admin123
('john_doe', 'john@example.com', '$2b$12$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'), -- password: password
('jane_smith', 'jane@example.com', '$2b$12$eImiTXuWVxfM37uY4JANjOkHqE.6RzQdFoFEGjp4q6BhDdQ1rA0eK'), -- password: secret123
('user1', 'user1@example.com', '$2b$12$4GkQjK0Z3wZxA8B9nE5Q1O.ZQjK0Z3wZxA8B9nE5Q1O.ZQjK0Z3wZ'), -- password: user123
('testuser', 'test@example.com', '$2b$12$5HpYnZ1X4yYxA8B9nE5Q1O.YQkK0Z3wZxA8B9nE5Q1O.YQkK0Z3wY'); -- password: test123

SELECT 'Sample data inserted successfully!' as message;
SELECT COUNT(*) as total_users FROM users;