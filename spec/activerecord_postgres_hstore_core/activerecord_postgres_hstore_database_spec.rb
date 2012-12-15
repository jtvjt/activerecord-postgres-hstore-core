require File.expand_path('../../spec_helper', __FILE__)
describe "Direct DB Changes for Hstore" do 
  before(:each) do
    clean_database!
    @hstore = HstoreModel.new(:name => "Bob Jones")
    @normal = NormalModel.new(:name => "Jane Smith")
  end

  it "should be an hstore sql type" do
    @hstore.class.columns_hash['key_value'].sql_type.should =="hstore"
  end

  it "should be an hstore type" do
    @hstore.class.columns_hash['key_value'].type.should == :hstore
  end

  it "should take a hash" do
    @hstore.key_value = {"test" => 1}
    @hstore.save
  end

  it "should not take a number" do
    @hstore.key_value = 2
    expect{ @hstore.save }.to raise_error(NoMethodError)
  end

  it "should not save an ilformatted string" do
    @hstore.key_value = "test"
    @hstore.save
    @hstore.key_value.should == {}
  end

  it "should take and save a hash" do
    @hstore.key_value = {"test" => 1, "t2" => 2}
    @hstore.save
  end

  it "should overwrite correclty in db" do
    @hstore.key_value = {"a" => 1, "a" => 2}
    @hstore.save
    db_hstore = HstoreModel.find_by_name(@hstore.name)
    db_hstore.key_value.should == {"a" => "2"}
    
  end



end