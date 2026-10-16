create table public.usuario(
  id_usuario serial primary key,
  nome                varchar(255) not null,
  email               varchar(255) null,
  senha_hash          varchar(255),
  data_nascimento     date,
  tipo_perfil         varchar(255),
  data_cadastro       timestamp
);

create table public.jornalista(
  id_jornalista serial primary key,
  FK_usuario                 varchar(255) not null,
  registro_profissional      varchar(255) null,
  biografia                  character varying(255),
  especialidade              varchar(255) null
);

create table public.comentario(
  id_noticia serial primary key,
  registro_profissional   varchar(255) not null,
  biografia               varchar(255) null,
  entrevista              character varying(255),
  especialidade           varchar(255) null
  fk_noticia              int
);
