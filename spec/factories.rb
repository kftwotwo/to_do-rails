FactoryGirl.define do
  factory(:list) do
    name('List')
  end

  factory(:task) do
    description('Kevin')
    list_id(1)
  end
end
