require_relative '../config/environment'
# require_relative '../PokemonBlueRed-Route4.mp3'
require 'launchy'

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

spinner = TTY::Spinner.new
prompt = TTY::Prompt.new
# system "clear"
interface = Interface.new
logged_in_user = interface.welcome()
# pid = fork{ exec ‘afplay’,“PokemonBlueRed-Route4.mp3” }
while logged_in_user.nil?
    # prompt.yes?("Wrong username. Would you like to create a new username with that name?")
    logged_in_user = interface.welcome()
end
interface.user = logged_in_user
interface.user.main_menu()



# binding.pry
puts "hello world"
