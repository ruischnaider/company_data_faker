module Faker
  class CompanyData
    class << self
      def shift
        shift_all.sample
      end
      def shift_all
        json_file_hash["shifts"]
      end
      def department
        department_all.sample
      end
      def department_all
        json_file_hash["departments"].map{ |i| i["name"] }
      end
      def team(department = nil)
        team_all(department).sample
      end
      def team_all(department = nil)
        teams_default = json_file_hash["teams"].flatten(1).map { |i| i["name"] }
        if department
          teams = json_file_hash["departments"].select{ |k,v| k["name"] == department }.map{ |i| i["teams"] }.flatten(1).map { |i| i["name"] }
        else
          teams = json_file_hash["departments"].map{ |i| i["teams"] }.flatten(1).map { |i| i["name"] }
        end
        teams_default.concat(teams).compact
      end
      def group(department = nil)
        group_all(department).sample
      end
      def group_all(department = nil)
        groups_default = json_file_hash["groups"]
        if department
          groups = json_file_hash["departments"].select{ |k,v| k["name"] == department }.map{ |i| i["groups"] }.flatten(1)
        else
          groups = json_file_hash["departments"].map{ |i| i["groups"] }.flatten(1)
        end
        groups_default.concat(groups).compact
      end
      def cost_center
        cost_center_all.sample
      end
      def cost_center_all
        json_file_hash["cost_centers"]
      end
      def job_title(department = nil, team = nil)
        job_title_all(department, team).sample
      end
      def job_title_all(department = nil, team = nil)
        job_titles_default = json_file_hash["job_titles"]

        if department
          department_hash = json_file_hash["departments"].select{ |k,v| k["name"] == department }
          job_titles_department_default = department_hash.map{ |i| i["job_titles"] }.flatten(1)

          job_titles_default_with_department_default = job_titles_default.concat(job_titles_department_default).compact

          teams = department_hash.map{ |i| i["teams"] }.flatten(1)

          if team
            teams_job_titles = teams.select{ |k,v| k["name"] == team }.map{ |i| i["job_titles"] }.flatten(1)
          else
            teams_job_titles = teams.map{ |i| i["job_titles"] }.flatten(1)
          end

          job_titles_default_with_department_default.concat(teams_job_titles).compact
        else
          job_titles_departments_default = json_file_hash["departments"].map{ |i| i["job_titles"] }.flatten(1)
          job_titles_default_with_departments_default = job_titles_default.concat(job_titles_departments_default).compact

          teams = json_file_hash["departments"].map{ |i| i["teams"] }.flatten(1)
          teams_job_titles = teams.map{ |i| i["job_titles"] }.flatten(1)

          job_titles_default_with_departments_default.concat(teams_job_titles).compact
        end
      end

      private

      def json_file_hash
        JSON.parse(File.read("#{File.expand_path( File.dirname( __FILE__ ))}/company_data.json"))
      end

    end
  end
end
