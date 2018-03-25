# frozen_string_literal: true

class WelcomeController < ApplicationController

  def search
    uri = URI.parse("https://www.companydata.co/api/v1/companies/#{search_params[:query]}")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    request.basic_auth(ENV["COMPANYDATA_ACCOUNT"], ENV["COMPANYDATA_API_KEY"])
    http.use_ssl = true
    response = http.request(request)

    @company = response.code == "200" ? JSON.parse(response.body) : nil
  end

  private

    def search_params
      params.require(:search).permit(:query)
    end
end
