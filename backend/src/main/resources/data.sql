-- =============================
-- SEED: Courses (15 courses)
-- =============================
INSERT INTO COURSE (COURSE_ID, COURSE_NAME, DURATION_MONTH, TRAINER) VALUES
(1,  'Java Full Stack Development',       6,  'Ramesh Kumar'),
(2,  'Python & Django Web Development',   4,  'Priya Sharma'),
(3,  'React & Node.js',                   5,  'Arjun Reddy'),
(4,  'Data Science & Machine Learning',   8,  'Dr. Ananya Iyer'),
(5,  'Cloud Computing with AWS',          3,  'Vikram Nair'),
(6,  'DevOps & Docker',                   4,  'Siddharth Rao'),
(7,  'Android App Development',           6,  'Meena Pillai'),
(8,  'UI/UX Design Fundamentals',         3,  'Sneha Joshi'),
(9,  'C & C++ Programming',               3,  'Dr. Suresh Babu'),
(10, 'Cybersecurity Essentials',          5,  'Arun Mehta'),
(11, 'SQL & Database Design',             2,  'Kavya Nandakumar'),
(12, 'Spring Boot & Microservices',       5,  'Ravi Shankar'),
(13, 'Artificial Intelligence & NLP',     7,  'Dr. Leela Krishnan'),
(14, 'Flutter & Dart Mobile Dev',         4,  'Harish Patel'),
(15, 'Blockchain Fundamentals',           3,  'Deepak Verma');

-- =============================
-- SEED: Registered Students
-- =============================
INSERT INTO COURSE_REGISTER (COURSE_NAME, EMAIL, NAME) VALUES
('Java Full Stack Development',     'rohit.v@example.com',     'Rohit Verma'),
('Python & Django Web Development', 'aisha.k@example.com',     'Aisha Khan'),
('React & Node.js',                 'sonu.m@example.com',      'Sonu Mishra'),
('Data Science & Machine Learning', 'preethi.r@example.com',   'Preethi Rajan'),
('Cloud Computing with AWS',        'imran.h@example.com',     'Imran Hussain'),
('Java Full Stack Development',     'divya.n@example.com',     'Divya Nair'),
('Spring Boot & Microservices',     'kartik.s@example.com',    'Kartik Singh'),
('SQL & Database Design',           'nancy.p@example.com',     'Nancy Philip'),
('Android App Development',         'raju.y@example.com',      'Raju Yadav'),
('UI/UX Design Fundamentals',       'simran.a@example.com',    'Simran Ahuja'),
('Cybersecurity Essentials',        'arjun.b@example.com',     'Arjun Bose'),
('Flutter & Dart Mobile Dev',       'nandini.g@example.com',   'Nandini Gupta');
