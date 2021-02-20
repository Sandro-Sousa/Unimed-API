﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Unimed.Repository;

namespace Unimed.Repository.Migrations
{
    [DbContext(typeof(UnimedDbContext))]
    partial class UnimedDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "6.0.0-preview.1.21102.2")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Unimed.Domain.Cidade", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("Ativo")
                        .HasColumnType("bit")
                        .HasColumnName("ativo");

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)")
                        .HasColumnName("nome");

                    b.Property<string>("Uf")
                        .IsRequired()
                        .HasMaxLength(2)
                        .HasColumnType("nvarchar(2)")
                        .HasColumnName("uf");

                    b.HasKey("Id");

                    b.ToTable("tb_cidade");
                });

            modelBuilder.Entity("Unimed.Domain.Consulta", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<DateTime>("DtAtendimento")
                        .HasColumnType("datetime2")
                        .HasColumnName("dt_atendimento");

                    b.Property<int>("IdPaciente")
                        .HasColumnType("int")
                        .HasColumnName("id_paciente");

                    b.Property<int>("IdProfissional")
                        .HasColumnType("int")
                        .HasColumnName("id_profissional");

                    b.Property<int>("Status")
                        .HasColumnType("int")
                        .HasColumnName("status");

                    b.Property<int>("TipoEstabelecimento")
                        .HasColumnType("int")
                        .HasColumnName("tipo_estabelecimento");

                    b.HasKey("Id");

                    b.HasIndex("IdPaciente");

                    b.HasIndex("IdProfissional");

                    b.ToTable("tb_consulta");
                });

            modelBuilder.Entity("Unimed.Domain.Convenio", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("Ativo")
                        .HasColumnType("bit")
                        .HasColumnName("ativo");

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)")
                        .HasColumnName("nome");

                    b.Property<int>("TipoAbrangencia")
                        .HasColumnType("int")
                        .HasColumnName("tipo_abrangencia");

                    b.Property<DateTime>("Validade")
                        .HasColumnType("datetime2")
                        .HasColumnName("validade");

                    b.HasKey("Id");

                    b.ToTable("tb_convenio");
                });

            modelBuilder.Entity("Unimed.Domain.Endereco", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Bairro")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)")
                        .HasColumnName("bairro");

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<int>("IdCidade")
                        .HasColumnType("int")
                        .HasColumnName("id_cidade");

                    b.Property<string>("Logradouro")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)")
                        .HasColumnName("logradouro");

                    b.Property<int>("Numero")
                        .HasColumnType("int")
                        .HasColumnName("numero");

                    b.HasKey("Id");

                    b.HasIndex("IdCidade");

                    b.ToTable("tb_endereco");
                });

            modelBuilder.Entity("Unimed.Domain.Especialidade", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)")
                        .HasColumnName("nome");

                    b.HasKey("Id");

                    b.ToTable("tb_especialidade");
                });

            modelBuilder.Entity("Unimed.Domain.Paciente", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("ConvenioId")
                        .HasColumnType("int");

                    b.Property<string>("Cpf")
                        .IsRequired()
                        .HasMaxLength(11)
                        .HasColumnType("nvarchar(11)")
                        .HasColumnName("cpf");

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<DateTime>("DtNascimento")
                        .HasColumnType("datetime2")
                        .HasColumnName("dt_nascimento");

                    b.Property<int>("IdConvenio")
                        .HasColumnType("int")
                        .HasColumnName("id_convenio");

                    b.Property<int>("IdEndereco")
                        .HasColumnType("int")
                        .HasColumnName("id_endereco");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)")
                        .HasColumnName("nome");

                    b.HasKey("Id");

                    b.HasIndex("ConvenioId");

                    b.HasIndex("IdEndereco")
                        .IsUnique();

                    b.ToTable("tb_paciente");
                });

            modelBuilder.Entity("Unimed.Domain.Profissional", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("Ativo")
                        .HasColumnType("bit")
                        .HasColumnName("ativo");

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<string>("Documento")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)")
                        .HasColumnName("documento");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100)
                        .HasColumnType("nvarchar(100)")
                        .HasColumnName("nome");

                    b.HasKey("Id");

                    b.ToTable("tb_profissional");
                });

            modelBuilder.Entity("Unimed.Domain.ProfissionalEspecialidade", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasColumnName("id")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("Ativo")
                        .HasColumnType("bit")
                        .HasColumnName("ativo");

                    b.Property<DateTime>("CriadoEm")
                        .HasColumnType("datetime2")
                        .HasColumnName("criado_em");

                    b.Property<int>("IdEspecialidade")
                        .HasColumnType("int")
                        .HasColumnName("id_especialidade");

                    b.Property<int>("IdProfissional")
                        .HasColumnType("int")
                        .HasColumnName("id_profissional");

                    b.HasKey("Id");

                    b.HasIndex("IdEspecialidade");

                    b.HasIndex("IdProfissional");

                    b.ToTable("tb_profissional_especialidade");
                });

            modelBuilder.Entity("Unimed.Domain.Consulta", b =>
                {
                    b.HasOne("Unimed.Domain.Paciente", "Paciente")
                        .WithMany("Consultas")
                        .HasForeignKey("IdPaciente")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Unimed.Domain.Profissional", "Profissional")
                        .WithMany("Consultas")
                        .HasForeignKey("IdProfissional")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Paciente");

                    b.Navigation("Profissional");
                });

            modelBuilder.Entity("Unimed.Domain.Endereco", b =>
                {
                    b.HasOne("Unimed.Domain.Cidade", "Cidade")
                        .WithMany()
                        .HasForeignKey("IdCidade")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Cidade");
                });

            modelBuilder.Entity("Unimed.Domain.Paciente", b =>
                {
                    b.HasOne("Unimed.Domain.Convenio", "Convenio")
                        .WithMany()
                        .HasForeignKey("ConvenioId");

                    b.HasOne("Unimed.Domain.Endereco", "Endereco")
                        .WithOne("Paciente")
                        .HasForeignKey("Unimed.Domain.Paciente", "IdEndereco")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Convenio");

                    b.Navigation("Endereco");
                });

            modelBuilder.Entity("Unimed.Domain.ProfissionalEspecialidade", b =>
                {
                    b.HasOne("Unimed.Domain.Especialidade", "Especialidade")
                        .WithMany("Profissionais")
                        .HasForeignKey("IdEspecialidade")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Unimed.Domain.Profissional", "Profissional")
                        .WithMany("Especialidades")
                        .HasForeignKey("IdProfissional")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Especialidade");

                    b.Navigation("Profissional");
                });

            modelBuilder.Entity("Unimed.Domain.Endereco", b =>
                {
                    b.Navigation("Paciente");
                });

            modelBuilder.Entity("Unimed.Domain.Especialidade", b =>
                {
                    b.Navigation("Profissionais");
                });

            modelBuilder.Entity("Unimed.Domain.Paciente", b =>
                {
                    b.Navigation("Consultas");
                });

            modelBuilder.Entity("Unimed.Domain.Profissional", b =>
                {
                    b.Navigation("Consultas");

                    b.Navigation("Especialidades");
                });
#pragma warning restore 612, 618
        }
    }
}
