USE [UnimedDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cidade]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](100) NOT NULL,
	[uf] [nvarchar](2) NOT NULL,
	[ativo] [bit] NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_cidade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_consulta]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_consulta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo_estabelecimento] [int] NOT NULL,
	[dt_atendimento] [datetime2](7) NOT NULL,
	[status] [int] NOT NULL,
	[id_paciente] [int] NOT NULL,
	[id_profissional] [int] NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_consulta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_convenio]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_convenio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](100) NOT NULL,
	[ativo] [bit] NOT NULL,
	[validade] [datetime2](7) NOT NULL,
	[tipo_abrangencia] [int] NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_convenio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_endereco]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_endereco](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[logradouro] [nvarchar](100) NOT NULL,
	[bairro] [nvarchar](50) NOT NULL,
	[numero] [int] NOT NULL,
	[id_cidade] [int] NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_endereco] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_especialidade]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_especialidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_especialidade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_paciente]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_paciente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](100) NOT NULL,
	[dt_nascimento] [datetime2](7) NOT NULL,
	[cpf] [nvarchar](11) NOT NULL,
	[id_endereco] [int] NOT NULL,
	[id_convenio] [int] NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_paciente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_profissional]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_profissional](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](100) NOT NULL,
	[documento] [nvarchar](50) NOT NULL,
	[ativo] [bit] NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_profissional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_profissional_especialidade]    Script Date: 28/05/2021 00:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_profissional_especialidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_profissional] [int] NOT NULL,
	[id_especialidade] [int] NOT NULL,
	[ativo] [bit] NOT NULL,
	[criado_em] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tb_profissional_especialidade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210222164146_UnimedDb', N'6.0.0-preview.1.21102.2')
GO
SET IDENTITY_INSERT [dbo].[tb_cidade] ON 

INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (1, N'Adamantina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (2, N'Adolfo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (3, N'Aguaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (4, N'Águas da Prata', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (5, N'Águas de Lindóia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (6, N'Águas de Santa Bárbara', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (7, N'Águas de São Pedro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (8, N'Agudos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (9, N'Alambari', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (10, N'Alfredo Marcondes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (11, N'Altair', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (12, N'Altinópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (13, N'Alto Alegre', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (14, N'Alumínio', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (15, N'Álvares Florence', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (16, N'Álvares Machado', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (17, N'Álvaro de Carvalho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (18, N'Alvinlândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (19, N'Americana', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (20, N'Américo Brasiliense', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (21, N'Américo de Campos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (22, N'Amparo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (23, N'Analândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (24, N'Andradina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (25, N'Angatuba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (26, N'Anhembi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (27, N'Anhumas', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (28, N'Aparecida', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (29, N'Aparecida d''Oeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (30, N'Apiaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (31, N'Araçariguama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (32, N'Araçatuba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (33, N'Araçoiaba da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (34, N'Aramina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (35, N'Arandu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (36, N'Arapeí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (37, N'Araraquara', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (38, N'Araras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (39, N'Arco-Íris', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (40, N'Arealva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (41, N'Areias', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (42, N'Areiópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (43, N'Ariranha', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (44, N'Artur Nogueira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (45, N'Arujá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (46, N'Aspásia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (47, N'Assis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (48, N'Atibaia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (49, N'Auriflama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (50, N'Avaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (51, N'Avanhandava', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (52, N'Avaré', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (53, N'Bady Bassitt', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (54, N'Balbinos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (55, N'Bálsamo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (56, N'Bananal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (57, N'Barão de Antonina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (58, N'Barbosa', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (59, N'Bariri', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (60, N'Barra Bonita', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (61, N'Barra do Chapéu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (62, N'Barra do Turvo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (63, N'Barretos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (64, N'Barrinha', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (65, N'Barueri', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (66, N'Bastos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (67, N'Batatais', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (68, N'Bauru', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (69, N'Bebedouro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (70, N'Bento de Abreu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (71, N'Bernardino de Campos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (72, N'Bertioga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (73, N'Bilac', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (74, N'Birigui', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (75, N'Biritiba-Mirim', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (76, N'Boa Esperança do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (77, N'Bocaina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (78, N'Bofete', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (79, N'Boituva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (80, N'Bom Jesus dos Perdões', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (81, N'Bom Sucesso de Itararé', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (82, N'Borá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (83, N'Boracéia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (84, N'Borborema', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (85, N'Borebi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (86, N'Botucatu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (87, N'Bragança Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (88, N'Braúna', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (89, N'Brejo Alegre', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (90, N'Brodowski', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (91, N'Brotas', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (92, N'Buri', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (93, N'Buritama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (94, N'Buritizal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (95, N'Cabrália Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (96, N'Cabreúva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (97, N'Caçapava', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (98, N'Cachoeira Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (99, N'Caconde', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (100, N'Cafelândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (101, N'Caiabu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (102, N'Caieiras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (103, N'Caiuá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (104, N'Cajamar', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (105, N'Cajati', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (106, N'Cajobi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (107, N'Cajuru', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (108, N'Campina do Monte Alegre', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (109, N'Campinas', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (110, N'Campo Limpo Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (111, N'Campos do Jordão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (112, N'Campos Novos Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (113, N'Cananéia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (114, N'Canas', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (115, N'Cândido Mota', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (116, N'Cândido Rodrigues', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (117, N'Canitar', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (118, N'Capão Bonito', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (119, N'Capela do Alto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (120, N'Capivari', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (121, N'Caraguatatuba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (122, N'Carapicuíba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (123, N'Cardoso', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (124, N'Casa Branca', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (125, N'Cássia dos Coqueiros', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (126, N'Castilho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (127, N'Catanduva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (128, N'Catiguá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (129, N'Cedral', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (130, N'Cerqueira César', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (131, N'Cerquilho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (132, N'Cesário Lange', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (133, N'Charqueada', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (134, N'Chavantes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (135, N'Clementina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (136, N'Colina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (137, N'Colômbia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (138, N'Conchal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (139, N'Conchas', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (140, N'Cordeirópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (141, N'Coroados', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (142, N'Coronel Macedo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (143, N'Corumbataí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (144, N'Cosmópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (145, N'Cosmorama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (146, N'Cotia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (147, N'Cravinhos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (148, N'Cristais Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (149, N'Cruzália', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (150, N'Cruzeiro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (151, N'Cubatão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (152, N'Cunha', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (153, N'Descalvado', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (154, N'Diadema', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (155, N'Dirce Reis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (156, N'Divinolândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (157, N'Dobrada', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (158, N'Dois Córregos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (159, N'Dolcinópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (160, N'Dourado', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (161, N'Dracena', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (162, N'Duartina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (163, N'Dumont', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (164, N'Echaporã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (165, N'Eldorado', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (166, N'Elias Fausto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (167, N'Elisiário', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (168, N'Embaúba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (169, N'Embu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (170, N'Embu-Guaçu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (171, N'Emilianópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (172, N'Engenheiro Coelho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (173, N'Espírito Santo do Pinhal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (174, N'Espírito Santo do Turvo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (175, N'Estiva Gerbi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (176, N'Estrela d''Oeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (177, N'Estrela do Norte', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (178, N'Euclides da Cunha Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (179, N'Fartura', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (180, N'Fernando Prestes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (181, N'Fernandópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (182, N'Fernão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (183, N'Ferraz de Vasconcelos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (184, N'Flora Rica', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (185, N'Floreal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (186, N'Florínia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (187, N'Flórida Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (188, N'Franca', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (189, N'Francisco Morato', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (190, N'Franco da Rocha', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (191, N'Gabriel Monteiro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (192, N'Gália', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (193, N'Garça', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (194, N'Gastão Vidigal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (195, N'Gavião Peixoto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (196, N'General Salgado', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (197, N'Getulina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (198, N'Glicério', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (199, N'Guaiçara', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (200, N'Guaimbê', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (201, N'Guaíra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (202, N'Guapiaçu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (203, N'Guapiara', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (204, N'Guará', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (205, N'Guaraçaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (206, N'Guaraci', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (207, N'Guarani d''Oeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (208, N'Guarantã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (209, N'Guararapes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (210, N'Guararema', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (211, N'Guaratinguetá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (212, N'Guareí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (213, N'Guariba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (214, N'Guarujá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (215, N'Guarulhos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (216, N'Guatapará', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (217, N'Guzolândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (218, N'Herculândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (219, N'Holambra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (220, N'Hortolândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (221, N'Iacanga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (222, N'Iacri', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (223, N'Iaras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (224, N'Ibaté', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (225, N'Ibirá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (226, N'Ibirarema', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (227, N'Ibitinga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (228, N'Ibiúna', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (229, N'Icém', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (230, N'Iepê', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (231, N'Igaraçu do Tietê', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (232, N'Igarapava', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (233, N'Igaratá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (234, N'Iguape', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (235, N'Ilha Comprida', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (236, N'Ilha Solteira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (237, N'Ilhabela', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (238, N'Indaiatuba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (239, N'Indiana', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (240, N'Indiaporã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (241, N'Inúbia Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (242, N'Ipauçu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (243, N'Iperó', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (244, N'Ipeúna', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (245, N'Ipiguá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (246, N'Iporanga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (247, N'Ipuã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (248, N'Iracemápolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (249, N'Irapuã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (250, N'Irapuru', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (251, N'Itaberá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (252, N'Itaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (253, N'Itajobi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (254, N'Itaju', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (255, N'Itanhaém', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (256, N'Itaóca', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (257, N'Itapecerica da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (258, N'Itapetininga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (259, N'Itapeva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (260, N'Itapevi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (261, N'Itapira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (262, N'Itapirapuã Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (263, N'Itápolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (264, N'Itaporanga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (265, N'Itapuí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (266, N'Itapura', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (267, N'Itaquaquecetuba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (268, N'Itararé', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (269, N'Itariri', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (270, N'Itatiba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (271, N'Itatinga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (272, N'Itirapina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (273, N'Itirapuã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (274, N'Itobi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (275, N'Itu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (276, N'Itupeva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (277, N'Ituverava', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (278, N'Jaborandi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (279, N'Jaboticabal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (280, N'Jacareí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (281, N'Jaci', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (282, N'Jacupiranga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (283, N'Jaguariúna', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (284, N'Jales', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (285, N'Jambeiro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (286, N'Jandira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (287, N'Jardinópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (288, N'Jarinu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (289, N'Jaú', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (290, N'Jeriquara', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (291, N'Joanópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (292, N'João Ramalho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (293, N'José Bonifácio', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (294, N'Júlio Mesquita', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (295, N'Jumirim', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (296, N'Jundiaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (297, N'Junqueirópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (298, N'Juquiá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (299, N'Juquitiba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (300, N'Lagoinha', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (301, N'Laranjal Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (302, N'Lavínia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (303, N'Lavrinhas', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (304, N'Leme', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (305, N'Lençóis Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (306, N'Limeira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (307, N'Lindóia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (308, N'Lins', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (309, N'Lorena', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (310, N'Lourdes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (311, N'Louveira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (312, N'Lucélia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (313, N'Lucianópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (314, N'Luís Antônio', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (315, N'Luiziânia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (316, N'Lupércio', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (317, N'Lutécia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (318, N'Macatuba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (319, N'Macaubal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (320, N'Macedônia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (321, N'Magda', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (322, N'Mairinque', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (323, N'Mairiporã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (324, N'Manduri', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (325, N'Marabá Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (326, N'Maracaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (327, N'Marapoama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (328, N'Mariápolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (329, N'Marília', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (330, N'Marinópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (331, N'Martinópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (332, N'Matão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (333, N'Mauá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (334, N'Mendonça', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (335, N'Meridiano', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (336, N'Mesópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (337, N'Miguelópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (338, N'Mineiros do Tietê', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (339, N'Mira Estrela', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (340, N'Miracatu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (341, N'Mirandópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (342, N'Mirante do Paranapanema', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (343, N'Mirassol', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (344, N'Mirassolândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (345, N'Mococa', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (346, N'Mogi das Cruzes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (347, N'Mogi Guaçu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (348, N'Mogi-Mirim', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (349, N'Mombuca', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (350, N'Monções', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (351, N'Mongaguá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (352, N'Monte Alegre do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (353, N'Monte Alto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (354, N'Monte Aprazível', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (355, N'Monte Azul Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (356, N'Monte Castelo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (357, N'Monte Mor', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (358, N'Monteiro Lobato', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (359, N'Morro Agudo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (360, N'Morungaba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (361, N'Motuca', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (362, N'Murutinga do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (363, N'Nantes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (364, N'Narandiba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (365, N'Natividade da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (366, N'Nazaré Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (367, N'Neves Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (368, N'Nhandeara', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (369, N'Nipoã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (370, N'Nova Aliança', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (371, N'Nova Campina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (372, N'Nova Canaã Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (373, N'Nova Castilho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (374, N'Nova Europa', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (375, N'Nova Granada', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (376, N'Nova Guataporanga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (377, N'Nova Independência', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (378, N'Nova Luzitânia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (379, N'Nova Odessa', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (380, N'Novais', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (381, N'Novo Horizonte', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (382, N'Nuporanga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (383, N'Ocauçu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (384, N'Óleo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (385, N'Olímpia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (386, N'Onda Verde', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (387, N'Oriente', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (388, N'Orindiúva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (389, N'Orlândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (390, N'Osasco', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (391, N'Oscar Bressane', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (392, N'Osvaldo Cruz', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (393, N'Ourinhos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (394, N'Ouro Verde', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (395, N'Ouroeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (396, N'Pacaembu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (397, N'Palestina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (398, N'Palmares Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (399, N'Palmeira d''Oeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (400, N'Palmital', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (401, N'Panorama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (402, N'Paraguaçu Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (403, N'Paraibuna', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (404, N'Paraíso', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (405, N'Paranapanema', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (406, N'Paranapuã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (407, N'Parapuã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (408, N'Pardinho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (409, N'Pariquera-Açu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (410, N'Parisi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (411, N'Patrocínio Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (412, N'Paulicéia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (413, N'Paulínia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (414, N'Paulistânia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (415, N'Paulo de Faria', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (416, N'Pederneiras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (417, N'Pedra Bela', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (418, N'Pedranópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (419, N'Pedregulho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (420, N'Pedreira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (421, N'Pedrinhas Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (422, N'Pedro de Toledo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (423, N'Penápolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (424, N'Pereira Barreto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (425, N'Pereiras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (426, N'Peruíbe', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (427, N'Piacatu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (428, N'Piedade', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (429, N'Pilar do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (430, N'Pindamonhangaba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (431, N'Pindorama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (432, N'Pinhalzinho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (433, N'Piquerobi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (434, N'Piquete', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (435, N'Piracaia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (436, N'Piracicaba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (437, N'Piraju', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (438, N'Pirajuí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (439, N'Pirangi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (440, N'Pirapora do Bom Jesus', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (441, N'Pirapozinho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (442, N'Pirassununga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (443, N'Piratininga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (444, N'Pitangueiras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (445, N'Planalto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (446, N'Platina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (447, N'Poá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (448, N'Poloni', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (449, N'Pompéia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (450, N'Pongaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (451, N'Pontal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (452, N'Pontalinda', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (453, N'Pontes Gestal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (454, N'Populina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (455, N'Porangaba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (456, N'Porto Feliz', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (457, N'Porto Ferreira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (458, N'Potim', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (459, N'Potirendaba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (460, N'Pracinha', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (461, N'Pradópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (462, N'Praia Grande', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (463, N'Pratânia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (464, N'Presidente Alves', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (465, N'Presidente Bernardes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (466, N'Presidente Epitácio', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (467, N'Presidente Prudente', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (468, N'Presidente Venceslau', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (469, N'Promissão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (470, N'Quadra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (471, N'Quatá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (472, N'Queiroz', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (473, N'Queluz', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (474, N'Quintana', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (475, N'Rafard', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (476, N'Rancharia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (477, N'Redenção da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (478, N'Regente Feijó', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (479, N'Reginópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (480, N'Registro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (481, N'Restinga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (482, N'Ribeira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (483, N'Ribeirão Bonito', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (484, N'Ribeirão Branco', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (485, N'Ribeirão Corrente', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (486, N'Ribeirão do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (487, N'Ribeirão dos Índios', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (488, N'Ribeirão Grande', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (489, N'Ribeirão Pires', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (490, N'Ribeirão Preto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (491, N'Rifaina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (492, N'Rincão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (493, N'Rinópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (494, N'Rio Claro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (495, N'Rio das Pedras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (496, N'Rio Grande da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (497, N'Riolândia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (498, N'Riversul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (499, N'Rosana', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (500, N'Roseira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (501, N'Rubiácea', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (502, N'Rubinéia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (503, N'Sabino', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (504, N'Sagres', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (505, N'Sales', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (506, N'Sales Oliveira', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (507, N'Salesópolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (508, N'Salmourão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (509, N'Saltinho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (510, N'Salto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (511, N'Salto de Pirapora', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (512, N'Salto Grande', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (513, N'Sandovalina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (514, N'Santa Adélia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (515, N'Santa Albertina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (516, N'Santa Bárbara d''Oeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (517, N'Santa Branca', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (518, N'Santa Clara d''Oeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (519, N'Santa Cruz da Conceição', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (520, N'Santa Cruz da Esperança', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (521, N'Santa Cruz das Palmeiras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (522, N'Santa Cruz do Rio Pardo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (523, N'Santa Ernestina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (524, N'Santa Fé do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (525, N'Santa Gertrudes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (526, N'Santa Isabel', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (527, N'Santa Lúcia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (528, N'Santa Maria da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (529, N'Santa Mercedes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (530, N'Santa Rita d''Oeste', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (531, N'Santa Rita do Passa Quatro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (532, N'Santa Rosa de Viterbo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (533, N'Santa Salete', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (534, N'Santana da Ponte Pensa', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (535, N'Santana de Parnaíba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (536, N'Santo Anastácio', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (537, N'Santo André', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (538, N'Santo Antônio da Alegria', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (539, N'Santo Antônio de Posse', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (540, N'Santo Antônio do Aracanguá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (541, N'Santo Antônio do Jardim', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (542, N'Santo Antônio do Pinhal', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (543, N'Santo Expedito', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (544, N'Santópolis do Aguapeí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (545, N'Santos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (546, N'São Bento do Sapucaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (547, N'São Bernardo do Campo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (548, N'São Caetano do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (549, N'São Carlos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (550, N'São Francisco', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (551, N'São João da Boa Vista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (552, N'São João das Duas Pontes', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (553, N'São João de Iracema', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (554, N'São João do Pau d''Alho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (555, N'São Joaquim da Barra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (556, N'São José da Bela Vista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (557, N'São José do Barreiro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (558, N'São José do Rio Pardo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (559, N'São José do Rio Preto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (560, N'São José dos Campos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (561, N'São Lourenço da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (562, N'São Luís do Paraitinga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (563, N'São Manuel', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (564, N'São Miguel Arcanjo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (565, N'São Paulo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (566, N'São Pedro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (567, N'São Pedro do Turvo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (568, N'São Roque', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (569, N'São Sebastião', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (570, N'São Sebastião da Grama', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (571, N'São Simão', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (572, N'São Vicente', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (573, N'Sarapuí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (574, N'Sarutaiá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (575, N'Sebastianópolis do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (576, N'Serra Azul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (577, N'Serra Negra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (578, N'Serrana', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (579, N'Sertãozinho', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (580, N'Sete Barras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (581, N'Severínia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (582, N'Silveiras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (583, N'Socorro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (584, N'Sorocaba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (585, N'Sud Mennucci', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (586, N'Sumaré', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (587, N'Suzanápolis', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (588, N'Suzano', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (589, N'Tabapuã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (590, N'Tabatinga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (591, N'Taboão da Serra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (592, N'Taciba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (593, N'Taguaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (594, N'Taiaçu', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (595, N'Taiúva', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (596, N'Tambaú', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (597, N'Tanabi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (598, N'Tapiraí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (599, N'Tapiratiba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (600, N'Taquaral', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (601, N'Taquaritinga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (602, N'Taquarituba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (603, N'Taquarivaí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (604, N'Tarabai', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (605, N'Tarumã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (606, N'Tatuí', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (607, N'Taubaté', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (608, N'Tejupá', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (609, N'Teodoro Sampaio', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (610, N'Terra Roxa', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (611, N'Tietê', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (612, N'Timburi', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (613, N'Torre de Pedra', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (614, N'Torrinha', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (615, N'Trabiju', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (616, N'Tremembé', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (617, N'Três Fronteiras', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (618, N'Tuiuti', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (619, N'Tupã', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (620, N'Tupi Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (621, N'Turiúba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (622, N'Turmalina', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (623, N'Ubarana', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (624, N'Ubatuba', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (625, N'Ubirajara', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (626, N'Uchoa', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (627, N'União Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (628, N'Urânia', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (629, N'Uru', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (630, N'Urupês', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (631, N'Valentim Gentil', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (632, N'Valinhos', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (633, N'Valparaíso', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (634, N'Vargem', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (635, N'Vargem Grande do Sul', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (636, N'Vargem Grande Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (637, N'Várzea Paulista', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (638, N'Vera Cruz', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (639, N'Vinhedo', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (640, N'Viradouro', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (641, N'Vista Alegre do Alto', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (642, N'Vitória Brasil', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (643, N'Votorantim', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (644, N'Votuporanga', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_cidade] ([id], [nome], [uf], [ativo], [criado_em]) VALUES (645, N'Zacarias', N'SP', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_cidade] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_consulta] ON 

INSERT [dbo].[tb_consulta] ([id], [tipo_estabelecimento], [dt_atendimento], [status], [id_paciente], [id_profissional], [criado_em]) VALUES (1, 2, CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2), 2, 1, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_consulta] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_convenio] ON 

INSERT [dbo].[tb_convenio] ([id], [nome], [ativo], [validade], [tipo_abrangencia], [criado_em]) VALUES (1, N'Unimed do Estado de São Paulo', 1, CAST(N'2025-05-30T00:00:00.0000000' AS DateTime2), 2, CAST(N'2021-05-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_convenio] ([id], [nome], [ativo], [validade], [tipo_abrangencia], [criado_em]) VALUES (2, N'Unimed Municipal', 0, CAST(N'2024-05-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-06-19T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_convenio] ([id], [nome], [ativo], [validade], [tipo_abrangencia], [criado_em]) VALUES (3, N'Unimed Nacional', 1, CAST(N'2024-06-05T00:00:00.0000000' AS DateTime2), 2, CAST(N'2021-07-16T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_convenio] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_endereco] ON 

INSERT [dbo].[tb_endereco] ([id], [logradouro], [bairro], [numero], [id_cidade], [criado_em]) VALUES (1, N'Rua Dos Anjos', N'Casa Branca', 90, 3, CAST(N'2021-06-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_endereco] ([id], [logradouro], [bairro], [numero], [id_cidade], [criado_em]) VALUES (2, N'Rua Cajueiro', N'Cidade Ademar', 92, 11, CAST(N'2021-02-22T16:58:24.9307507' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_endereco] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_especialidade] ON 

INSERT [dbo].[tb_especialidade] ([id], [nome], [criado_em]) VALUES (1, N'Nutricionista', CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_especialidade] ([id], [nome], [criado_em]) VALUES (2, N'Urologia', CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_especialidade] ([id], [nome], [criado_em]) VALUES (3, N'Cardiologia', CAST(N'2021-03-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_especialidade] ([id], [nome], [criado_em]) VALUES (4, N'Ortopedia', CAST(N'2021-02-08T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_especialidade] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_paciente] ON 

INSERT [dbo].[tb_paciente] ([id], [nome], [dt_nascimento], [cpf], [id_endereco], [id_convenio], [criado_em]) VALUES (1, N'Ronaldo Silva', CAST(N'1990-02-22T00:00:00.0000000' AS DateTime2), N'44466677788', 2, 2, CAST(N'2021-02-22T16:58:24.9208962' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_paciente] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_profissional] ON 

INSERT [dbo].[tb_profissional] ([id], [nome], [documento], [ativo], [criado_em]) VALUES (1, N'Alexandre Siqueira', N'Crm1818', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional] ([id], [nome], [documento], [ativo], [criado_em]) VALUES (2, N'Ronaldo Alves', N'Crm5566', 0, CAST(N'2021-03-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional] ([id], [nome], [documento], [ativo], [criado_em]) VALUES (3, N'João Neto', N'Cro6643', 1, CAST(N'2021-06-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional] ([id], [nome], [documento], [ativo], [criado_em]) VALUES (4, N'Maria Souza', N'Crm5098', 0, CAST(N'2021-03-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional] ([id], [nome], [documento], [ativo], [criado_em]) VALUES (5, N'Martin Oliveira', N'Crm1818', 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_profissional] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_profissional_especialidade] ON 

INSERT [dbo].[tb_profissional_especialidade] ([id], [id_profissional], [id_especialidade], [ativo], [criado_em]) VALUES (1, 1, 3, 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional_especialidade] ([id], [id_profissional], [id_especialidade], [ativo], [criado_em]) VALUES (2, 2, 2, 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional_especialidade] ([id], [id_profissional], [id_especialidade], [ativo], [criado_em]) VALUES (3, 3, 4, 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional_especialidade] ([id], [id_profissional], [id_especialidade], [ativo], [criado_em]) VALUES (4, 4, 1, 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional_especialidade] ([id], [id_profissional], [id_especialidade], [ativo], [criado_em]) VALUES (5, 5, 2, 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tb_profissional_especialidade] ([id], [id_profissional], [id_especialidade], [ativo], [criado_em]) VALUES (6, 1, 1, 1, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tb_profissional_especialidade] OFF
GO
ALTER TABLE [dbo].[tb_consulta]  WITH CHECK ADD  CONSTRAINT [FK_tb_consulta_tb_paciente_id_paciente] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[tb_paciente] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_consulta] CHECK CONSTRAINT [FK_tb_consulta_tb_paciente_id_paciente]
GO
ALTER TABLE [dbo].[tb_consulta]  WITH CHECK ADD  CONSTRAINT [FK_tb_consulta_tb_profissional_id_profissional] FOREIGN KEY([id_profissional])
REFERENCES [dbo].[tb_profissional] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_consulta] CHECK CONSTRAINT [FK_tb_consulta_tb_profissional_id_profissional]
GO
ALTER TABLE [dbo].[tb_endereco]  WITH CHECK ADD  CONSTRAINT [FK_tb_endereco_tb_cidade_id_cidade] FOREIGN KEY([id_cidade])
REFERENCES [dbo].[tb_cidade] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_endereco] CHECK CONSTRAINT [FK_tb_endereco_tb_cidade_id_cidade]
GO
ALTER TABLE [dbo].[tb_paciente]  WITH CHECK ADD  CONSTRAINT [FK_tb_paciente_tb_convenio_id_convenio] FOREIGN KEY([id_convenio])
REFERENCES [dbo].[tb_convenio] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_paciente] CHECK CONSTRAINT [FK_tb_paciente_tb_convenio_id_convenio]
GO
ALTER TABLE [dbo].[tb_paciente]  WITH CHECK ADD  CONSTRAINT [FK_tb_paciente_tb_endereco_id_endereco] FOREIGN KEY([id_endereco])
REFERENCES [dbo].[tb_endereco] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_paciente] CHECK CONSTRAINT [FK_tb_paciente_tb_endereco_id_endereco]
GO
ALTER TABLE [dbo].[tb_profissional_especialidade]  WITH CHECK ADD  CONSTRAINT [FK_tb_profissional_especialidade_tb_especialidade_id_especialidade] FOREIGN KEY([id_especialidade])
REFERENCES [dbo].[tb_especialidade] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_profissional_especialidade] CHECK CONSTRAINT [FK_tb_profissional_especialidade_tb_especialidade_id_especialidade]
GO
ALTER TABLE [dbo].[tb_profissional_especialidade]  WITH CHECK ADD  CONSTRAINT [FK_tb_profissional_especialidade_tb_profissional_id_profissional] FOREIGN KEY([id_profissional])
REFERENCES [dbo].[tb_profissional] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_profissional_especialidade] CHECK CONSTRAINT [FK_tb_profissional_especialidade_tb_profissional_id_profissional]
GO
