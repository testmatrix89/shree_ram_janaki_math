class PeopleWhichHaveMoney < ApplicationRecord
  def self.total_people_have
    PeopleWhichHaveMoney.sum(:taken_amount)
  end
end
