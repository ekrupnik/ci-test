describe Hash do
  before do
    @hash = Hash.new({:hello => 'world'})
  end
 
  it "should return a blank instance" do
    Hash.new.should == {}
  end
end