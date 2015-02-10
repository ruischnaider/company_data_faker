# Company Data Faker

Gerador de nomes para estrutura de empresas. Engloba departamentos, equipes, turnos e grupos.

Generates Brazilian Company structure names.

## Install

Use rubygems:

  gem install company_data_faker
  
Or add it to your Gemfile

  group :development, :test do
    # ...
    gem 'company_data_faker'
  end

## Usage

### Generates department names

  Faker::CompanyData.department    #=> "Administrativo"
  Faker::CompanyData.department    #=> "Financeiro"

### Generates team names

    Faker::CompanyData.team    #=> "Desenvolvimento"
    Faker::CompanyData.team    #=> "Geral"

### Generates shift names

    Faker::CompanyData.shift    #=> "Geral"
    Faker::CompanyData.shift    #=> "Manhã"

### Generates group names

    Faker::CompanyData.group    #=> "Recursos Humanos"
    Faker::CompanyData.group    #=> "Administradores"

  Some names can be used as departments, teams and groups at the same time. So, this are included in more than one generator.
  This gem was made to meet a specific need, but, if you think it is useful to you, enjoy it! :D

## License

Company Data Faker is released under the MIT license