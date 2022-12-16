rollback;
begin;

-- cadastro de pessoa fisica    
  insert into pessoa (id,nome,telefone,celular,estado,cidade,logradouro,numero) 
              values (1,'Maria da silva','513322-4322','51992303455','RS','Porto Alegre','Centro',35);

  insert into pessoa_fisica (id,id_pessoa,cpf,dt_nascimento) 
                     values (1,1,'27326398320','1993-05-23'); 

-- cadastro de pessoa juridica
  insert into pessoa (id,nome,telefone,celular,estado,cidade,logradouro,numero) 
              values (2, 'Maria da silva','513322-4322','51992303455','RS','Porto Alegre','Centro',35);

  insert into pessoa_juridica (id,id_pessoa,nome_fantasia,cnpj)
                       values (1,2,'Lar Santo Antonio','999999999999999'); 

  -- cadastro de classificação
  insert into classificacao (id,descricao) values (1,'Agasalho');
  insert into classificacao (id,descricao) values (2,'Calçado');
  insert into classificacao (id,descricao) values (3,'Descarte Medicamento');
  insert into classificacao (id,descricao) values (4,'Alimento não Perecivel');
  insert into classificacao (id,descricao) values (5,'PET');
  insert into classificacao (id,descricao) values (6,'Outros');

  -- cadatro de produto
  insert into produto (id,descricao) values (1,'Bermuda');
  insert into produto (id,descricao) values (2,'Camiseta');
  insert into produto (id,descricao) values (3,'Tenis');
  insert into produto (id,descricao) values (4,'Bermuda');
  insert into produto (id,descricao) values (5,'Azeite');
  insert into produto (id,descricao) values (6,'Paracetamol');
                
  -- cadastro de status
  insert into status (id,descricao) values (1,'Horario Comercial');
  insert into status (id,descricao) values (2,'Disponivel Retirada');
  insert into status (id,descricao) values (3,'Ocupado');
  insert into status (id,descricao) values (4,'Indisponivel');

  --cadastro de usuário
  insert into usuario (id,nome_user,id_pessoa,password) values (1,'admin',1,'123');

  --cadastro de periodo
  insert into periodo (id,descricao) values (1,'Segunda-Feira');   
  insert into periodo (id,descricao) values (2,'Terça-Feira');   
  insert into periodo (id,descricao) values (3,'Quarta-Feira');   
  insert into periodo (id,descricao) values (4,'Quinta-Feira');   
  insert into periodo (id,descricao) values (5,'Sexta-Feira');   
  insert into periodo (id,descricao) values (6,'Sabado');   
  insert into periodo (id,descricao) values (7,'Domingo');

  --cadastro de turno
  insert into turno (id,descricao) values (1,'Manhã');   
  insert into turno (id,descricao) values (2,'Tarde');   
  insert into turno (id,descricao) values (3,'Comercia');   

  -- cadatro de doacao
  insert into doar  (id,id_produto,id_classificacao,id_usuario,id_status,estado,cidade,logradouro,numero,dt_inicio,dt_final,localizacao_geo,lat,lng,ent_nome,ent_desc)
            values  (1 ,1, 4, 1 ,1  ,'RS' , 'Porto Alegre', 'Av. Antônio de Carvalho' , 105,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.0647293,-51.1548803,'Lar Santo Antônio dos Excepcionais','http://www.larsantoantonio.com.br/'),
                    (2 ,1, 1, 1 ,1  ,'RS' , 'Porto Alegre', 'Av. da Azenha' , 366,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.0467971,-51.2155775,'Instituto Espírita Dias da Cruz','https://iedc.org.br/'),
                    (3 ,1, 4, 1 ,1  ,'RS' , 'Porto Alegre', 'R. Curupaiti' , 956,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.0873758,-51.241586,'INAMEX','https://inamex.com.br/'),
                    (4 ,1, 1, 1 ,1  ,'RS' , 'Porto Alegre', 'Rua Frederico Etzberger' , 635,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.0896321,-51.2198617,'SPAAN','https://spaan.org.br/'),
                    (5 ,1, 4, 1 ,1  ,'RS' , 'Porto Alegre', 'Av. Padre Cacique' , 1178,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.0684012,-51.2390036,'Asilo Padre Cacique','https://asilopadrecacique.com.br/'),
                    (6 ,1, 4, 1 ,1  ,'RS' , 'Porto Alegre', 'Av. Arnaldo Bohrer' , 826,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.082268,-51.2010436,'Cantinho Vó Georgina','https://www.facebook.com/CantinhoVoGeorgina'),
                    (7 ,1, 4, 1 ,1  ,'RS' , 'Porto Alegre', 'R. da República' , 801,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.0408311,-51.2301922,'Pão dos Pobres','https://www.paodospobres.org.br/'),
                    (8 ,1, 6, 1 ,1  ,'RS' , 'Porto Alegre', 'Av. Ipiranga' , 1155,'2022-10-01','2022-10-15', '({position: {lat: -34, lng: 151}, map: map})',-30.0485867,-51.2191408,'Mensageiro da Caridade','https://mensageirodacaridade.org/');

commit;