# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

laura = User.create(email: 'laura@showmyhomework', password: 'password')
sam = User.create(email: 'sam@showmyhomework', password: 'password')

[
  'Albania',
  'Austria',
  'Belgium',
  'Croatia',
  'Czech Republic',
  'England',
  'France',
  'Germany',
  'Hungary',
  'Iceland',
  'Italy',
  'Northern Ireland',
  'Poland',
  'Portugal',
  'Republic of Ireland',
  'Romania',
  'Russia',
  'Slovakia',
  'Spain',
  'Sweden',
  'Switzerland',
  'Turkey',
  'Ukraine',
  'Wales'].each do |country|
  Team.create(country: country)
end

match_1 = Match.create(name: 'France - Romania', date: '2016-06-10')
mt_1 = MatchesTeam.create(match_id: match_1.id, team_id: Team.find_by(country: 'France').id, score: 2)
mt_2 = MatchesTeam.create(match_id: match_1.id, team_id: Team.find_by(country: 'Romania').id, score: 1)

match_2 = Match.create(name: 'Albania - Romania', date: '2016-06-10')
mt_3 = MatchesTeam.create(match_id: match_2.id, team_id: Team.find_by(country: 'Albania').id, score: 0)
mt_4 = MatchesTeam.create(match_id: match_2.id, team_id: Team.find_by(country: 'Switzerland').id, score: 1)

Prediction.create(matches_team_id: mt_1.id, user_id: laura.id, score: 3)
Prediction.create(matches_team_id: mt_2.id, user_id: laura.id, score: 0)
Prediction.create(matches_team_id: mt_1.id, user_id: sam.id, score: 0)
Prediction.create(matches_team_id: mt_2.id, user_id: sam.id, score: 1)

Prediction.create(matches_team_id: mt_3.id, user_id: laura.id, score: 1)
Prediction.create(matches_team_id: mt_4.id, user_id: laura.id, score: 0)
Prediction.create(matches_team_id: mt_3.id, user_id: sam.id, score: 4)
Prediction.create(matches_team_id: mt_4.id, user_id: sam.id, score: 1)

match_3 = Match.create(name: 'Albania - Romania', date: '2016-06-11')
MatchesTeam.create(match_id: match_3.id, team_id: Team.find_by(country: 'Albania').id, score: 0)
MatchesTeam.create(match_id: match_3.id, team_id: Team.find_by(country: 'Switzerland').id, score: 1)

match_4 = Match.create(name: 'Wales - Slovakia', date: '2016-06-11')
MatchesTeam.create(match_id: match_4.id, team_id: Team.find_by(country: 'Wales').id, score: 2)
MatchesTeam.create(match_id: match_4.id, team_id: Team.find_by(country: 'Slovakia').id, score: 1)

match_5 = Match.create(name: 'England - Russia', date: '2016-06-11')
MatchesTeam.create(match_id: match_5.id, team_id: Team.find_by(country: 'England').id, score: 1)
MatchesTeam.create(match_id: match_5.id, team_id: Team.find_by(country: 'Russia').id, score: 1)

match_6 = Match.create(name: 'Turkey - Croatia', date: '2016-06-12')
MatchesTeam.create(match_id: match_6.id, team_id: Team.find_by(country: 'Turkey').id, score: 0)
MatchesTeam.create(match_id: match_6.id, team_id: Team.find_by(country: 'Croatia').id, score: 1)

match_7 = Match.create(name: 'Poland - Northern Ireland', date: '2016-06-12')
MatchesTeam.create(match_id: match_7.id, team_id: Team.find_by(country: 'Poland').id, score: 1)
MatchesTeam.create(match_id: match_7.id, team_id: Team.find_by(country: 'Northern Ireland').id, score: 0)
