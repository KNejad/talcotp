require "rotp"
require "json"

class TalcOTP
  def initialize file
    file = File.file?(file) ? File.read(file) : ''

    begin
      @accounts = JSON.parse(file)
    rescue JSON::ParserError
      @accounts = {}
    end
  end

  def all_codes_string
    output = ''
    @accounts.each do |account|
      account_auth_code = auth_code(account)

      output += "#{account['label']}: #{account_auth_code}\n"
    end

    output
  end

  def [](account_name)
    account = @accounts.find { |account| account["label"] == account_name }
    return auth_code(account)
  end

  private

  def auth_code(account)
    account_settings = {
      interval: account['period'],
      digits: account['digits'],
      digest: account['algorithm']
    }
    return ROTP::TOTP.new(account['secret'], account_settings).now
  end
end

