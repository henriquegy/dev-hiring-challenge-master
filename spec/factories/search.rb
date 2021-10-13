FactoryBot.define do
  factory :search do
    query     { 'spotcode+language:ruby' }
    repo_name { 'victorgiraldes/spotcode' }
    repo_link { 'https://github.com/victorgiraldes' }
    repo_id   { '35654SQW54E' }

    factory :search_query do
      query { 'spotcode+language:ruby' }
    end
  end
end