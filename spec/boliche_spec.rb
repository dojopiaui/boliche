require 'lib/boliche'

describe Boliche do
  it "deve retornar 0" do
    Boliche.new([[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0,nil]]).pontuacao.should == 0
  end
  
  it "deve retornar 300" do
    Boliche.new([[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,10,10]]).pontuacao.should == 300
  end
  
  it "deve retornar 60" do
    Boliche.new([[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[10,nil],[10,10,10]]).pontuacao.should == 60
  end
  
  it "deve retornar 50" do
    Boliche.new([[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[10,nil],[10,10,0]]).pontuacao.should == 50
  end
  
  it "deve retornar 30" do
    Boliche.new([[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[10,nil],[10,0,0]]).pontuacao.should == 30
  end

  it "deve retornar 139" do
    Boliche.new([[5,3],[3,0],[8,1],[9,1],[8,2],[10,nil],[10,nil],[8,2],[1,1],[10,8,2]]).pontuacao.should == 139
  end

  it "deve retornar 267" do
    Boliche.new([[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[10,nil],[9,0,nil]]).pontuacao.should == 267
  end

  it "deve retornar 90" do
    Boliche.new([[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0]]).pontuacao.should == 90
  end

  it "deve ter bonus 9" do
    Boliche.new([[9,1],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0]]).bonus(0).should == 9
  end
  
  it "deve ter bonus 19" do
    Boliche.new([[10,nil],[10,nil],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0]]).bonus(0).should == 19
  end
  
  it "deve ter bonus 9" do
    Boliche.new([[10,nil],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0]]).bonus(0).should == 9
  end
  
  it "deve ter bonus 0" do
    Boliche.new([[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0],[9,0]]).bonus(0).should == 0
  end

end
