module Faker
  class CompanyData
    class << self
      require "i18n"

      def team_image(name)
        "#{team_image_path}#{I18n.transliterate(name.downcase).gsub(/[^0-9A-Za-z ]/,'').gsub(" ", "_")}.jpg"
      end

      def team_image_all
        Dir["#{team_image_path}*"]
      end

      def profile_image(gender)
        profile_image_all(gender).sample
      end

      def profile_image_all(gender)
        if gender == 'female' || gender == :female
          Dir["#{profile_image_path}female/*"]
        else
          Dir["#{profile_image_path}male/*"]
        end
      end

      private

      def team_image_path
        "#{File.expand_path( File.dirname( __FILE__ ).gsub('/faker',''))}/images/team/"
      end

      def profile_image_path
        "#{File.expand_path( File.dirname( __FILE__ ).gsub('/faker',''))}/images/profile/"
      end

    end
  end
end
