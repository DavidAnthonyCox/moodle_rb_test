require 'httparty'

class MoodleRequest
  include HTTParty
  base_uri 'http://localhost:8888/moodle29'
  def do_stuff
    # this is clearly a much better variable name. lol
    stuff_i_want_to_send_to_muh_moodle_server = {
      :body => {
        :wstoken => '2def582b5efdc2bde9fd62b0f5acdf1e',
        :wsfunction => 'core_message_send_instant_messages',
        :messages => {
          '0' => {
            :touserid => '1',
            :text => 'This is a message from your local ruby application.'
          }
        }
      }
    }

    puts self.class.post('/webservice/rest/server.php', stuff_i_want_to_send_to_muh_moodle_server)
  end
end

mr = MoodleRequest.new
mr.do_stuff
