module Faker
  class CompanyData
    class << self
      def department
        department_all.sample
      end
      def department_all
        ["Administrativo",
         "Publicidade",
         "Gráfico",
         "Garagem",
         "Oficina",
         "Almoxarifado",
         "TI",
         "Pedido",
         "Compras",
         "Estoque",
         "Vendas",
         "Importação",
         "Controle bancário",
         "Patrimônio",
         "Ordem de serviço",
         "BI",
         "Locação",
         "Faturamento",
         "Nota fiscal",
         "Orçamentos",
         "Logística",
         "Legal",
         "Assessoria",
         "Jurídico",
         "Jurídico-legal",
         "Contas a pagar",
         "Contas a receber",
         "Qualidade e Inovação",
         "Direção Financeira",
         "Direção",
         "Financeiro",
         "Administrativo",
         "Secretaria-Geral",
         "Secretaria",
         "Geral",
         "Recursos Humanos",
         "Informática",
         "Coordenação",
         "Infraestrutura",
         "Departamento Pessoal",
         "Desenvolvimento",
         "Produção",
         "Design",
         "Centro de processamento de dados",
         "Recepção Geral",
         "Recepção",
         "Ouvidoria",
         "Serviço de atendimento ao consumidor",
         "Alimentação",
         "Assessoria Técnica",
         "Suporte",
        ]
      end
      def team
        team_all.sample
      end
      def team_all
        ["Geral",
         "Desenvolvimento",
         "Desenvolvimento server-side",
         "Desenvolvimento client-side",
         "Programação",
         "Back-end",
         "Front-end",
         "Infraestrutura",
         "Redes",
         "Informática",
         "TI",
         "Tecnologia",
         "Design",
         "Design gráfico",
         "Design de produto",
         "Artes",
         "Publicidade",
         "Contabilidade",
         "Motoristas",
         "Mecânicos",
         "Vendedores",
         "Consultores",
         "Consultores BI",
         "Analistas",
         "Analistas BI",
         "Suporte",
         "SAC",
         "Cozinheiros",
         "Recepção",
         "Gerentes",
         "Laboratório"
        ]
      end
      def shift
        shift_all.sample
      end
      def shift_all
        [
            "Geral",
            "Manhã",
            "Tarde",
            "Noite",
            "Matutino",
            "Diurno",
            "Noturno",
            "Motoristas",
            "Parcial"
        ]
      end
      def group
        group_all.sample
      end
      def group_all
        ["Administradores",
         "Diretores",
         "Recusos Humanos",
         "Usuários",
         "Clientes",
         "Gestores",
         "Líderes de equipe",
         "Estagiários",
         "Suporte",
        ]
      end
    end
  end
end
