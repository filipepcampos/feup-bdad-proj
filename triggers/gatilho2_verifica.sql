PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (15, "Github Hacker Cup", "Ipsum Lorem", strftime('%s',"2019-05-07 15:00:00"), strftime('%s',"2019-05-07 18:00:00"), "$20000");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (16, "FEUP Hacker Cup", "Ipsum Lorem", strftime('%s',"2021-05-07 15:00:00"), strftime('%s',"2021-05-07 18:00:00"), "$2000");
INSERT INTO Competicao(id, titulo, descricao, datetimeInicio, datetimeFim, premio)
    VALUES (17, "Unrated FEUP Competition", "[Description goes here]", strftime('%s',"2021-03-27 07:00:00"), strftime('%s',"2021-03-27 09:00:00"), NULL);

INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (8, "Problema 0", "Problema 0", 0);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (9, "Sudoku", "Create a sudoku solver", 5);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (10, "Linked list", "Implement a linked list", 8);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (11, "Fibonacci sequence", "Implement a method that calculates the fibonacci sequence", 2);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (12, "Problema 4", "Problema 4", 4);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (13, "Implement the serial port", "The serial port is...", 10);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (14, "Problem 6", "Problem 6", 6);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (15, "Biology is cool", "Biology related programming", 7);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (16, "Square root", "Implement a method that calculates the square root of a number", 1);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (17, "Problema 4", "Problema 4", 4);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (18, "Implement the serial port", "The serial port is...", 10);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (19, "Problem 10", "Hard problem", 10);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (20, "Biology is cool", "Biology related programming", 7);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (21, "Square root", "Implement a method that calculates the square root of a number", 1);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (22, "Convert base", "Convert binary to hex and to decimal", 1);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (23, "Implement the serial port", "The serial port is...", 10);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (24, "Problem 6", "Problem 6", 6);
INSERT INTO Problema(id, titulo, descricao, dificuldade) VALUES (25, "Biology is cool", "Biology related programming", 7);

SELECT * FROM Competicao
WHERE id IN (15, 16, 17);

INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (8, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (9, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (10, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (11, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (12, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (13, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (14, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (16, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (17, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (18, 15);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (19, 15);

INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (20, 16);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (21, 16);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (22, 16);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (23, 16);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (24, 16);
INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (25, 16);

INSERT INTO ProblemaCompeticao(idProblema, idCompeticao) VALUES (20, 17);

SELECT * FROM Competicao
WHERE id IN (15, 16, 17);

ROLLBACK;