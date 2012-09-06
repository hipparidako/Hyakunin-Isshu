# encoding: utf-8 
class Karuta < ActiveRecord::Base
  def self.get_simo
    loop do
      str = nil
      begin
        result = nil
        print "半角英字を入力してください(exitで終了):\n"
        begin
          str = STDIN.gets.chomp
        end until (str =~ /^[A-Z\ a-z]+$/)
        result = Karuta.where("yomi like '#{str}%'")
        #print "検索件数=: #{result.length}\n"
        exit if str.downcase == "exit"
      end until (result != [])
      result.each do |s|
        # ku = s[:uta].split(/\s*　\s*/)
        ku = s[:yomi].split(/\s* \s*/)
        p ku[3] + " " + ku[4]
      end
    end
  end
  

end
