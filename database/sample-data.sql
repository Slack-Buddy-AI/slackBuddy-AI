INSERT INTO roles (name, description) VALUES
 ('Software Engineer', 'Development team'),
 ('HR Manager', 'Human resources'),
 ('QA Engineer', 'Testing team');

INSERT INTO employees (full_name, email, role_id, department, join_date, is_admin) VALUES
 ('Priya HR', 'hr@example.com', 2, 'HR', '2024-01-10', TRUE),
 ('Ravi Kumar', 'ravi@example.com', 1, 'Engineering', CURDATE(), FALSE);

INSERT INTO checklists (name, role_id) VALUES ('Software Engineer Onboarding', 1);

INSERT INTO checklist_items (checklist_id, title, description, due_in_days, sort_order) VALUES
 (1, 'Read the Employee Handbook', 'Go through the handbook in the knowledge base', 2, 1),
 (1, 'Set up laptop and accounts', 'Follow the IT setup guide', 3, 2),
 (1, 'Join team Slack channels', 'Join #general, #engineering, #help-it', 1, 3),
 (1, 'Meet your buddy and manager', 'Schedule a 30-minute intro', 5, 4);
