require "sequel"

module Lita
  module Handlers
    class Quran < Handler
      config :database_url, type: String, required: true
      
      route(%r{(quran [0-9]+:[0-9]+)}, :query_quran)

      def query_quran(response)
        @@DB ||= Sequel.connect(config.database_url)
        arguments = response.args[0].to_s
        query = {
          sura: arguments.split(":")[0],
          aya: arguments.split(":")[1]
        }
        quran = @@DB[:quran_text].where(query).select(:text, :translation_id).first
        if quran
          response.reply "#{quran[:text]}"
          response.reply "#{quran[:translation_id]}"
        end
      end

      Lita.register_handler(self)
    end
  end
end
