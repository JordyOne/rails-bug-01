class AddTimestampValues < ActiveRecord::Migration
  def change
    Quote.all.each do |quote|
      if quote.created_at == nil
        quote.update_attributes(:created_at => Time.now, :updated_at => Time.now)
      end
    end
  end
end

