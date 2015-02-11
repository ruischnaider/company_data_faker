module Faker
  class CompanyData
    class << self
      require "i18n"

      def team_image(name)
        "#{File.expand_path( File.dirname( __FILE__ ).gsub('/faker',''))}/images/team/#{I18n.transliterate(name.downcase).gsub(/[^0-9A-Za-z ]/,'').gsub(" ", "_")}.jpg"
      end

      def profile_image(gender)
        dir = "#{File.expand_path( File.dirname( __FILE__ ).gsub('/faker',''))}/images/profile/"
        if gender == 'female' || gender == :female
          Dir["#{dir}female/*"].sample
        else
          Dir["#{dir}male/*"].sample
        end
      end
    end
  end
end
