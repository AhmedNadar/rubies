require 'minitest/autorun'
require './pig_latin'

describe "#translate" do
  it "translate a word beginning with a vowel" do
    s = translate("apple")
    s.must_equal "appleay"
  end
  it "translate a word beginning with a consonants" do
    s = translate("banana")
    s.must_equal "ananabay"
  end
  it "translate a word beginning with two consonants" do
    s = translate("cherry")
    s.must_equal "errychay"
  end
  it "translate two words" do
    s = translate("eat pie")
    s.must_equal "eatay iepay"
  end
  it "translate a word beginning with three consonants" do
    s = translate("three")
    s.must_equal "eethray"
  end
  it "counts 'qu' as a signle phoneme" do
    s = translate("quiet")
    s.must_equal "ietquay"
  end
  it "counts 'sch' as a signle phoneme" do
    s = translate("school")
    s.must_equal "oolschay"
  end
  it "count 'qu' as constant even when it's preceded with a consonants" do
    s = translate("square")
    s.must_equal "aresquay"
  end
  it "translate many words" do
    s = translate("the quick brown fox")
    s.must_equal "ethay ickquay ownbray oxfay"
  end

end
