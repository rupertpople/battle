require 'player'

describe Player do
    context 'Hit points' do
    it 'Should return #hit_points of Player' do
    expect(subject.hit_points).to eq 100
    end
end
end