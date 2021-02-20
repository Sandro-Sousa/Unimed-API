using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Unimed.Repository.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "tb_cidade",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nome = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    uf = table.Column<string>(type: "nvarchar(2)", maxLength: 2, nullable: false),
                    ativo = table.Column<bool>(type: "bit", nullable: false),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_cidade", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "tb_convenio",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nome = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    ativo = table.Column<bool>(type: "bit", nullable: false),
                    validade = table.Column<DateTime>(type: "datetime2", nullable: false),
                    tipo_abrangencia = table.Column<int>(type: "int", nullable: false),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_convenio", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "tb_especialidade",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nome = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_especialidade", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "tb_profissional",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nome = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    documento = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ativo = table.Column<bool>(type: "bit", nullable: false),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_profissional", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "tb_endereco",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    logradouro = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    bairro = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    numero = table.Column<int>(type: "int", nullable: false),
                    id_cidade = table.Column<int>(type: "int", nullable: false),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_endereco", x => x.id);
                    table.ForeignKey(
                        name: "FK_tb_endereco_tb_cidade_id_cidade",
                        column: x => x.id_cidade,
                        principalTable: "tb_cidade",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "tb_profissional_especialidade",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    id_profissional = table.Column<int>(type: "int", nullable: false),
                    id_especialidade = table.Column<int>(type: "int", nullable: false),
                    ativo = table.Column<bool>(type: "bit", nullable: false),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_profissional_especialidade", x => x.id);
                    table.ForeignKey(
                        name: "FK_tb_profissional_especialidade_tb_especialidade_id_especialidade",
                        column: x => x.id_especialidade,
                        principalTable: "tb_especialidade",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_tb_profissional_especialidade_tb_profissional_id_profissional",
                        column: x => x.id_profissional,
                        principalTable: "tb_profissional",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "tb_paciente",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nome = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    dt_nascimento = table.Column<DateTime>(type: "datetime2", nullable: false),
                    cpf = table.Column<string>(type: "nvarchar(11)", maxLength: 11, nullable: false),
                    id_endereco = table.Column<int>(type: "int", nullable: false),
                    id_convenio = table.Column<int>(type: "int", nullable: false),
                    ConvenioId = table.Column<int>(type: "int", nullable: true),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_paciente", x => x.id);
                    table.ForeignKey(
                        name: "FK_tb_paciente_tb_convenio_ConvenioId",
                        column: x => x.ConvenioId,
                        principalTable: "tb_convenio",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_tb_paciente_tb_endereco_id_endereco",
                        column: x => x.id_endereco,
                        principalTable: "tb_endereco",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "tb_consulta",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    tipo_estabelecimento = table.Column<int>(type: "int", nullable: false),
                    dt_atendimento = table.Column<DateTime>(type: "datetime2", nullable: false),
                    status = table.Column<int>(type: "int", nullable: false),
                    id_paciente = table.Column<int>(type: "int", nullable: false),
                    id_profissional = table.Column<int>(type: "int", nullable: false),
                    criado_em = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tb_consulta", x => x.id);
                    table.ForeignKey(
                        name: "FK_tb_consulta_tb_paciente_id_paciente",
                        column: x => x.id_paciente,
                        principalTable: "tb_paciente",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_tb_consulta_tb_profissional_id_profissional",
                        column: x => x.id_profissional,
                        principalTable: "tb_profissional",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_tb_consulta_id_paciente",
                table: "tb_consulta",
                column: "id_paciente");

            migrationBuilder.CreateIndex(
                name: "IX_tb_consulta_id_profissional",
                table: "tb_consulta",
                column: "id_profissional");

            migrationBuilder.CreateIndex(
                name: "IX_tb_endereco_id_cidade",
                table: "tb_endereco",
                column: "id_cidade");

            migrationBuilder.CreateIndex(
                name: "IX_tb_paciente_ConvenioId",
                table: "tb_paciente",
                column: "ConvenioId");

            migrationBuilder.CreateIndex(
                name: "IX_tb_paciente_id_endereco",
                table: "tb_paciente",
                column: "id_endereco",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_tb_profissional_especialidade_id_especialidade",
                table: "tb_profissional_especialidade",
                column: "id_especialidade");

            migrationBuilder.CreateIndex(
                name: "IX_tb_profissional_especialidade_id_profissional",
                table: "tb_profissional_especialidade",
                column: "id_profissional");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "tb_consulta");

            migrationBuilder.DropTable(
                name: "tb_profissional_especialidade");

            migrationBuilder.DropTable(
                name: "tb_paciente");

            migrationBuilder.DropTable(
                name: "tb_especialidade");

            migrationBuilder.DropTable(
                name: "tb_profissional");

            migrationBuilder.DropTable(
                name: "tb_convenio");

            migrationBuilder.DropTable(
                name: "tb_endereco");

            migrationBuilder.DropTable(
                name: "tb_cidade");
        }
    }
}
