# Company Data Faker

Gerador de nomes para estrutura de empresas. Engloba departamentos, equipes, imagens para equipes, turnos, grupos, centros de custo e imagens de perfil.

Generates Brazilian Company structure names and images.

## Install

Use rubygems:

    gem install company_data_faker
  
Or add it to your Gemfile

    group :development, :test do
      # ...
      gem 'company_data_faker'
    end

## Usage

### Shifts

    Faker::CompanyData.shift        #=> "Manhã"
    Faker::CompanyData.shift_all    #=> Array with all shifts

### Departments

    Faker::CompanyData.department        #=> "TI"
    Faker::CompanyData.department_all    #=> Array with all departments

### Cost centers

    Faker::CompanyData.cost_center        #=> "Compras"
    Faker::CompanyData.cost_center_all    #=> Array with all cost centers

### Teams

    Faker::CompanyData.team              #=> "Desenvolvimento"
    Faker::CompanyData.team_all          #=> Array with all teams
    Faker::CompanyData.team("TI")        #=> team for department TI
    Faker::CompanyData.team_all("TI")    #=> Array with all teams for department TI

    Faker::CompanyData.team_image("Desenvolvimento")    #=> ".../company_data_faker/lib/images/team/desenvolvimento.jpg" (returns the real path)

### Groups

    Faker::CompanyData.group              #=> "Desenvolvimento"
    Faker::CompanyData.group_all          #=> Array with all groups
    Faker::CompanyData.group("TI")        #=> group for department TI
    Faker::CompanyData.group_all("TI")    #=> Array with all groups for department TI

### Groups

    Faker::CompanyData.group              #=> "Desenvolvimento"
    Faker::CompanyData.group_all          #=> Array with all groups
    Faker::CompanyData.group("TI")        #=> group for department TI
    Faker::CompanyData.group_all("TI")    #=> Array with all groups for department TI

### Job titles

    Faker::CompanyData.job_title                                 #=> "Programador"
    Faker::CompanyData.job_title_all                             #=> Array with all job_titles
    Faker::CompanyData.job_title("TI")                           #=> job_title for department TI
    Faker::CompanyData.job_title_all("TI")                       #=> Array with all job_titles for department TI
    Faker::CompanyData.job_title("TI", "Desenvolvimento")        #=> job_title for department TI and team Desenvolvimento
    Faker::CompanyData.job_title_all("TI", "Desenvolvimento")    #=> Array with all job_titles for department TI and team Desenvolvimento

### Profiles

    Faker::CompanyData.profile_image(:male)      #=> ".../company_data_faker/lib/images/profile/male/12.jpg" (returns the real path)
    Faker::CompanyData.profile_image(:female)    #=> ".../company_data_faker/lib/images/profile/female/15.jpg" (returns the real path)

## Objective

  Generate fake data for fake test profiles.

  Some names can be used as departments, teams and groups at the same time. So, this are included in more than one generator.
  This gem was made to meet a specific need, but, if you think it is useful to you, enjoy it! :D

  Images was taken from google and are only for testing purposes. Some of it are personal or commercial restricted, so, use it only for testing.

## License

Company Data Faker is released under the MIT license