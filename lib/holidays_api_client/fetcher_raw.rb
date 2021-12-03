# frozen_string_literal: true

module HolidaysApiClient
  class FetcherRaw < Fetcher
    private

    def initialize(**args)
      @params = args[:params]
      @token = args[:token]
    end

    attr_reader :params, :token

    def call
      JSON.parse(response.body)
    rescue StandardError => e
      raise HolidaysApiClient::Error, e.message
    end

    def response
      @_response = HTTParty.get(Configuration.holidays_url, query: params, headers: { Authorization: token })
    end
  end
end
