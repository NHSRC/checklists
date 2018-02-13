INSERT INTO assessment_tool_mode (name, short_name) VALUES ('Indicators', 'I');
INSERT INTO assessment_tool (name, assessment_tool_mode_id) VALUES ('Laqshya Indicators', (SELECT id from assessment_tool_mode WHERE name = 'Indicators'));
INSERT INTO department (name) VALUES ('NULL');
INSERT INTO checklist (name, department_id, assessment_tool_id, state_id) VALUES ('Laqshya Indicators',
                                                                                  (SELECT id from department WHERE name = 'NULL'),
                                                                                  (SELECT id from assessment_tool WHERE name = 'Laqshya Indicators'),
                                                                                  null);
INSERT INTO indicator_definition (name, numerator, denominator, formula) VALUES ()