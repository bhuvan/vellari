require 'uri'
require 'socket'

Given "Internet connection is working" do
    test_host = 'google.com'
    host = URI(test_host).host
    begin
        Socket.gethostbyname(host)
    rescue SocketError => details
        raise "Cannot resolve '#{host}'\n#{details}"
    end
end

