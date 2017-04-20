require "spec_helper"

describe Lita::Handlers::Quran, lita_handler: true do
  it { is_expected.to route("quran 5:51").to(:query_quran) }
  it { is_expected.to route("quran 67:2").to(:query_quran) }
  it { is_expected.to route("quran 114:1").to(:query_quran) }

  describe "#query_quran" do
    it "replies with arabic text of the ayat" do
      send_message("quran 5:51")

      expect(replies.count).to eq(2)
      expect(replies.last).to eq("Hai orang-orang yang beriman, janganlah kamu mengambil orang-orang Yahudi dan Nasrani menjadi pemimpin-pemimpin(mu); sebahagian mereka adalah pemimpin bagi sebahagian yang lain. Barangsiapa diantara kamu mengambil mereka menjadi pemimpin, maka sesungguhnya orang itu termasuk golongan mereka. Sesungguhnya Allah tidak memberi petunjuk kepada orang-orang yang zalim.")
    end
  end
end
