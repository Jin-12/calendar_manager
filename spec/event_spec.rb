require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
		it 'creates an event' do
      #crée un évenement
      event = Event.new("2010-10-31 12:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"] )

      # petit test si l'utilisateur est bien créé
      expect(event.class).to eq(Event)

		end
	end

end
