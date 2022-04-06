
describe Player do
    context 'Player is being attacked by the first player' do
      it 'decrease the score for the second player' do
        p1 = Player.new
        p2 = Player.new
        p2.attacked
       expect(p2.hit_points).to eq 95 
      end
    end
end