class CommodityNameValidator < ActiveModel::Validator
  def validate(record)
    if record.name.split(" ").length != 1
      record.errors[:base] << "Name must be a single word"
    end
  end
end
