require 'rails_helper'
require_relative '../factories/search'

RSpec.describe Search, type: :model do
  context "persistir o repositorio como favorito" do
    it "valido se informa todos os dados" do
      search = create(:search)
      expect(search).to be_valid
    end

    it "invalido se nao informa a query" do
      search = build(:search, query: nil)
      search.valid?
      expect(search.errors[:query]).to include("can't be blank")
    end

    it "invalido se nao informa a repo_name" do
      search = build(:search, repo_name: nil)
      search.valid?
      expect(search.errors[:repo_name]).to include("can't be blank")
    end

    it "invalido se nao informa a repo_link" do
      search = build(:search, repo_link: nil)
      search.valid?
      expect(search.errors[:repo_link]).to include("can't be blank")
    end

    it "invalido se nao informa a repo_id" do
      search = build(:search, repo_id: nil)
      search.valid?
      expect(search.errors[:repo_id]).to include("can't be blank")
    end
  end
end
