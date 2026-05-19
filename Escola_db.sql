use escola;
CREATE TABLE cursos (
    idCurso 		INT PRIMARY KEY AUTO_INCREMENT,
    nomeCurso	 	VARCHAR(100) NOT NULL,	
    dataInicio		DATE,  				
    dataFim			DATE, 
    cargaHoraria	INT NOT NULL,           
    tipoCurso		VARCHAR(50) NOT NULL,     
    valorCurso		DECIMAL(10,2),  
    turno 		VARCHAR(50) ,
    idProfessor		INT,				

    FOREIGN KEY (idProfessor) REFERENCES professores(idProfessor)
);
#criando a tabela alunos
CREATE TABLE alunos (
	idAluno 		INT PRIMARY KEY AUTO_INCREMENT,
    nomeAluno	 	VARCHAR(100) NOT NULL,
    telefone 		VARCHAR(20),
    endereco 		VARCHAR(150),
    bairro			VARCHAR(80),
    cidade			VARCHAR(80),
    uf				VARCHAR(2),
    email 			VARCHAR(100),
	idCurso			INT,
    FOREIGN KEY (idCurso) REFERENCES cursos(idCurso)
);

insert into professores(nomeProfessor, telefone, email, especialidade) values
	('Alex Ventura', '21-9999-1001','alex.ventura@email.com', 'Frontend'),
    ('Andre Ferreira', '21-9999-1002','andre.ferreira@email.com', 'Banco de Dados'),
    ('Anthony Freitas', '21-9999-1003','anthony.freitas@email.com', 'Backend'),
    ('Ebenezer Nepomuceno', '21-9999-1004','ebenezer.nepomuceno@email.com', 'Redes'),
    ('Pedro Gabriel', '21-9999-1005','pedro.gabriel@email.com', 'Design');
    
    #selecionando todos os dados de professores e ordenando por especialidade em ordem descrescente
    select * from professores
		order by especialidade desc;
        
     #selecionando todos os dados de professores e ordenando por especialidade em ordem crescente       
        select * from professores
		order by especialidade asc;
        
ALTER TABLE alunos
ADD dataNascimento DATE;
    
INSERT INTO cursos
(nomeCurso, dataInicio, dataFim, cargaHoraria, tipoCurso, valorCurso, turno, idProfessor)
VALUES
('Programador Back-End', '2026-02-01', '2026-04-30', 180, 'Tecnologia', 0.00, 'Manhã', 1),
('Programador Front-End', '2026-02-01', '2026-04-30', 180, 'Tecnologia', 0.00, 'Tarde', 2),
('Operador de Computador', '2026-03-01', '2026-05-30', 160, 'Informática', 0.00, 'Noite', 3),
('Banco de Dados', '2026-04-01', '2026-06-30', 120, 'Tecnologia', 0.00, 'Manhã', 4);

INSERT INTO alunos
(nomeAluno, telefone, endereco, bairro, cidade, uf, email, idCurso, dataNascimento)
VALUES
('Adriano Rodrigues de Almeida', '21-9777-3001', 'Rua das Flores, 201', 'Tijuca', 'Rio de Janeiro', 'RJ', 'adriano.almeida@email.com', 2, '2005-02-14'),
('André Luiz Brandão Fanelli', '21-9777-3002', 'Rua do Sol, 202', 'Méier', 'Rio de Janeiro', 'RJ', 'andre.fanelli@email.com', 2, '2004-08-21'),
('Charles Lopes Eliziario', '21-9777-3003', 'Rua das Palmeiras, 203', 'Centro', 'Rio de Janeiro', 'RJ', 'charles.eliziario@email.com', 2, '2006-01-09'),
('Davi de Amorim Oliveira Cunha', '21-9777-3004', 'Rua Nova, 204', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'davi.cunha@email.com', 2, '2005-05-17'),
('Estefani Viana de Oliveira', '21-9777-3005', 'Rua da Alegria, 205', 'Maracanã', 'Rio de Janeiro', 'RJ', 'estefani.oliveira@email.com', 2, '2004-11-03'),
('Ezequias de Souza Ferreira', '21-9777-3006', 'Rua das Acácias, 206', 'Botafogo', 'Rio de Janeiro', 'RJ', 'ezequias.ferreira@email.com', 2, '2005-09-28'),
('Felipe Alves Da Conceição Santana', '21-9777-3007', 'Rua Azul, 207', 'Copacabana', 'Rio de Janeiro', 'RJ', 'felipe.santana@email.com', 2, '2006-03-12'),
('Gabriel da Fonseca Reis', '21-9777-3008', 'Rua Verde, 208', 'Madureira', 'Rio de Janeiro', 'RJ', 'gabriel.reis@email.com', 2, '2004-07-19'),
('Gabriel Mendes de Lemos', '21-9777-3009', 'Rua Projetada, 209', 'Bangu', 'Rio de Janeiro', 'RJ', 'gabriel.lemos@email.com', 2, '2005-12-01'),
('Gabriel Viana de Freitas Leão da Costa', '21-9777-3010', 'Rua das Laranjeiras, 210', 'Laranjeiras', 'Rio de Janeiro', 'RJ', 'gabriel.costa@email.com', 2, '2006-06-25'),
('Gustavo Felix Salles', '21-9777-3011', 'Rua do Comércio, 211', 'Campo Grande', 'Rio de Janeiro', 'RJ', 'gustavo.salles@email.com', 2, '2005-04-10'),
('Lucas Daniel Cataldo Siqueira', '21-9777-3012', 'Rua Principal, 212', 'Jacarepaguá', 'Rio de Janeiro', 'RJ', 'lucas.siqueira@email.com', 2, '2004-10-30'),
('Lucas Matias Cabral', '21-9777-3013', 'Rua X, 213', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'lucas.cabral@email.com', 2, '2005-01-22'),
('Marcos Davi Silveira da Silva', '21-9777-3014', 'Rua Santa Clara, 214', 'Copacabana', 'Rio de Janeiro', 'RJ', 'marcos.silva@email.com', 2, '2006-08-15'),
('Matheus Antônio dos Santos Silva', '21-9777-3015', 'Rua Esperança, 215', 'Realengo', 'Rio de Janeiro', 'RJ', 'matheus.silva@email.com', 2, '2004-12-07'),
('Patrícia Paola Maximiano da Silva', '21-9777-3016', 'Rua do Catete, 216', 'Catete', 'Rio de Janeiro', 'RJ', 'patricia.silva@email.com', 2, '2005-07-04'),
('Samuel Gomes Vieira do Nascimento', '21-9777-3017', 'Rua São Jorge, 217', 'Penha', 'Rio de Janeiro', 'RJ', 'samuel.nascimento@email.com', 2, '2006-02-26'),
('Victor Hugo Esteves Machado', '21-9777-3018', 'Rua das Oliveiras, 218', 'Engenho Novo', 'Rio de Janeiro', 'RJ', 'victor.machado@email.com', 2, '2005-10-11'),
('VICTOR PEREIRA', '21-9777-3019', 'Rua das Amendoeiras, 219', 'Ramos', 'Rio de Janeiro', 'RJ', 'victor.pereira@email.com', 2, '2004-06-18'),
('Vinício da Silva Gomes', '21-9777-3020', 'Rua dos Ipês, 220', 'Irajá', 'Rio de Janeiro', 'RJ', 'vinicio.gomes@email.com', 2, '2005-03-29');


#Renomeando titulos 
SELECT
	nomeAluno,
	dataNascimento,
	TIMESTAMPDIFF(year, dataNascimento, CURDATE()) AS IDADE_ALUNO, bairro AS BAIRRO_ALUNO
FROM alunos
ORDER BY bairro, nomeAluno;
