module Faker
  class CompanyData
    class << self
      def department
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
        ].sample
      end
      def team
        ["Geral",
         "Desenvolvimento",
         "Desenvolvimento server-side",
         "Desenvolvimento client-side",
         "Programação",
         "Back-end",
         "Front-end",
         "Infraestrutura",
         "Informática",
         "TI",
         "Design",
         "Design gráfico",
         "Design de produto",
         "Artes",
         "Publicidade",
         "Geral",
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
        ].sample
      end
      def shift
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
        ].sample
      end
      def group
        ["Administradores",
         "Diretores",
         "Recusos Humanos",
         "Usuários",
         "Clientes",
         "Gestores",
         "Líderes de equipe",
         "Estagiários",
         "Suporte",
        ].sample
      end

    end
  end
end
